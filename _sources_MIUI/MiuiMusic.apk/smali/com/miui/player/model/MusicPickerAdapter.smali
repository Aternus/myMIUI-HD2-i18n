.class public Lcom/miui/player/model/MusicPickerAdapter;
.super Lcom/miui/player/model/SectionCursorAdapter;
.source "MusicPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;,
        Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final CURSOR_COLS:[Ljava/lang/String;


# instance fields
.field private mArtistIdx:I

.field private mAudioIdIdx:I

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mBrowserSource:Lcom/miui/player/model/BrowserSource;

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private mMaxPickerSongs:I

.field private mPlaylistId:I

.field private mPrevAudioList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;

.field private mSelectAll:Landroid/widget/TextView;

.field private mSelectAudioList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/MusicPickerAdapter;->CURSOR_COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/player/model/BrowserSource;ILandroid/widget/LinearLayout;Landroid/widget/TextView;ILandroid/database/Cursor;[Ljava/lang/String;[ILandroid/widget/FastScroller;)V
    .locals 8
    .parameter "browserSource"
    .parameter "playlistId"
    .parameter "bottomLayout"
    .parameter "selectAll"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "scroller"

    .prologue
    .line 151
    invoke-interface {p1}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v7, "title"

    move-object v0, p0

    move v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lcom/miui/player/model/SectionCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILandroid/widget/FastScroller;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mConstraint:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mConstraintIsValid:Z

    .line 152
    iput-object p1, p0, Lcom/miui/player/model/MusicPickerAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    .line 153
    iput p2, p0, Lcom/miui/player/model/MusicPickerAdapter;->mPlaylistId:I

    .line 154
    invoke-direct {p0, p6}, Lcom/miui/player/model/MusicPickerAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 155
    new-instance v0, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;

    invoke-interface {p1}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;-><init>(Lcom/miui/player/model/MusicPickerAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mQueryHandler:Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mSelectAudioList:Ljava/util/HashSet;

    .line 157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mPrevAudioList:Ljava/util/HashSet;

    .line 158
    iput-object p3, p0, Lcom/miui/player/model/MusicPickerAdapter;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 159
    iput-object p4, p0, Lcom/miui/player/model/MusicPickerAdapter;->mSelectAll:Landroid/widget/TextView;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/model/MusicPickerAdapter;)Lcom/miui/player/model/BrowserSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/model/MusicPickerAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/miui/player/model/MusicPickerAdapter;->setPrevAudioList()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/player/model/MusicPickerAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mMaxPickerSongs:I

    return v0
.end method

.method static synthetic access$202(Lcom/miui/player/model/MusicPickerAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/miui/player/model/MusicPickerAdapter;->mMaxPickerSongs:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/player/model/MusicPickerAdapter;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mPrevAudioList:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/model/MusicPickerAdapter;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mSelectAll:Landroid/widget/TextView;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 237
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mTitleIdx:I

    .line 238
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mArtistIdx:I

    .line 239
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mAudioIdIdx:I

    .line 241
    :cond_0
    return-void
.end method

.method private setPrevAudioList()V
    .locals 6

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, audioIdList:[J
    iget v3, p0, Lcom/miui/player/model/MusicPickerAdapter;->mPlaylistId:I

    if-lez v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/miui/player/model/MusicPickerAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v3}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/miui/player/model/MusicPickerAdapter;->mPlaylistId:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/miui/player/MusicUtils;->getLocalSongListForPlaylist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 176
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 177
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 178
    iget-object v3, p0, Lcom/miui/player/model/MusicPickerAdapter;->mPrevAudioList:Ljava/util/HashSet;

    aget-wide v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 168
    .end local v2           #i:I
    :cond_1
    iget v3, p0, Lcom/miui/player/model/MusicPickerAdapter;->mPlaylistId:I

    if-nez v3, :cond_0

    .line 170
    :try_start_0
    sget-object v3, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/miui/player/IMediaPlaybackService;->getQueue()[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 172
    .local v1, e:Landroid/os/RemoteException;
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
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

    .line 259
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;

    .line 262
    .local v5, vh:Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;
    iget v6, p0, Lcom/miui/player/model/MusicPickerAdapter;->mTitleIdx:I

    iget-object v7, v5, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v6, v7}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 263
    iget-object v6, v5, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->trackName:Landroid/widget/TextView;

    iget-object v7, v5, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v7, v7, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v8, v5, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v8, v8, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v6, v7, v9, v8}, Landroid/widget/TextView;->setText([CII)V

    .line 265
    iget-object v2, p0, Lcom/miui/player/model/MusicPickerAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 266
    .local v2, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v9, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 267
    iget v6, p0, Lcom/miui/player/model/MusicPickerAdapter;->mArtistIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, name:Ljava/lang/String;
    invoke-static {p2, v4}, Lcom/miui/player/helper/MediaInfo;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 271
    .local v3, len:I
    iget-object v6, v5, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->buffer2:[C

    array-length v6, v6

    if-ge v6, v3, :cond_0

    .line 272
    new-array v6, v3, [C

    iput-object v6, v5, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->buffer2:[C

    .line 274
    :cond_0
    iget-object v6, v5, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v2, v9, v3, v6, v9}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 275
    iget-object v6, v5, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->artistName:Landroid/widget/TextView;

    iget-object v7, v5, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v6, v7, v9, v3}, Landroid/widget/TextView;->setText([CII)V

    .line 277
    iget v6, p0, Lcom/miui/player/model/MusicPickerAdapter;->mAudioIdIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 278
    .local v0, audioId:J
    iget-object v6, v5, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 279
    iget-object v6, p0, Lcom/miui/player/model/MusicPickerAdapter;->mPrevAudioList:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 280
    iget-object v6, v5, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 281
    iget-object v6, v5, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 286
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v6, v5, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 284
    iget-object v6, v5, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/miui/player/model/MusicPickerAdapter;->mSelectAudioList:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v0, p1}, Lcom/miui/player/model/BrowserSource;->isCurrentBrowserCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v0, p1}, Lcom/miui/player/model/BrowserSource;->setCurrentBrowserCursor(Landroid/database/Cursor;)V

    .line 312
    invoke-super {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 313
    invoke-direct {p0, p1}, Lcom/miui/player/model/MusicPickerAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 315
    :cond_0
    return-void
.end method

.method public clearSelectAudioList()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mSelectAudioList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 200
    return-void
.end method

.method public getCursorColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/miui/player/model/MusicPickerAdapter;->CURSOR_COLS:[Ljava/lang/String;

    return-object v0
.end method

.method public getPrevAudioList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mPrevAudioList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getQueryHandler()Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mQueryHandler:Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;

    return-object v0
.end method

.method public getSelectAudioList()[J
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/miui/player/model/MusicPickerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 204
    .local v3, cursor:Landroid/database/Cursor;
    if-nez v3, :cond_0

    .line 205
    new-array v7, v9, [J

    .line 220
    :goto_0
    return-object v7

    .line 208
    :cond_0
    iget-object v7, p0, Lcom/miui/player/model/MusicPickerAdapter;->mSelectAudioList:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    new-array v2, v7, [J

    .line 209
    .local v2, audioList:[J
    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 211
    .local v6, position:I
    const/4 v4, 0x0

    .line 212
    .local v4, index:I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_2

    .line 213
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 214
    .local v0, audioId:J
    iget-object v7, p0, Lcom/miui/player/model/MusicPickerAdapter;->mSelectAudioList:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 215
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aput-wide v0, v2, v4

    move v4, v5

    .line 212
    .end local v5           #index:I
    .restart local v4       #index:I
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 218
    .end local v0           #audioId:J
    :cond_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object v7, v2

    .line 220
    goto :goto_0
.end method

.method public getSelectAudioSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mSelectAudioList:Ljava/util/HashSet;

    return-object v0
.end method

.method public isSelectAll()Z
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/miui/player/model/MusicPickerAdapter;->mSelectAudioList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/player/model/MusicPickerAdapter;->mMaxPickerSongs:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 245
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 246
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;-><init>()V

    .line 248
    .local v1, vh:Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;
    const v2, 0x7f0c0069

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->trackName:Landroid/widget/TextView;

    .line 249
    const v2, 0x7f0c002a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->artistName:Landroid/widget/TextView;

    .line 250
    const v2, 0x7f0c0068

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    iput-object p0, v1, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 251
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 252
    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/miui/player/model/MusicPickerAdapter$ViewHolder;->buffer2:[C

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 254
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 5
    .parameter "constraint"

    .prologue
    .line 319
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/miui/player/model/MusicPickerAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/miui/player/model/MusicPickerAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/player/model/MusicPickerAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/model/MusicPickerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 327
    :goto_0
    return-object v2

    .line 324
    :cond_2
    iget-object v2, p0, Lcom/miui/player/model/MusicPickerAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    iget-object v3, p0, Lcom/miui/player/model/MusicPickerAdapter;->mQueryHandler:Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/miui/player/model/BrowserSource;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 325
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/miui/player/model/MusicPickerAdapter;->mConstraint:Ljava/lang/String;

    .line 326
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/player/model/MusicPickerAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 327
    goto :goto_0
.end method

.method public setBrowserSource(Lcom/miui/player/model/BrowserSource;)V
    .locals 0
    .parameter "newSource"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/miui/player/model/MusicPickerAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    .line 229
    return-void
.end method

.method public setSelectAudioList(Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, selectAudioList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    iput-object p1, p0, Lcom/miui/player/model/MusicPickerAdapter;->mSelectAudioList:Ljava/util/HashSet;

    goto :goto_0
.end method

.method public updateBottomView()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 289
    iget-object v4, p0, Lcom/miui/player/model/MusicPickerAdapter;->mSelectAudioList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v2

    .line 290
    .local v2, count:I
    iget-object v4, p0, Lcom/miui/player/model/MusicPickerAdapter;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 291
    .local v1, context:Landroid/content/Context;
    const v4, 0x7f08009c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, formatCount:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/player/model/MusicPickerAdapter;->mBottomLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f0c0002

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 293
    .local v0, addCommit:Landroid/widget/TextView;
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget v4, p0, Lcom/miui/player/model/MusicPickerAdapter;->mMaxPickerSongs:I

    if-lez v4, :cond_0

    move v4, v7

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 297
    iget v4, p0, Lcom/miui/player/model/MusicPickerAdapter;->mMaxPickerSongs:I

    if-ne v2, v4, :cond_1

    .line 298
    iget-object v4, p0, Lcom/miui/player/model/MusicPickerAdapter;->mSelectAll:Landroid/widget/TextView;

    const v5, 0x7f08009b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 302
    :goto_1
    return-void

    :cond_0
    move v4, v6

    .line 294
    goto :goto_0

    .line 300
    :cond_1
    iget-object v4, p0, Lcom/miui/player/model/MusicPickerAdapter;->mSelectAll:Landroid/widget/TextView;

    const v5, 0x7f08009a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
