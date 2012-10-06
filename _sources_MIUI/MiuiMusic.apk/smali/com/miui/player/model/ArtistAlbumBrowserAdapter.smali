.class public Lcom/miui/player/model/ArtistAlbumBrowserAdapter;
.super Lcom/miui/player/model/SectionCursorAdapter;
.source "ArtistAlbumBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/ArtistAlbumBrowserAdapter$QueryHandler;,
        Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mArtistId2SongNum:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mArtistIdx:I

.field private mBrowserSource:Lcom/miui/player/model/BrowserSource;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mGroupArtistIdx:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/miui/player/model/BrowserSource;ILandroid/database/Cursor;[Ljava/lang/String;[ILandroid/widget/FastScroller;Ljava/lang/String;)V
    .locals 10
    .parameter "currentSource"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "fastScroller"
    .parameter "titleCol"

    .prologue
    .line 106
    invoke-interface {p1}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/miui/player/model/SectionCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILandroid/widget/FastScroller;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mConstraint:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mConstraintIsValid:Z

    .line 107
    iput-object p1, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    .line 108
    invoke-interface {p1}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 109
    .local v8, context:Landroid/content/Context;
    new-instance v0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter$QueryHandler;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter$QueryHandler;-><init>(Lcom/miui/player/model/ArtistAlbumBrowserAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 110
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 111
    .local v9, r:Landroid/content/res/Resources;
    const v0, 0x7f020001

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 114
    iget-object v0, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 115
    iget-object v0, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 116
    invoke-direct {p0, p3}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mArtistId2SongNum:Ljava/util/HashMap;

    .line 118
    invoke-virtual {p0}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->getSongCountForArtist()V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/model/ArtistAlbumBrowserAdapter;)Lcom/miui/player/model/BrowserSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mGroupArtistIdx:I

    .line 124
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mArtistIdx:I

    .line 126
    invoke-virtual {p0, p1}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->setSectionIndexer(Landroid/database/Cursor;)V

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x0

    .line 152
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;

    .line 155
    .local v6, vh:Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;
    iget v7, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mGroupArtistIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, artist:Ljava/lang/String;
    invoke-static {p2, v0}, Lcom/miui/player/helper/MediaInfo;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 157
    .local v3, displayartist:Ljava/lang/CharSequence;
    iget-object v7, v6, Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;->artistNameTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget v7, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mArtistIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 160
    .local v1, artistId:J
    iget-object v7, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mArtistId2SongNum:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 161
    .local v4, songCount:Ljava/lang/Integer;
    if-nez v4, :cond_0

    .line 162
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 164
    :cond_0
    const-string v7, "(%d)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, songs:Ljava/lang/String;
    iget-object v7, v6, Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;->albumNumTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v0, p1}, Lcom/miui/player/model/BrowserSource;->isCurrentBrowserCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v0, p1}, Lcom/miui/player/model/BrowserSource;->setCurrentBrowserCursor(Landroid/database/Cursor;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 173
    invoke-super {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 175
    :cond_0
    return-void
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSongCountForArtist()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 69
    iget-object v1, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mArtistId2SongNum:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 70
    new-array v2, v12, [Ljava/lang/String;

    const-string v1, "artist_id"

    aput-object v1, v2, v11

    .line 74
    .local v2, cols:[Ljava/lang/String;
    const-string v10, "title != \'\'"

    .line 76
    .local v10, where:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v1}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    .local v0, context:Landroid/content/Context;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "title != \'\'"

    invoke-static {v0, v3}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album_key"

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 81
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 82
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 85
    .local v6, artistId:J
    iget-object v1, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mArtistId2SongNum:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 86
    .local v8, count:Ljava/lang/Integer;
    if-nez v8, :cond_0

    .line 87
    iget-object v1, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mArtistId2SongNum:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 90
    iget-object v1, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mArtistId2SongNum:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    .end local v6           #artistId:J
    .end local v8           #count:Ljava/lang/Integer;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_2
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;-><init>()V

    .line 142
    .local v1, vh:Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;
    const v2, 0x7f0c002a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;->artistNameTextView:Landroid/widget/TextView;

    .line 143
    const v2, 0x7f0c002d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;->albumNumTextView:Landroid/widget/TextView;

    .line 144
    const v2, 0x7f0c002c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;->artistImageView:Landroid/widget/ImageView;

    .line 145
    iget-object v2, v1, Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;->artistImageView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 5
    .parameter "constraint"

    .prologue
    const/4 v4, 0x1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 187
    :goto_0
    return-object v2

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/miui/player/model/BrowserSource;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 185
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mConstraint:Ljava/lang/String;

    .line 186
    iput-boolean v4, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 187
    goto :goto_0
.end method

.method public setActivity(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    .line 132
    return-void
.end method
