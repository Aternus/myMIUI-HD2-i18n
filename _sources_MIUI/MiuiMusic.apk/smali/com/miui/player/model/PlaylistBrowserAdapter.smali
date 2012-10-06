.class public Lcom/miui/player/model/PlaylistBrowserAdapter;
.super Lcom/miui/player/model/SectionCursorAdapter;
.source "PlaylistBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/PlaylistBrowserAdapter$QueryHandler;
    }
.end annotation


# static fields
.field public static final ALL_SONGS_PLAYLIST:J = -0x5L

.field public static final CREATE_PLAYLIST:J = -0x1L

.field public static final CURRENT_PLAYLIST:J = -0x3L

.field public static final FAVOURITE_PLAYLIST:J = -0x4L

.field public static final PLAYLIST_COLUMNS:[Ljava/lang/String; = null

.field public static final RECENTLY_ADDED_PLAYLIST:J = -0x2L

.field public static final SPECIAL_PLAYLIST_NUM:I = 0x4


# instance fields
.field private mBrowserSource:Lcom/miui/player/model/BrowserSource;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private mIdIdx:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mTitleIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/PlaylistBrowserAdapter;->PLAYLIST_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/player/model/BrowserSource;ILandroid/database/Cursor;[Ljava/lang/String;[ILandroid/widget/FastScroller;)V
    .locals 9
    .parameter "source"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "scroller"

    .prologue
    const/4 v8, 0x0

    .line 66
    invoke-interface {p1}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v7, "name"

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/miui/player/model/SectionCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILandroid/widget/FastScroller;Ljava/lang/String;)V

    .line 40
    iput-object v8, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    .line 44
    iput-object v8, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mConstraint:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mConstraintIsValid:Z

    .line 67
    iput-object p1, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    .line 68
    invoke-direct {p0, p3}, Lcom/miui/player/model/PlaylistBrowserAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 69
    new-instance v0, Lcom/miui/player/model/PlaylistBrowserAdapter$QueryHandler;

    invoke-interface {p1}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/player/model/PlaylistBrowserAdapter$QueryHandler;-><init>(Lcom/miui/player/model/PlaylistBrowserAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/model/PlaylistBrowserAdapter;)Lcom/miui/player/model/BrowserSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mTitleIdx:I

    .line 75
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mIdIdx:I

    .line 77
    :cond_0
    return-void
.end method

.method private getRecentSongCount(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v0, " AND date_added>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    const-wide/32 v3, 0x127500

    sub-long/2addr v0, v3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v9

    .line 146
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 150
    .local v7, cur:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move v0, v9

    .line 156
    :goto_0
    return v0

    .line 153
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 154
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 155
    .local v6, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v6

    .line 156
    goto :goto_0
.end method

.method public static mergedCursor(Landroid/database/Cursor;Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "c"
    .parameter "context"
    .parameter "cols"

    .prologue
    const/4 v9, 0x2

    .line 183
    if-nez p0, :cond_0

    .line 184
    const/4 v7, 0x0

    .line 222
    :goto_0
    return-object v7

    .line 187
    :cond_0
    instance-of v7, p0, Landroid/database/MergeCursor;

    if-eqz v7, :cond_1

    .line 189
    const-string v7, "PlaylistBrowserActivity"

    const-string v8, "Already wrapped"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, p0

    .line 190
    goto :goto_0

    .line 192
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v0, autoplaylists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v3, createPlaylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    const v7, 0x7f080029

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    .local v6, recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v7, -0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    const v7, 0x7f08001d

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v4, current:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v7, -0x3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    const v7, 0x7f080011

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v7, "$$miui"

    const/4 v8, 0x3

    invoke-static {p1, v7, v8}, Lcom/miui/player/MusicUtils;->idForplaylist(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_2

    .line 210
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    .local v5, favouriteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v7, -0x4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    const v7, 0x7f080098

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v5           #favouriteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    new-instance v1, Lcom/miui/player/helper/ArrayListCursor;

    invoke-direct {v1, p2, v0}, Lcom/miui/player/helper/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 218
    .local v1, autoplaylistscursor:Lcom/miui/player/helper/ArrayListCursor;
    new-instance v2, Landroid/database/MergeCursor;

    new-array v7, v9, [Landroid/database/Cursor;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-direct {v2, v7}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 222
    .local v2, cc:Landroid/database/Cursor;
    const-string v7, "sort_key"

    const/4 v8, 0x4

    invoke-static {v2, v7, v8}, Lcom/miui/player/model/SectionCursor;->wrap(Landroid/database/Cursor;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    goto/16 :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 90
    const v9, 0x7f0c0096

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 91
    .local v6, nameView:Landroid/widget/TextView;
    iget v9, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mTitleIdx:I

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget v9, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mIdIdx:I

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 95
    .local v2, id:J
    const v9, 0x7f0c0095

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 96
    .local v4, iv:Landroid/widget/ImageView;
    const-wide/16 v9, -0x1

    cmp-long v9, v2, v9

    if-nez v9, :cond_0

    .line 97
    const v9, 0x7f020041

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    :goto_0
    const v9, 0x7f0c0097

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 109
    .local v7, numView:Landroid/widget/TextView;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, count:I
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_4

    .line 112
    invoke-static {v2, v3}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v8

    .line 113
    .local v8, uri:Landroid/net/Uri;
    invoke-static {p2, v8}, Lcom/miui/player/provider/PlayerProviderUtils;->getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 132
    .end local v8           #uri:Landroid/net/Uri;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    :goto_2
    return-void

    .line 98
    .end local v0           #count:I
    .end local v7           #numView:Landroid/widget/TextView;
    :cond_0
    const-wide/16 v9, -0x2

    cmp-long v9, v2, v9

    if-nez v9, :cond_1

    .line 99
    const v9, 0x7f020044

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 100
    :cond_1
    const-wide/16 v9, -0x4

    cmp-long v9, v2, v9

    if-nez v9, :cond_2

    .line 101
    const v9, 0x7f020043

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 102
    :cond_2
    const-wide/16 v9, -0x3

    cmp-long v9, v2, v9

    if-nez v9, :cond_3

    .line 103
    const v9, 0x7f020042

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 105
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 114
    .restart local v0       #count:I
    .restart local v7       #numView:Landroid/widget/TextView;
    :cond_4
    const-wide/16 v9, -0x2

    cmp-long v9, v2, v9

    if-nez v9, :cond_5

    .line 115
    invoke-direct {p0, p2}, Lcom/miui/player/model/PlaylistBrowserAdapter;->getRecentSongCount(Landroid/content/Context;)I

    move-result v0

    goto :goto_1

    .line 116
    :cond_5
    const-wide/16 v9, -0x4

    cmp-long v9, v2, v9

    if-nez v9, :cond_6

    .line 117
    invoke-static {p2}, Lcom/miui/player/helper/FavoritePlaylist;->getFavoriteCount(Landroid/content/Context;)I

    move-result v0

    goto :goto_1

    .line 118
    :cond_6
    const-wide/16 v9, -0x3

    cmp-long v9, v2, v9

    if-nez v9, :cond_8

    .line 119
    sget-object v9, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-nez v9, :cond_7

    .line 120
    const/4 v0, 0x0

    goto :goto_1

    .line 123
    :cond_7
    :try_start_0
    sget-object v9, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/miui/player/IMediaPlaybackService;->getQueue()[J

    move-result-object v9

    array-length v0, v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 124
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 125
    .local v1, e:Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 126
    goto :goto_1

    .line 129
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_8
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v0, p1}, Lcom/miui/player/model/BrowserSource;->isCurrentBrowserCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v0, p1}, Lcom/miui/player/model/BrowserSource;->setCurrentBrowserCursor(Landroid/database/Cursor;)V

    .line 164
    invoke-super {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/miui/player/model/PlaylistBrowserAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 167
    :cond_0
    return-void
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 5
    .parameter "constraint"

    .prologue
    const/4 v4, 0x1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/model/PlaylistBrowserAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 179
    :goto_0
    return-object v2

    .line 176
    :cond_2
    iget-object v2, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/miui/player/model/BrowserSource;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 177
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mConstraint:Ljava/lang/String;

    .line 178
    iput-boolean v4, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 179
    goto :goto_0
.end method

.method public setBrowserSource(Lcom/miui/player/model/BrowserSource;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/miui/player/model/PlaylistBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    .line 81
    return-void
.end method
