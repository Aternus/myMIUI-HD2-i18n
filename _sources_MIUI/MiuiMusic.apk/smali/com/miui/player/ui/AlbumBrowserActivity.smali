.class public Lcom/miui/player/ui/AlbumBrowserActivity;
.super Lcom/miui/player/ui/BaseActivity;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/miui/player/MusicUtils$Defs;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/miui/player/model/BrowserSource;
.implements Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/AlbumBrowserActivity$AlbumArtTask;,
        Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;
    }
.end annotation


# static fields
.field private static final R_ALBUM_GRID_ID:I = 0x7f0c002b


# instance fields
.field private mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

.field private mAdapterSent:Z

.field private mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mArtistId:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mIsQuerying:Z

.field private mSongNum:I

.field private mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/miui/player/ui/BaseActivity;-><init>()V

    .line 214
    new-instance v0, Lcom/miui/player/ui/AlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/AlbumBrowserActivity$1;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mIsQuerying:Z

    .line 601
    new-instance v0, Lcom/miui/player/ui/AlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/AlbumBrowserActivity$2;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/ui/AlbumBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/ui/AlbumBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mSongNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/player/ui/AlbumBrowserActivity;)Lcom/miui/player/model/AlbumBrowserAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/ui/AlbumBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->refreshHeader()V

    return-void
.end method

.method private getHeaderName()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 239
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistName:Ljava/lang/String;

    .line 266
    :goto_0
    return-object v0

    .line 243
    :cond_0
    const/4 v7, 0x0

    .line 244
    .local v7, fancyName:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 245
    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 246
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "artist"

    aput-object v0, v2, v8

    .line 251
    .local v2, project:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 252
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 253
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 255
    invoke-static {p0, v7}, Lcom/miui/player/helper/MediaInfo;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 257
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 261
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #project:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    if-nez v7, :cond_3

    .line 262
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 265
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistName:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistName:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshHeader()V
    .locals 5

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "num"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 200
    .local v0, count:I
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mIsQuerying:Z

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/AlbumBrowserAdapter;->getCount()I

    move-result v0

    .line 203
    :cond_0
    const v1, 0x7f0c0051

    .line 204
    .local v1, textId:I
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 205
    const v1, 0x7f0c0059

    .line 206
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/miui/player/MusicUtils;->getSongCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mSongNum:I

    .line 207
    const v2, 0x7f0c0056

    const v3, 0x7f080012

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mSongNum:I

    invoke-static {p0, v2, v3, v4}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;ILjava/lang/CharSequence;I)V

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getHeaderName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;ILjava/lang/CharSequence;I)V

    .line 212
    return-void
.end method


# virtual methods
.method public createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 18
    .parameter "queryHandler"
    .parameter "filter"
    .parameter "async"

    .prologue
    .line 429
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/player/ui/AlbumBrowserActivity;->mIsQuerying:Z

    .line 430
    const-string v10, " AND "

    .line 431
    .local v10, AND:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .local v17, where:Ljava/lang/StringBuilder;
    invoke-static/range {p0 .. p0}, Lcom/miui/player/MusicUtils;->getValidAlbumIdSetAsStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 433
    .local v11, albumSet:Ljava/lang/String;
    const-string v2, "album != \'\'"

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const/4 v8, 0x0

    .line 437
    .local v8, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 438
    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 439
    .local v15, searchWords:[Ljava/lang/String;
    array-length v2, v15

    new-array v8, v2, [Ljava/lang/String;

    .line 440
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v12

    .line 441
    .local v12, col:Ljava/text/Collator;
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 442
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    array-length v2, v15

    if-ge v13, v2, :cond_0

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v15, v13

    invoke-static {v3}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v13

    .line 442
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 445
    :cond_0
    const/4 v13, 0x0

    :goto_1
    array-length v2, v15

    if-ge v13, v2, :cond_1

    .line 446
    const-string v2, " AND "

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string v2, "artist_key||"

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string v2, "album_key LIKE ?"

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 452
    .end local v12           #col:Ljava/text/Collator;
    .end local v13           #i:I
    .end local v15           #searchWords:[Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    .line 453
    .local v7, whereclause:Ljava/lang/String;
    const-string v16, "album_sort_key"

    .line 454
    .local v16, sortOrder:Ljava/lang/String;
    const/4 v14, 0x0

    .line 455
    .local v14, ret:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    move-object v2, v0

    if-eqz v2, :cond_3

    .line 456
    const-string v2, " AND "

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " audio.album_id  IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 459
    if-eqz p1, :cond_2

    .line 460
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/miui/player/model/AlbumBrowserAdapter;->COLS:[Ljava/lang/String;

    const-string v9, "album_sort_key"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :goto_2
    return-object v14

    .line 467
    :cond_2
    const-string v2, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/miui/player/model/AlbumBrowserAdapter;->COLS:[Ljava/lang/String;

    const-string v9, "album_sort_key"

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto :goto_2

    .line 474
    :cond_3
    const-string v2, " AND "

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 477
    if-eqz p1, :cond_4

    .line 478
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/miui/player/model/AlbumBrowserAdapter;->COLS:[Ljava/lang/String;

    const-string v9, "album_sort_key"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 481
    :cond_4
    sget-object v5, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/miui/player/model/AlbumBrowserAdapter;->COLS:[Ljava/lang/String;

    const-string v9, "album_sort_key"

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto :goto_2
.end method

.method public getBrowserView()Landroid/view/View;
    .locals 1

    .prologue
    .line 525
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 530
    return-object p0
.end method

.method public getCurrentBrowserCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getListStyle()I
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    return-object v0
.end method

.method public inititalizeByCursor(Landroid/database/Cursor;Z)V
    .locals 2
    .parameter "c"
    .parameter "isCookie"

    .prologue
    const/4 v1, 0x0

    .line 229
    iput-boolean v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mIsQuerying:Z

    .line 230
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/player/model/AlbumBrowserAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 235
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/AlbumBrowserActivity;->enableDatabaseError(ZZ)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isCurrentBrowserCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableScanReceiver()Z
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x1

    return v0
.end method

.method public isPlaylistEditMode()Z
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public isRecoveryCompleteReceiver()Z
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x1

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 291
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 328
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 294
    :sswitch_0
    iget-object v6, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v3

    .line 295
    .local v3, list:[J
    invoke-static {p0, v3, v8}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    move v6, v10

    .line 296
    goto :goto_0

    .line 300
    .end local v3           #list:[J
    :sswitch_1
    iget-object v6, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v3

    .line 301
    .restart local v3       #list:[J
    invoke-static {p0, v3}, Lcom/miui/player/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    move v6, v10

    .line 302
    goto :goto_0

    .line 306
    .end local v3           #list:[J
    :sswitch_2
    const/16 v6, 0x16

    invoke-static {p0, p0, v6}, Lcom/miui/player/ui/CreatorDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;I)Lcom/miui/player/ui/CreatorDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/player/ui/CreatorDialog;->show()V

    move v6, v10

    .line 307
    goto :goto_0

    .line 311
    :sswitch_3
    iget-object v6, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v3

    .line 312
    .restart local v3       #list:[J
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "playlist"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 313
    .local v4, playlist:J
    invoke-static {p0, v3, v4, v5, v10}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)V

    move v6, v10

    .line 314
    goto :goto_0

    .line 318
    .end local v3           #list:[J
    .end local v4           #playlist:J
    :sswitch_4
    iget-object v6, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v3

    .line 319
    .restart local v3       #list:[J
    const v6, 0x7f080007

    invoke-virtual {p0, v6}, Lcom/miui/player/ui/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, f:Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, desc:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 322
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "description"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v6, "items"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 324
    new-instance v6, Lcom/miui/player/ui/DeleteItems;

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-direct {v6, p0, v0, v7, v8}, Lcom/miui/player/ui/DeleteItems;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/MusicUtils$OnDialogCallback;I)V

    invoke-virtual {v6}, Lcom/miui/player/ui/DeleteItems;->show()V

    move v6, v10

    .line 325
    goto :goto_0

    .line 291
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 84
    if-eqz p1, :cond_3

    .line 85
    const-string v0, "selectedalbum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 86
    const-string v0, "artist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 87
    const-string v0, "artistname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistName:Ljava/lang/String;

    .line 92
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->setContentView(I)V

    .line 95
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->updateGoHome(Landroid/app/Activity;)V

    .line 97
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/GridView;

    .line 98
    .local v10, gv:Landroid/widget/GridView;
    invoke-virtual {v10, p0}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/GridView;->setTextFilterEnabled(Z)V

    .line 100
    invoke-virtual {v10, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/miui/player/model/AlbumBrowserAdapter;

    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_1
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    if-nez v0, :cond_4

    .line 109
    new-instance v0, Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f03000b

    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-array v6, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/model/AlbumBrowserAdapter;-><init>(Landroid/content/Context;Lcom/miui/player/ui/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    .line 112
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/AlbumBrowserAdapter;->startCache()V

    .line 113
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/AlbumBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/player/ui/AlbumBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 124
    :goto_2
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/miui/player/model/AlbumBrowserAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 125
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-virtual {v10, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 128
    const v0, 0x7f0c0053

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 129
    .local v12, secondaryHeader:Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    const v0, 0x7f0c0054

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, leftView:Landroid/view/View;
    const v0, 0x7f0c0057

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 132
    .local v11, rightView:Landroid/view/View;
    const v0, 0x7f0c0055

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 133
    .local v2, trackTab:Landroid/widget/TextView;
    const v3, 0x7f080054

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->setTopTabStyle(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;IZZ)V

    .line 134
    new-instance v0, Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/miui/player/ui/AlbumBrowserActivity$ToTrackClickListener;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;Lcom/miui/player/ui/AlbumBrowserActivity$1;)V

    .end local v2           #trackTab:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f0c0058

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 137
    .local v5, albumTab:Landroid/widget/TextView;
    const v6, 0x7f080053

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, v11

    invoke-static/range {v3 .. v8}, Lcom/miui/player/MusicUtils;->setTopTabStyle(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;IZZ)V

    .line 139
    .end local v1           #leftView:Landroid/view/View;
    .end local v5           #albumTab:Landroid/widget/TextView;
    .end local v11           #rightView:Landroid/view/View;
    .end local v12           #secondaryHeader:Landroid/view/View;
    :cond_0
    const v0, 0x7f0800e9

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 140
    .local v13, urlPattern:Ljava/lang/String;
    new-instance v0, Lcom/miui/player/helper/AlbumArtTaskWrap;

    new-instance v1, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumArtTask;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumArtTask;-><init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    invoke-direct {v0, p0, v1, v13}, Lcom/miui/player/helper/AlbumArtTaskWrap;-><init>(Landroid/content/Context;Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

    .line 142
    invoke-static {p0}, Lcom/miui/player/helper/NetworkUtils;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "other_connect_album"

    invoke-static {p0, v0}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-virtual {v0}, Lcom/miui/player/helper/AlbumArtTaskWrap;->execute()V

    .line 146
    :cond_2
    return-void

    .line 89
    .end local v10           #gv:Landroid/widget/GridView;
    .end local v13           #urlPattern:Ljava/lang/String;
    .restart local p1
    :cond_3
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "artist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "artistname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistName:Ljava/lang/String;

    goto/16 :goto_0

    .line 104
    .end local p1
    .restart local v10       #gv:Landroid/widget/GridView;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 105
    .local v9, e:Ljava/lang/ClassCastException;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    goto/16 :goto_1

    .line 115
    .end local v9           #e:Ljava/lang/ClassCastException;
    :cond_4
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/AlbumBrowserAdapter;->startCache()V

    .line 116
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/player/model/AlbumBrowserAdapter;->setActivity(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    .line 117
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/AlbumBrowserAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 118
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 119
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/AlbumBrowserActivity;->inititalizeByCursor(Landroid/database/Cursor;Z)V

    goto/16 :goto_2

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/AlbumBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/player/ui/AlbumBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto/16 :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const/4 v5, 0x0

    .line 271
    const/16 v3, 0x17

    const v4, 0x7f080024

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 272
    const/16 v3, 0x14

    const v4, 0x7f080025

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    .line 273
    .local v2, sub:Landroid/view/SubMenu;
    invoke-static {p0, v2}, Lcom/miui/player/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 274
    const/16 v3, 0xa

    const v4, 0x7f080002

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 276
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 277
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 278
    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 280
    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v5, "album"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 282
    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/player/helper/MediaInfo;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    const v3, 0x7f080020

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0
.end method

.method public onCreateOptionsMenuForParent(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 386
    const/16 v0, 0x8

    const v1, 0x7f0800d1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020031

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 389
    const/4 v0, 0x7

    const v1, 0x7f0800b2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 390
    const/4 v0, 0x6

    const v1, 0x7f08003d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020036

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 392
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-virtual {v1}, Lcom/miui/player/helper/AlbumArtTaskWrap;->batchCancel()V

    .line 169
    const v1, 0x7f0c002b

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 170
    .local v0, gv:Landroid/widget/GridView;
    iget-boolean v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-virtual {v1, v3}, Lcom/miui/player/model/AlbumBrowserAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 177
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/AlbumBrowserAdapter;->quitCache()V

    .line 179
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-static {v1, v2}, Lcom/miui/player/MusicUtils;->recycleCursorAdapter(Landroid/widget/SimpleCursorAdapter;Landroid/database/DataSetObserver;)V

    .line 180
    iput-object v3, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    .line 181
    invoke-super {p0}, Lcom/miui/player/ui/BaseActivity;->onDestroy()V

    .line 182
    return-void
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 333
    sparse-switch p1, :sswitch_data_0

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 335
    :sswitch_0
    if-eqz p2, :cond_0

    .line 336
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 337
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 338
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    .line 340
    .local v0, list:[J
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3, v4}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)V

    goto :goto_0

    .line 346
    .end local v0           #list:[J
    .end local v1           #uri:Landroid/net/Uri;
    :sswitch_1
    if-nez p2, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->finish()V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    if-eqz v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/AlbumBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/player/ui/AlbumBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_0

    .line 333
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, gv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v8, "artist"

    const-string v7, "album"

    .line 359
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.miui.music.PICK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v2, intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/track"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v4, "album"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v4, "artist"

    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v4, "num"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge p3, v4, :cond_0

    .line 366
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 367
    .local v3, oldPos:I
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v4, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 368
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v6, "album"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, albumName:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v6, "artist"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, artistName:Ljava/lang/String;
    const-string v4, "albumname"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v4, "artistname"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    iget-object v4, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v4, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 379
    .end local v0           #albumName:Ljava/lang/String;
    .end local v1           #artistName:Ljava/lang/String;
    .end local v3           #oldPos:I
    :cond_0
    invoke-static {p0, v2}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->pushActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 380
    return-void
.end method

.method public onOptionsItemSelectedForParent(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 402
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v2, v3

    .line 423
    :goto_0
    return v2

    .line 404
    :pswitch_0
    new-instance v1, Lcom/miui/player/helper/SleepModeManager;

    invoke-direct {v1}, Lcom/miui/player/helper/SleepModeManager;-><init>()V

    .line 405
    .local v1, sleepModeManager:Lcom/miui/player/helper/SleepModeManager;
    invoke-virtual {v1, p0}, Lcom/miui/player/helper/SleepModeManager;->showSelectTimeDialog(Landroid/app/Activity;)V

    move v2, v4

    .line 406
    goto :goto_0

    .line 408
    .end local v1           #sleepModeManager:Lcom/miui/player/helper/SleepModeManager;
    :pswitch_1
    invoke-static {p0}, Lcom/miui/player/helper/NetworkUtils;->isConnectivityActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    const v2, 0x7f0800d0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 410
    iget-object v2, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumArtTaskWrap:Lcom/miui/player/helper/AlbumArtTaskWrap;

    invoke-virtual {v2}, Lcom/miui/player/helper/AlbumArtTaskWrap;->execute()V

    :goto_1
    move v2, v4

    .line 414
    goto :goto_0

    .line 412
    :cond_0
    const v2, 0x7f080093

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 417
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/miui/player/ui/PreferencesActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    .local v0, settingIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 419
    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    invoke-super {p0}, Lcom/miui/player/ui/BaseActivity;->onPause()V

    .line 225
    return-void
.end method

.method public onPrepareOptionsMenuForParent(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-super {p0}, Lcom/miui/player/ui/BaseActivity;->onResume()V

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "com.miui.player.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 193
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/AlbumBrowserAdapter;->notifyDataSetChanged()V

    .line 196
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapterSent:Z

    .line 151
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 159
    const-string v0, "selectedalbum"

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "artist"

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "artistname"

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    return-void
.end method

.method public refreshAfterRecovery()V
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/AlbumBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/player/ui/AlbumBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 574
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseActivity;->refreshAfterRecovery()V

    .line 575
    return-void
.end method

.method public refreshBeforeRecovery()V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/miui/player/ui/AlbumBrowserActivity;->refreshHeader()V

    .line 580
    invoke-super {p0}, Lcom/miui/player/ui/BaseActivity;->refreshBeforeRecovery()V

    .line 581
    return-void
.end method

.method public scan()V
    .locals 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/AlbumBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/player/ui/AlbumBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 588
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseActivity;->scan()V

    .line 589
    return-void
.end method

.method public setCurrentBrowserCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 555
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 557
    return-void
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 561
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/GridView;

    invoke-virtual {p0}, Landroid/widget/GridView;->invalidateViews()V

    .line 562
    return-void
.end method
