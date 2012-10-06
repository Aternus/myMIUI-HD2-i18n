.class public Lcom/miui/player/model/TrackBrowserAdapter;
.super Lcom/miui/player/model/SectionCursorAdapter;
.source "TrackBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/TrackBrowserAdapter$UpdateNamesObserver;,
        Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;,
        Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final CURSOR_COLS:[Ljava/lang/String; = null

.field public static final NOWPLAYING_CURSOR_COLS:[Ljava/lang/String; = null

.field public static final PLAYLIST_TRACK_COLS:[Ljava/lang/String; = null

.field public static final QUERY_FINISH_TOKEN:I = 0x1


# instance fields
.field mAlbumIdx:I

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

.field private mBrowserSource:Lcom/miui/player/model/BrowserSource;

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field mDisableNowPlayingIndicator:Z

.field private mDownloadAppointNameArr:[Ljava/lang/String;

.field mFavourtePlaylistCount:I

.field mIdIdx:I

.field private mIsInAlbum:Z

.field private mIsInPlaylist:Z

.field mIsNowPlaying:Z

.field private final mPrimaryTextColor:Landroid/content/res/ColorStateList;

.field mProviderIdIdx:I

.field private mQueryHandler:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

.field private final mSecondaryTextColor:Landroid/content/res/ColorStateList;

.field private final mShawdowColor:I

.field mShowArtist:Z

.field mTitleIdx:I

.field mToken:I

.field private final mUpdateNamesObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v6

    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/TrackBrowserAdapter;->CURSOR_COLS:[Ljava/lang/String;

    .line 100
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v6

    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "online_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/TrackBrowserAdapter;->NOWPLAYING_CURSOR_COLS:[Ljava/lang/String;

    .line 110
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v6

    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "audio_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "online_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "play_order"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/TrackBrowserAdapter;->PLAYLIST_TRACK_COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/player/model/BrowserSource;Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;ILandroid/database/Cursor;[Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/FastScroller;Ljava/lang/String;)V
    .locals 12
    .parameter "browserSource"
    .parameter "batchSelectionPlaylistController"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "disablenowplayingindicator"
    .parameter "artistId"
    .parameter "albumId"
    .parameter "playlist"
    .parameter "fastScroller"
    .parameter "titleCol"

    .prologue
    .line 219
    invoke-interface {p1}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, p0

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    invoke-direct/range {v2 .. v9}, Lcom/miui/player/model/SectionCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILandroid/widget/FastScroller;Ljava/lang/String;)V

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 82
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mConstraint:Ljava/lang/String;

    .line 84
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mConstraintIsValid:Z

    .line 86
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mIsInPlaylist:Z

    .line 88
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mIsInAlbum:Z

    .line 220
    if-eqz p10, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mIsInPlaylist:Z

    .line 221
    const-string v2, "nowplaying"

    move-object v0, v2

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mIsNowPlaying:Z

    .line 222
    if-eqz p9, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mIsInAlbum:Z

    .line 223
    iput-object p1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    .line 224
    iput-object p2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    .line 225
    move-object v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/miui/player/model/TrackBrowserAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 226
    move/from16 v0, p7

    move-object v1, p0

    iput-boolean v0, v1, Lcom/miui/player/model/TrackBrowserAdapter;->mDisableNowPlayingIndicator:Z

    .line 227
    if-eqz p8, :cond_0

    if-eqz p9, :cond_4

    :cond_0
    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mShowArtist:Z

    .line 228
    invoke-interface {p1}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 229
    .local v10, context:Landroid/content/Context;
    new-instance v2, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;-><init>(Lcom/miui/player/model/TrackBrowserAdapter;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mQueryHandler:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    .line 230
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 231
    .local v11, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v2}, Lcom/miui/player/model/BrowserSource;->getListStyle()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 232
    const v2, 0x7f060057

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mPrimaryTextColor:Landroid/content/res/ColorStateList;

    .line 233
    const v2, 0x7f060056

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    .line 234
    const v2, 0x7f06000f

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mShawdowColor:I

    .line 241
    :goto_3
    new-instance v2, Lcom/miui/player/model/TrackBrowserAdapter$UpdateNamesObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3, p0}, Lcom/miui/player/model/TrackBrowserAdapter$UpdateNamesObserver;-><init>(Landroid/os/Handler;Lcom/miui/player/model/TrackBrowserAdapter;)V

    iput-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mUpdateNamesObserver:Landroid/database/ContentObserver;

    .line 242
    if-eqz p4, :cond_1

    .line 243
    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mUpdateNamesObserver:Landroid/database/ContentObserver;

    move-object/from16 v0, p4

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/model/TrackBrowserAdapter;->updateAppointNames()V

    .line 247
    return-void

    .line 220
    .end local v10           #context:Landroid/content/Context;
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 222
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 227
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 236
    .restart local v10       #context:Landroid/content/Context;
    .restart local v11       #res:Landroid/content/res/Resources;
    :cond_5
    const v2, 0x7f060058

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mPrimaryTextColor:Landroid/content/res/ColorStateList;

    .line 237
    const v2, 0x7f060055

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    .line 238
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mShawdowColor:I

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/miui/player/model/TrackBrowserAdapter;)Lcom/miui/player/model/BrowserSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const-string v2, "_id"

    .line 311
    if-eqz p1, :cond_0

    .line 312
    const-string v1, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mIdIdx:I

    .line 313
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mTitleIdx:I

    .line 314
    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mArtistIdx:I

    .line 315
    const-string v1, "album"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mAlbumIdx:I

    .line 317
    :try_start_0
    const-string v1, "audio_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mAudioIdIdx:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mProviderIdIdx:I

    .line 325
    :try_start_1
    const-string v1, "online_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mProviderIdIdx:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 330
    :goto_1
    invoke-virtual {p0}, Lcom/miui/player/model/TrackBrowserAdapter;->isIndexerEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {p0, p1}, Lcom/miui/player/model/TrackBrowserAdapter;->setSectionIndexer(Landroid/database/Cursor;)V

    .line 336
    :cond_0
    :goto_2
    return-void

    .line 319
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 320
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mAudioIdIdx:I

    goto :goto_0

    .line 333
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/player/model/TrackBrowserAdapter;->setSectionIndexer(Landroid/database/Cursor;)V

    goto :goto_2

    .line 327
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 26
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 385
    invoke-super/range {p0 .. p3}, Lcom/miui/player/model/SectionCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 386
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;

    .line 387
    .local v7, vh:Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v23

    .line 389
    .local v23, position:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mTitleIdx:I

    move v5, v0

    iget-object v6, v7, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 390
    iget-object v5, v7, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget-object v6, v7, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v6, v6, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v8, 0x0

    iget-object v9, v7, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v9, v9, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v5, v6, v8, v9}, Landroid/widget/TextView;->setText([CII)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object v15, v0

    .line 393
    .local v15, builder:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 395
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mShowArtist:Z

    move v5, v0

    if-eqz v5, :cond_7

    .line 396
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mArtistIdx:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 397
    .local v20, name:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/miui/player/helper/MediaInfo;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 402
    :goto_0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    .line 403
    .local v19, len:I
    iget-object v5, v7, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer2:[C

    array-length v5, v5

    move v0, v5

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 404
    move/from16 v0, v19

    new-array v0, v0, [C

    move-object v5, v0

    iput-object v5, v7, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer2:[C

    .line 406
    :cond_0
    const/4 v5, 0x0

    iget-object v6, v7, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer2:[C

    const/4 v8, 0x0

    move-object v0, v15

    move v1, v5

    move/from16 v2, v19

    move-object v3, v6

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 407
    iget-object v5, v7, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v6, v7, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer2:[C

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move v2, v8

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->setText([CII)V

    .line 409
    const-wide/16 v21, -0x1

    .line 410
    .local v21, playingId:J
    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v5, :cond_1

    .line 413
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mIsNowPlaying:Z

    move v5, v0

    if-eqz v5, :cond_8

    .line 414
    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->getQueuePosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v21, v0

    .line 422
    :cond_1
    :goto_1
    const/4 v10, 0x0

    .line 423
    .local v10, providerId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mProviderIdIdx:I

    move v5, v0

    if-lez v5, :cond_2

    .line 424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mProviderIdIdx:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 444
    :cond_2
    move-object v0, v7

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->playerIndicator:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    .line 445
    .local v16, indicator:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mIsNowPlaying:Z

    move v5, v0

    if-eqz v5, :cond_9

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v5, v21

    if-nez v5, :cond_9

    const/4 v5, 0x1

    move/from16 v18, v5

    .line 446
    .local v18, isPlayingItem:Z
    :goto_2
    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mIsNowPlaying:Z

    move v5, v0

    if-nez v5, :cond_3

    .line 447
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mDisableNowPlayingIndicator:Z

    move v5, v0

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mAudioIdIdx:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v5, v21

    if-nez v5, :cond_a

    const/4 v5, 0x1

    move/from16 v18, v5

    .line 448
    :goto_3
    if-nez v18, :cond_3

    invoke-static/range {v21 .. v22}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 450
    if-eqz v10, :cond_b

    :try_start_1
    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    move/from16 v18, v5

    .line 456
    :cond_3
    :goto_4
    if-eqz v18, :cond_d

    .line 457
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    :try_start_2
    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v5, :cond_c

    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 461
    const v5, 0x7f020068

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 472
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mAudioIdIdx:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 473
    .local v13, audioId:J
    const/16 v25, 0x0

    .line 474
    .local v25, visible:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mIsInPlaylist:Z

    move v5, v0

    if-eqz v5, :cond_4

    .line 475
    const-wide/16 v5, 0x0

    cmp-long v5, v13, v5

    if-lez v5, :cond_e

    invoke-static {v13, v14}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v5

    if-nez v5, :cond_e

    .line 476
    const/16 v25, 0x0

    .line 493
    :cond_4
    :goto_6
    iget-object v5, v7, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->onlineIndicator:Landroid/widget/TextView;

    if-eqz v25, :cond_12

    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object v5, v0

    invoke-interface {v5}, Lcom/miui/player/model/BrowserSource;->getListStyle()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 496
    rem-int/lit8 v5, v23, 0x2

    if-nez v5, :cond_13

    .line 497
    const v5, 0x7f020086

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 503
    :cond_5
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    move-object v5, v0

    if-eqz v5, :cond_6

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mIdIdx:I

    move v8, v0

    move-object/from16 v0, p3

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual/range {v5 .. v10}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->bindSelectableView(Landroid/content/Context;Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;JLjava/lang/String;)V

    .line 507
    :cond_6
    move-object/from16 v0, p2

    move-wide v1, v13

    move-object v3, v10

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/helper/FavoritePlaylist;->contains(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v17

    .line 508
    .local v17, isFavorite:Z
    iget-object v5, v7, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    if-eqz v17, :cond_14

    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    return-void

    .line 399
    .end local v10           #providerId:Ljava/lang/String;
    .end local v13           #audioId:J
    .end local v16           #indicator:Landroid/widget/ImageView;
    .end local v17           #isFavorite:Z
    .end local v18           #isPlayingItem:Z
    .end local v19           #len:I
    .end local v20           #name:Ljava/lang/String;
    .end local v21           #playingId:J
    .end local v25           #visible:Z
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mAlbumIdx:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 400
    .restart local v20       #name:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/miui/player/helper/MediaInfo;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 416
    .restart local v19       #len:I
    .restart local v21       #playingId:J
    :cond_8
    :try_start_3
    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->getAudioId()J
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v21

    goto/16 :goto_1

    .line 445
    .restart local v10       #providerId:Ljava/lang/String;
    .restart local v16       #indicator:Landroid/widget/ImageView;
    :cond_9
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_2

    .line 447
    .restart local v18       #isPlayingItem:Z
    :cond_a
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_3

    .line 450
    :cond_b
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_4

    .line 463
    :cond_c
    const v5, 0x7f020064

    :try_start_4
    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .line 466
    :catch_0
    move-exception v5

    goto/16 :goto_5

    .line 470
    :cond_d
    const/4 v5, 0x4

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 478
    .restart local v13       #audioId:J
    .restart local v25       #visible:Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mDownloadAppointNameArr:[Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_f

    .line 479
    const/16 v25, 0x1

    goto/16 :goto_6

    .line 481
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mTitleIdx:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 482
    .local v24, tr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mArtistIdx:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 483
    .local v12, ar:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 484
    const/16 v25, 0x1

    goto/16 :goto_6

    .line 486
    :cond_10
    move-object/from16 v0, v24

    move-object v1, v12

    invoke-static {v0, v1}, Lcom/miui/player/helper/MusicMetaManager;->getMP3AppointName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 487
    .local v11, appointName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mDownloadAppointNameArr:[Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5, v11}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_11

    const/4 v5, 0x1

    move/from16 v25, v5

    :goto_a
    goto/16 :goto_6

    :cond_11
    const/4 v5, 0x0

    move/from16 v25, v5

    goto :goto_a

    .line 493
    .end local v11           #appointName:Ljava/lang/String;
    .end local v12           #ar:Ljava/lang/String;
    .end local v24           #tr:Ljava/lang/String;
    :cond_12
    const/4 v6, 0x4

    goto/16 :goto_7

    .line 499
    :cond_13
    const v5, 0x7f020087

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_8

    .line 508
    .restart local v17       #isFavorite:Z
    :cond_14
    const/4 v6, 0x4

    goto/16 :goto_9

    .line 452
    .end local v13           #audioId:J
    .end local v17           #isFavorite:Z
    .end local v25           #visible:Z
    :catch_1
    move-exception v5

    goto/16 :goto_4

    .line 419
    .end local v10           #providerId:Ljava/lang/String;
    .end local v16           #indicator:Landroid/widget/ImageView;
    .end local v18           #isPlayingItem:Z
    :catch_2
    move-exception v5

    goto/16 :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v0, p1}, Lcom/miui/player/model/BrowserSource;->isCurrentBrowserCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mUpdateNamesObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 517
    :cond_0
    if-eqz p1, :cond_1

    .line 518
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mUpdateNamesObserver:Landroid/database/ContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v0, p1}, Lcom/miui/player/model/BrowserSource;->setCurrentBrowserCursor(Landroid/database/Cursor;)V

    .line 522
    invoke-super {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 523
    invoke-direct {p0, p1}, Lcom/miui/player/model/TrackBrowserAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 525
    :cond_2
    return-void
.end method

.method public getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mQueryHandler:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    return-object v0
.end method

.method public getToken()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mToken:I

    return v0
.end method

.method public isIndexerEnabled()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mIsInPlaylist:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mIsInAlbum:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f80

    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 340
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 342
    .local v3, v:Landroid/view/View;
    new-instance v4, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;

    invoke-direct {v4}, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;-><init>()V

    .line 343
    .local v4, vh:Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;
    const v5, 0x7f0c000e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 344
    .local v1, icon:Landroid/widget/ImageView;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 345
    const v5, 0x1020001

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 346
    .local v0, checkBox:Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v5}, Lcom/miui/player/model/BrowserSource;->isPlaylistEditMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 347
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 348
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    iget-object v5, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v5}, Lcom/miui/player/model/BrowserSource;->getListStyle()I

    move-result v5

    if-ne v5, v10, :cond_1

    .line 350
    const v5, 0x7f020040

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    :goto_0
    iget-object v5, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v5}, Lcom/miui/player/model/BrowserSource;->getBrowserView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SortableListView;

    .line 356
    .local v2, sortableListView:Landroid/widget/SortableListView;
    invoke-virtual {v2}, Landroid/widget/SortableListView;->getListenerForStartingSort()Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 362
    .end local v2           #sortableListView:Landroid/widget/SortableListView;
    :goto_1
    iput-object v0, v4, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 363
    const v5, 0x7f0c005c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->playerIndicator:Landroid/widget/ImageView;

    .line 364
    const v5, 0x7f0c00a9

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->onlineIndicator:Landroid/widget/TextView;

    .line 365
    const v5, 0x7f0c00a8

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    .line 366
    const v5, 0x7f0c005b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 367
    iget-object v5, v4, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mPrimaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 368
    const v5, 0x7f0c005d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 369
    iget-object v5, v4, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 370
    new-instance v5, Landroid/database/CharArrayBuffer;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, v4, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 371
    const/16 v5, 0xc8

    new-array v5, v5, [C

    iput-object v5, v4, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->buffer2:[C

    .line 372
    iget-object v5, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v5}, Lcom/miui/player/model/BrowserSource;->getListStyle()I

    move-result v5

    if-ne v5, v10, :cond_0

    .line 373
    iget-object v5, v4, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget v6, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mShawdowColor:I

    invoke-virtual {v5, v9, v7, v8, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 374
    iget-object v5, v4, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget v6, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mShawdowColor:I

    invoke-virtual {v5, v9, v7, v8, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 375
    iget-object v5, v4, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    const v6, 0x7f020027

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    iget-object v5, v4, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->onlineIndicator:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060056

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 379
    :cond_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 380
    return-object v3

    .line 352
    :cond_1
    const v5, 0x7f02003f

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 358
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 359
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 360
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 5
    .parameter "constraint"

    .prologue
    .line 529
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/model/TrackBrowserAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 537
    :goto_0
    return-object v2

    .line 534
    :cond_2
    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    iget-object v3, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mQueryHandler:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/miui/player/model/BrowserSource;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 535
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mConstraint:Ljava/lang/String;

    .line 536
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 537
    goto :goto_0
.end method

.method public setBatchSelectionPlaylistController(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V
    .locals 0
    .parameter "selectionController"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    .line 304
    return-void
.end method

.method public setBrowserSource(Lcom/miui/player/model/BrowserSource;)V
    .locals 0
    .parameter "newSource"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    .line 300
    return-void
.end method

.method public updateAppointNames()V
    .locals 18

    .prologue
    .line 250
    const/4 v15, 0x0

    .line 251
    .local v15, nameArr:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mIsInPlaylist:Z

    move v3, v0

    if-eqz v3, :cond_2

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object v3, v0

    invoke-interface {v3}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 253
    .local v2, context:Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "music/mp3"

    invoke-static {v4}, Lcom/miui/player/helper/MusicMetaManager;->getMetaDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 254
    .local v13, miuiPath:Ljava/lang/String;
    invoke-static {v13}, Lcom/miui/player/MusicUtils;->filterSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 255
    .local v9, escapedPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%s LIKE \"%%%s%%\""

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "_data"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v9, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ESCAPE \'\\\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 257
    .local v12, likeClause:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%s NOT LIKE \"%%%s%%/%%\""

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "_data"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v9, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ESCAPE \'\\\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 259
    .local v16, notlikeClause:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, where:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_data"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 265
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mDownloadAppointNameArr:[Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mDownloadAppointNameArr:[Ljava/lang/String;

    move-object v3, v0

    array-length v3, v3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;->mDownloadAppointNameArr:[Ljava/lang/String;

    move-object v15, v0

    .line 271
    :goto_0
    const/4 v10, 0x0

    .line 272
    .local v10, i:I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 274
    .local v17, path:Ljava/lang/String;
    const/16 v3, 0x2f

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 275
    .local v14, name:Ljava/lang/String;
    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .local v11, i:I
    aput-object v14, v15, v10

    move v10, v11

    .line 276
    .end local v11           #i:I
    .restart local v10       #i:I
    goto :goto_1

    .line 269
    .end local v10           #i:I
    .end local v14           #name:Ljava/lang/String;
    .end local v17           #path:Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v15, v3, [Ljava/lang/String;

    goto :goto_0

    .line 277
    .restart local v10       #i:I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 281
    .end local v2           #context:Landroid/content/Context;
    .end local v5           #where:Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #escapedPath:Ljava/lang/String;
    .end local v10           #i:I
    .end local v12           #likeClause:Ljava/lang/String;
    .end local v13           #miuiPath:Ljava/lang/String;
    .end local v16           #notlikeClause:Ljava/lang/String;
    :cond_2
    if-eqz v15, :cond_3

    .line 282
    invoke-static {v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 283
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/model/TrackBrowserAdapter;->mDownloadAppointNameArr:[Ljava/lang/String;

    .line 288
    :goto_2
    return-void

    .line 285
    :cond_3
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/model/TrackBrowserAdapter;->mDownloadAppointNameArr:[Ljava/lang/String;

    goto :goto_2
.end method
