.class public Lcom/miui/player/ui/PlaylistBrowserActivity;
.super Lcom/miui/player/ui/BaseListActivity;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/miui/player/MusicUtils$Defs;
.implements Lcom/miui/player/model/BrowserSource;
.implements Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;
.implements Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;


# static fields
.field private static final ADD_SONGS:I = 0x20

.field private static final DELETE_PLAYLIST:I = 0x1d

.field private static final RENAME_PLAYLIST:I = 0x1f

.field private static final SAVE_AS_PLAYLIST:I = 0x22

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapterSent:Z

.field private mCurrentPlaylistId:I

.field private mFavoriteChangedListener:Landroid/content/BroadcastReceiver;

.field private mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

.field private mPlaylistCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 78
    sput v0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 80
    sput v0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/miui/player/ui/BaseListActivity;-><init>()V

    .line 218
    new-instance v0, Lcom/miui/player/ui/PlaylistBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/PlaylistBrowserActivity$1;-><init>(Lcom/miui/player/ui/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mFavoriteChangedListener:Landroid/content/BroadcastReceiver;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/PlaylistBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCurrentPlaylistId:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/player/ui/PlaylistBrowserActivity;)Lcom/miui/player/model/PlaylistBrowserAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    return-object v0
.end method

.method private connectService(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .parameter "intent"
    .parameter "action"

    .prologue
    .line 147
    invoke-static {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getServiceFromParent(Landroid/app/Activity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v3

    .line 148
    .local v3, service:Lcom/miui/player/IMediaPlaybackService;
    if-nez v3, :cond_1

    .line 149
    invoke-static {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->finishParent(Landroid/app/Activity;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "playlist"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 155
    .local v0, id:J
    const-wide/16 v4, -0x2

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 156
    invoke-direct {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->playRecentlyAdded()V

    goto :goto_0

    .line 157
    :cond_2
    const-wide/16 v4, -0x5

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    .line 158
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->getAllSongs(Landroid/content/Context;)[J

    move-result-object v2

    .line 159
    .local v2, list:[J
    if-eqz v2, :cond_0

    .line 160
    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    goto :goto_0

    .line 163
    .end local v2           #list:[J
    :cond_3
    invoke-static {p0, v0, v1}, Lcom/miui/player/MusicUtils;->playPlaylist(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method private getRecentlyAddedIds()[J
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 498
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v13

    .line 501
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date_added>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v11, 0x3e8

    div-long/2addr v3, v11

    const-wide/32 v11, 0x127500

    sub-long/2addr v3, v11

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 503
    .local v10, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v10}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 507
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 509
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 510
    .local v8, len:I
    new-array v9, v8, [J

    .line 511
    .local v9, list:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 512
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 513
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v9, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 518
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    .line 522
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[J
    :goto_1
    return-object v0

    .line 516
    :catch_0
    move-exception v0

    .line 518
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 522
    :cond_1
    new-array v0, v13, [J

    goto :goto_1

    .line 518
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSelectedSongList()[J
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 361
    const/4 v3, 0x0

    .line 362
    .local v3, ret:[J
    iget v5, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCurrentPlaylistId:I

    int-to-long v0, v5

    .line 363
    .local v0, id:J
    const-wide/16 v5, -0x3

    cmp-long v5, v0, v5

    if-nez v5, :cond_2

    .line 364
    sget-object v4, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    .line 365
    .local v4, service:Lcom/miui/player/IMediaPlaybackService;
    if-eqz v4, :cond_0

    .line 367
    :try_start_0
    invoke-interface {v4}, Lcom/miui/player/IMediaPlaybackService;->getQueue()[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 381
    .end local v4           #service:Lcom/miui/player/IMediaPlaybackService;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 382
    const/4 v5, 0x0

    new-array v3, v5, [J

    .line 384
    :cond_1
    return-object v3

    .line 371
    :cond_2
    const-wide/16 v5, -0x4

    cmp-long v5, v0, v5

    if-nez v5, :cond_3

    .line 372
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->getFavoritePlaylistId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, plid:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 374
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {p0, v5, v6, v7}, Lcom/miui/player/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;JLjava/lang/String;)[J

    move-result-object v3

    goto :goto_0

    .line 376
    .end local v2           #plid:Ljava/lang/String;
    :cond_3
    const-wide/16 v5, -0x2

    cmp-long v5, v0, v5

    if-nez v5, :cond_4

    .line 377
    invoke-direct {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getRecentlyAddedIds()[J

    move-result-object v3

    goto :goto_0

    .line 378
    :cond_4
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    .line 379
    invoke-static {p0, v0, v1, v7}, Lcom/miui/player/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;JLjava/lang/String;)[J

    move-result-object v3

    goto :goto_0

    .line 368
    .restart local v4       #service:Lcom/miui/player/IMediaPlaybackService;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private playRecentlyAdded()V
    .locals 2

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getRecentlyAddedIds()[J

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    .line 495
    return-void
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 228
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setTitle(I)V

    .line 229
    return-void
.end method


# virtual methods
.method public createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 17
    .parameter "queryhandler"
    .parameter "filter"
    .parameter "async"

    .prologue
    .line 529
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .local v16, where:Ljava/lang/StringBuilder;
    const-string v11, " AND "

    .line 533
    .local v11, AND:Ljava/lang/String;
    const-string v3, "name != \'\' "

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const-string v3, " AND "

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string v3, "list_type = 0 "

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const/4 v9, 0x0

    .line 540
    .local v9, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 541
    const-string v3, " "

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 542
    .local v15, searchWords:[Ljava/lang/String;
    array-length v3, v15

    new-array v9, v3, [Ljava/lang/String;

    .line 543
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v13

    .line 544
    .local v13, col:Ljava/text/Collator;
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/text/Collator;->setStrength(I)V

    .line 545
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    array-length v3, v15

    if-ge v14, v3, :cond_0

    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x25

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v15, v14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x25

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v14

    .line 545
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 548
    :cond_0
    const/4 v14, 0x0

    :goto_1
    array-length v3, v15

    if-ge v14, v3, :cond_1

    .line 549
    const-string v3, " AND "

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const-string v3, "name LIKE ?"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 555
    .end local v13           #col:Ljava/text/Collator;
    .end local v14           #i:I
    .end local v15           #searchWords:[Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/miui/player/helper/FavoritePlaylist;->filter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 556
    .local v8, whereclause:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v8, v3}, Lcom/miui/player/provider/PlayerProviderUtils;->filterNowPlaying(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 558
    const-string v10, "sort_key"

    .line 559
    .local v10, sortOrder:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 560
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    sget-object v7, Lcom/miui/player/model/PlaylistBrowserAdapter;->PLAYLIST_COLUMNS:[Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const/4 v3, 0x0

    .line 567
    :goto_2
    return-object v3

    .line 565
    :cond_2
    sget-object v6, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    sget-object v7, Lcom/miui/player/model/PlaylistBrowserAdapter;->PLAYLIST_COLUMNS:[Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 567
    .local v12, c:Landroid/database/Cursor;
    sget-object v3, Lcom/miui/player/model/PlaylistBrowserAdapter;->PLAYLIST_COLUMNS:[Ljava/lang/String;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/player/model/PlaylistBrowserAdapter;->mergedCursor(Landroid/database/Cursor;Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_2
.end method

.method public getBrowserView()Landroid/view/View;
    .locals 1

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 577
    return-object p0
.end method

.method public getCurrentBrowserCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getListStyle()I
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    return-object v0
.end method

.method public inititalizeByCursor(Landroid/database/Cursor;Z)V
    .locals 4
    .parameter "cursor"
    .parameter "isCookie"

    .prologue
    const/4 v3, 0x1

    .line 593
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    if-nez v0, :cond_0

    .line 610
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/player/model/PlaylistBrowserAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 599
    sget v0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_1

    .line 600
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/miui/player/ui/PlaylistBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/miui/player/ui/PlaylistBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 601
    const/4 v0, -0x1

    sput v0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 603
    :cond_1
    invoke-static {p0, v3}, Lcom/miui/player/MusicUtils;->hideDatabaseError(Landroid/app/Activity;Z)V

    .line 606
    const v0, 0x7f0c0051

    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;ILjava/lang/CharSequence;I)V

    .line 609
    invoke-direct {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method public isCurrentBrowserCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

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
    .line 675
    const/4 v0, 0x1

    return v0
.end method

.method public isPlaylistEditMode()Z
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method public isRecoveryCompleteReceiver()Z
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x1

    return v0
.end method

.method public notifyConnection(Lcom/miui/player/IMediaPlaybackService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 635
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, action:Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->connectService(Landroid/content/Intent;Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 426
    packed-switch p1, :pswitch_data_0

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 429
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 430
    const-string v1, "audioid_list"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 431
    .local v0, audioList:[J
    if-eqz v0, :cond_0

    .line 432
    new-instance v1, Lcom/miui/player/ui/PlaylistBrowserActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity$2;-><init>(Lcom/miui/player/ui/PlaylistBrowserActivity;[J)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const-wide/16 v11, -0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 297
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 299
    .local v4, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    move v6, v10

    .line 357
    :goto_1
    return v6

    .line 301
    :sswitch_0
    iget-wide v6, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->playRecentlyAdded()V

    .line 324
    :goto_2
    iget-object v6, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    invoke-virtual {v6}, Lcom/miui/player/model/PlaylistBrowserAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 303
    :cond_1
    iget-wide v6, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v6, v6, v11

    if-nez v6, :cond_2

    .line 304
    const-string v6, "$$miui"

    const/4 v7, 0x3

    invoke-static {p0, v6, v7}, Lcom/miui/player/MusicUtils;->idForplaylist(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    int-to-long v1, v6

    .line 307
    .local v1, id:J
    invoke-static {p0, v1, v2}, Lcom/miui/player/MusicUtils;->playPlaylist(Landroid/content/Context;J)V

    goto :goto_2

    .line 308
    .end local v1           #id:J
    :cond_2
    iget-wide v6, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v8, -0x3

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 309
    sget-object v5, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    .line 311
    .local v5, service:Lcom/miui/player/IMediaPlaybackService;
    if-nez v5, :cond_3

    move v6, v10

    .line 312
    goto :goto_1

    .line 315
    :cond_3
    const-wide/16 v6, 0x0

    :try_start_0
    invoke-interface {v5, v6, v7}, Lcom/miui/player/IMediaPlaybackService;->seek(J)J

    .line 316
    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v10

    .line 317
    goto :goto_1

    .line 322
    .end local v5           #service:Lcom/miui/player/IMediaPlaybackService;
    :cond_4
    iget-wide v6, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {p0, v6, v7}, Lcom/miui/player/MusicUtils;->playPlaylist(Landroid/content/Context;J)V

    goto :goto_2

    .line 327
    :sswitch_1
    iget-wide v6, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v6, v6

    invoke-static {p0, v6}, Lcom/miui/player/MusicUtils;->deletePlaylist(Landroid/content/Context;I)V

    .line 328
    const v6, 0x7f08001b

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 329
    iget-object v6, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 330
    const v6, 0x7f080018

    invoke-virtual {p0, v6}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setTitle(I)V

    .line 332
    :cond_5
    iget-object v6, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    if-eqz v6, :cond_0

    .line 333
    iget-object v6, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    invoke-virtual {v6}, Lcom/miui/player/model/PlaylistBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v10}, Lcom/miui/player/ui/PlaylistBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_0

    .line 337
    :sswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 338
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "rename"

    iget-wide v7, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 339
    const-string v6, "playlist_type"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    new-instance v6, Lcom/miui/player/ui/RenamePlaylist;

    invoke-direct {v6, p0, v0}, Lcom/miui/player/ui/RenamePlaylist;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {v6}, Lcom/miui/player/ui/RenamePlaylist;->show()V

    goto/16 :goto_0

    .line 344
    .end local v0           #b:Landroid/os/Bundle;
    :sswitch_3
    iget v6, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCurrentPlaylistId:I

    int-to-long v6, v6

    cmp-long v6, v6, v11

    if-nez v6, :cond_6

    .line 345
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->getFavoritePlaylistId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCurrentPlaylistId:I

    .line 349
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.miui.music.pickersongs"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "playlist"

    iget v7, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCurrentPlaylistId:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    const/16 v6, 0x1b

    invoke-virtual {p0, v3, v6}, Lcom/miui/player/ui/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 354
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_4
    const/16 v6, 0x22

    invoke-static {p0, p0, v6}, Lcom/miui/player/ui/CreatorDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;I)Lcom/miui/player/ui/CreatorDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/player/ui/CreatorDialog;->show()V

    move v6, v10

    .line 355
    goto/16 :goto_1

    .line 318
    .restart local v5       #service:Lcom/miui/player/IMediaPlaybackService;
    :catch_0
    move-exception v6

    goto/16 :goto_2

    .line 299
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x1d -> :sswitch_1
        0x1f -> :sswitch_2
        0x20 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const v13, 0x7f080037

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 91
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-static {p0, p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->registerParentServiceConnection(Landroid/app/Activity;Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;)V

    .line 94
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/helper/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/helper/FolderProvider;

    move-result-object v9

    .line 95
    .local v9, folderProvider:Lcom/miui/player/helper/FolderProvider;
    invoke-virtual {v9}, Lcom/miui/player/helper/FolderProvider;->syncRefreshDir()V

    .line 97
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setContentView(I)V

    .line 98
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->updateGoHome(Landroid/app/Activity;)V

    .line 99
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v10

    .line 100
    .local v10, lv:Landroid/widget/ListView;
    invoke-virtual {v10, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 101
    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "num"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 104
    .local v7, count:I
    const v0, 0x7f0c0051

    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v7}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;ILjava/lang/CharSequence;I)V

    .line 107
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v11

    :goto_0
    invoke-virtual {p0, v0, v11}, Lcom/miui/player/ui/PlaylistBrowserActivity;->enableDatabaseError(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :goto_1
    return-void

    :cond_0
    move v0, v6

    .line 107
    goto :goto_0

    .line 111
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/model/PlaylistBrowserAdapter;

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_2
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    if-nez v0, :cond_2

    .line 116
    new-instance v0, Lcom/miui/player/model/PlaylistBrowserAdapter;

    const v2, 0x7f030025

    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    new-array v4, v11, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v6

    new-array v5, v11, [I

    const v1, 0x1020014

    aput v1, v5, v6

    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFastScroller()Landroid/widget/FastScroller;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/model/PlaylistBrowserAdapter;-><init>(Lcom/miui/player/model/BrowserSource;ILandroid/database/Cursor;[Ljava/lang/String;[ILandroid/widget/FastScroller;)V

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    .line 124
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    invoke-virtual {p0, v13}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setTitle(I)V

    .line 126
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/PlaylistBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-virtual {p0, v0, v12, v11}, Lcom/miui/player/ui/PlaylistBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 113
    .local v8, e:Ljava/lang/ClassCastException;
    iput-object v12, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    goto :goto_2

    .line 128
    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/player/model/PlaylistBrowserAdapter;->setBrowserSource(Lcom/miui/player/model/BrowserSource;)V

    .line 129
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/PlaylistBrowserAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 137
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v6}, Lcom/miui/player/ui/PlaylistBrowserActivity;->inititalizeByCursor(Landroid/database/Cursor;Z)V

    goto :goto_1

    .line 140
    :cond_3
    invoke-virtual {p0, v13}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setTitle(I)V

    .line 141
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/PlaylistBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-virtual {p0, v0, v12, v11}, Lcom/miui/player/ui/PlaylistBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const v8, 0x7f08009d

    const/16 v7, 0x20

    const/4 v6, 0x0

    .line 264
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 267
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-wide v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 293
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-wide v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v2, v2

    iput v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCurrentPlaylistId:I

    .line 274
    const/16 v2, 0x17

    const v3, 0x7f080024

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 277
    iget-wide v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v4, -0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 278
    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 282
    :cond_1
    iget-wide v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 283
    const/16 v2, 0x1d

    const v3, 0x7f080019

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 284
    const/16 v2, 0x1f

    const v3, 0x7f08001a

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 285
    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 288
    :cond_2
    const/16 v2, 0x22

    const v3, 0x7f080033

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 290
    iget-object v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 291
    iget-object v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v4, "name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0
.end method

.method public onCreateOptionsMenuForParent(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 233
    const/4 v0, 0x7

    const v1, 0x7f0800b2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 234
    const/4 v0, 0x6

    const v1, 0x7f08003d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020036

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 185
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sput v2, Lcom/miui/player/ui/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 187
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sput v2, Lcom/miui/player/ui/PlaylistBrowserActivity;->mLastListPosFine:I

    .line 193
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    iget-boolean v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapterSent:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    invoke-virtual {v2, v3}, Lcom/miui/player/model/PlaylistBrowserAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 199
    :cond_1
    invoke-virtual {p0, v3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    iput-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    .line 201
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->onDestroy()V

    .line 202
    return-void
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 389
    sparse-switch p1, :sswitch_data_0

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 391
    :sswitch_0
    if-eqz p2, :cond_0

    .line 392
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 393
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 394
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mCurrentPlaylistId:I

    .line 396
    new-instance p3, Landroid/content/Intent;

    .end local p3
    const-string v0, "com.miui.music.pickersongs"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .restart local p3
    const/16 v0, 0x1b

    invoke-virtual {p0, p3, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 403
    .end local v7           #uri:Landroid/net/Uri;
    :sswitch_1
    if-nez p2, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->finish()V

    goto :goto_0

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/PlaylistBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v4}, Lcom/miui/player/ui/PlaylistBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_0

    .line 411
    :sswitch_2
    if-eqz p2, :cond_0

    .line 412
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 413
    .restart local v7       #uri:Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getSelectedSongList()[J

    move-result-object v1

    .line 415
    .local v1, list:[J
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 416
    .local v6, plid:I
    int-to-long v2, v6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZZ)V

    .line 417
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/PlaylistBrowserAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 389
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x16 -> :sswitch_0
        0x22 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v6, "vnd.android.cursor.dir/track"

    const-string v5, "playlist"

    const-string v4, "com.miui.music.PICK"

    .line 461
    const/4 v1, 0x0

    .line 462
    .local v1, intent:Landroid/content/Intent;
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    .line 463
    const/16 v2, 0x16

    invoke-static {p0, p0, v2}, Lcom/miui/player/ui/CreatorDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;I)Lcom/miui/player/ui/CreatorDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/player/ui/CreatorDialog;->show()V

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 468
    .local v0, count:I
    const-wide/16 v2, -0x2

    cmp-long v2, p4, v2

    if-nez v2, :cond_2

    .line 469
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "com.miui.music.PICK"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .restart local v1       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v2, "playlist"

    const-string v2, "recentlyadded"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    :goto_1
    const-string v2, "num"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    if-eqz v1, :cond_0

    .line 488
    invoke-static {p0, v1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->pushActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 472
    :cond_2
    const-wide/16 v2, -0x4

    cmp-long v2, p4, v2

    if-nez v2, :cond_3

    .line 473
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "com.miui.music.PICK"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .restart local v1       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v2, "playlist"

    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->getFavoritePlaylistId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 476
    :cond_3
    const-wide/16 v2, -0x3

    cmp-long v2, p4, v2

    if-nez v2, :cond_4

    .line 477
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "com.miui.music.PICK"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .restart local v1       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const-string v2, "playlist"

    const-string v2, "nowplaying"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 481
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "com.miui.music.PICK"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .restart local v1       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v2, "playlist"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onOptionsItemSelectedForParent(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 247
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 259
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 249
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/miui/player/ui/PreferencesActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .local v0, settingIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 251
    goto :goto_0

    .line 254
    .end local v0           #settingIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Lcom/miui/player/helper/SleepModeManager;

    invoke-direct {v1}, Lcom/miui/player/helper/SleepModeManager;-><init>()V

    .line 255
    .local v1, sleepModeManager:Lcom/miui/player/helper/SleepModeManager;
    invoke-virtual {v1, p0}, Lcom/miui/player/helper/SleepModeManager;->showSelectTimeDialog(Landroid/app/Activity;)V

    move v2, v3

    .line 256
    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mFavoriteChangedListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->onPause()V

    .line 216
    return-void
.end method

.method public onPrepareOptionsMenuForParent(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->onResume()V

    .line 207
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->recreate(Landroid/content/Context;)V

    .line 208
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.music.FAVORITE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, f:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mFavoriteChangedListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    .line 178
    .local v0, a:Lcom/miui/player/model/PlaylistBrowserAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mAdapterSent:Z

    .line 179
    return-object v0
.end method

.method public refreshAfterRecovery()V
    .locals 3

    .prologue
    .line 646
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/PlaylistBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/player/ui/PlaylistBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 649
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->refreshAfterRecovery()V

    .line 650
    return-void
.end method

.method public refreshBeforeRecovery()V
    .locals 3

    .prologue
    .line 654
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/PlaylistBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/player/ui/PlaylistBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 657
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->refreshBeforeRecovery()V

    .line 658
    return-void
.end method

.method public scan()V
    .locals 3

    .prologue
    .line 662
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/PlaylistBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/player/ui/PlaylistBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 665
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->scan()V

    .line 666
    return-void
.end method

.method public setCurrentBrowserCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 625
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-static {v0, p1}, Lcom/miui/player/MusicUtils;->updateAlphabetScroller(Landroid/widget/ListView;Landroid/widget/ListAdapter;)V

    .line 173
    return-void
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 630
    return-void
.end method
