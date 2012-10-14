.class public Lcom/miui/player/ui/ArtistAlbumBrowserActivity;
.super Lcom/miui/player/ui/BaseListActivity;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/miui/player/MusicUtils$Defs;
.implements Lcom/miui/player/model/BrowserSource;
.implements Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;


# static fields
.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

.field private mAdapterSent:Z

.field private mArtistCursor:Landroid/database/Cursor;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistId:Ljava/lang/String;

.field private mCurrentArtistName:Ljava/lang/String;

.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mIsQuerying:Z

.field mIsUnknownAlbum:Z

.field mIsUnknownArtist:Z

.field private mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 72
    sput v0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 74
    sput v0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/player/ui/BaseListActivity;-><init>()V

    .line 192
    new-instance v0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$1;-><init>(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 513
    new-instance v0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$2;-><init>(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->refreshHeader()V

    return-void
.end method

.method private refreshHeader()V
    .locals 4

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "num"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 185
    .local v0, count:I
    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mIsQuerying:Z

    if-nez v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->getCount()I

    move-result v0

    .line 188
    :cond_0
    const v1, 0x7f0c0051

    const v2, 0x7f080012

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;ILjava/lang/CharSequence;I)V

    .line 190
    return-void
.end method


# virtual methods
.method public createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 22
    .parameter "queryhandler"
    .parameter "filter"
    .parameter "async"

    .prologue
    .line 390
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mIsQuerying:Z

    .line 391
    const-string v15, " AND "

    .line 392
    .local v15, AND:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v21, where:Ljava/lang/StringBuilder;
    const-string v2, "artist != \'\'"

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-static/range {p0 .. p0}, Lcom/miui/player/MusicUtils;->getValidArtistIdSetAsStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 395
    .local v16, artistSet:Ljava/lang/String;
    const-string v2, " AND "

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const/4 v8, 0x0

    .line 399
    .local v8, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 400
    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 401
    .local v20, searchWords:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move v2, v0

    new-array v8, v2, [Ljava/lang/String;

    .line 402
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v17

    .line 403
    .local v17, col:Ljava/text/Collator;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 404
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move-object/from16 v0, v20

    array-length v0, v0

    move v2, v0

    move/from16 v0, v18

    move v1, v2

    if-ge v0, v1, :cond_0

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v20, v18

    invoke-static {v3}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v18

    .line 404
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 407
    :cond_0
    const/16 v18, 0x0

    :goto_1
    move-object/from16 v0, v20

    array-length v0, v0

    move v2, v0

    move/from16 v0, v18

    move v1, v2

    if-ge v0, v1, :cond_1

    .line 408
    const-string v2, " AND "

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v2, "artist_key LIKE ?"

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 413
    .end local v17           #col:Ljava/text/Collator;
    .end local v18           #i:I
    .end local v20           #searchWords:[Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 414
    .local v7, whereclause:Ljava/lang/String;
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const-string v3, "artist"

    aput-object v3, v6, v2

    const/4 v2, 0x2

    const-string v3, "artist_sort_key"

    aput-object v3, v6, v2

    .line 419
    .local v6, cols:[Ljava/lang/String;
    const-string v4, "artist_sort_key"

    .line 420
    .local v4, orderBy:Ljava/lang/String;
    const/16 v19, 0x0

    .line 421
    .local v19, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 422
    const/4 v3, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v2, p1

    move-object v9, v4

    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :goto_2
    return-object v19

    .line 425
    :cond_2
    sget-object v10, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v9, p0

    move-object v11, v6

    move-object v12, v7

    move-object v13, v8

    move-object v14, v4

    invoke-static/range {v9 .. v14}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 427
    move-object/from16 v0, v19

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/miui/player/model/SectionCursor;->wrap(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto :goto_2
.end method

.method public getBrowserView()Landroid/view/View;
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 441
    return-object p0
.end method

.method public getCurrentBrowserCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getListStyle()I
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return-object v0
.end method

.method public inititalizeByCursor(Landroid/database/Cursor;Z)V
    .locals 4
    .parameter "c"
    .parameter "cookie"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 207
    iput-boolean v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mIsQuerying:Z

    .line 208
    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    if-nez v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 213
    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->enableDatabaseError(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    sget v1, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    if-ltz v1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 220
    .local v0, lv:Landroid/widget/ListView;
    sget v1, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 221
    const/4 v1, -0x1

    sput v1, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    goto :goto_0

    .end local v0           #lv:Landroid/widget/ListView;
    :cond_2
    move v1, v2

    .line 213
    goto :goto_1
.end method

.method public isCurrentBrowserCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

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
    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public isPlaylistEditMode()Z
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public isRecoveryCompleteReceiver()Z
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x1

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 299
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 352
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 302
    :sswitch_0
    iget-object v6, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/miui/player/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v6

    move-object v3, v6

    .line 306
    .local v3, list:[J
    :goto_1
    invoke-static {p0, v3, v8}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    move v6, v10

    .line 307
    goto :goto_0

    .line 302
    .end local v3           #list:[J
    :cond_0
    iget-object v6, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v6

    move-object v3, v6

    goto :goto_1

    .line 311
    :sswitch_1
    iget-object v6, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/miui/player/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v6

    move-object v3, v6

    .line 314
    .restart local v3       #list:[J
    :goto_2
    invoke-static {p0, v3}, Lcom/miui/player/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    move v6, v10

    .line 315
    goto :goto_0

    .line 311
    .end local v3           #list:[J
    :cond_1
    iget-object v6, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v6

    move-object v3, v6

    goto :goto_2

    .line 319
    :sswitch_2
    const/16 v6, 0x16

    invoke-static {p0, p0, v6}, Lcom/miui/player/ui/CreatorDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;I)Lcom/miui/player/ui/CreatorDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/player/ui/CreatorDialog;->show()V

    move v6, v10

    .line 320
    goto :goto_0

    .line 324
    :sswitch_3
    iget-object v6, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/miui/player/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v6

    move-object v3, v6

    .line 327
    .restart local v3       #list:[J
    :goto_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "playlist"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 328
    .local v4, playlist:J
    invoke-static {p0, v3, v4, v5, v10}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)V

    move v6, v10

    .line 329
    goto :goto_0

    .line 324
    .end local v3           #list:[J
    .end local v4           #playlist:J
    :cond_2
    iget-object v6, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v6

    move-object v3, v6

    goto :goto_3

    .line 335
    :sswitch_4
    iget-object v6, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 336
    iget-object v6, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/miui/player/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v3

    .line 337
    .restart local v3       #list:[J
    const v6, 0x7f080006

    invoke-virtual {p0, v6}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, f:Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, desc:Ljava/lang/String;
    :goto_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "description"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v6, "items"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 347
    new-instance v6, Lcom/miui/player/ui/DeleteItems;

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-direct {v6, p0, v0, v7, v8}, Lcom/miui/player/ui/DeleteItems;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/MusicUtils$OnDialogCallback;I)V

    invoke-virtual {v6}, Lcom/miui/player/ui/DeleteItems;->show()V

    move v6, v10

    .line 348
    goto/16 :goto_0

    .line 340
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    .end local v3           #list:[J
    :cond_3
    iget-object v6, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v3

    .line 341
    .restart local v3       #list:[J
    const v6, 0x7f080007

    invoke-virtual {p0, v6}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    .restart local v2       #f:Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #desc:Ljava/lang/String;
    goto :goto_4

    .line 299
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
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    const-string v0, "selectedalbum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 82
    const-string v0, "selectedalbumname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 83
    const-string v0, "selectedartist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 84
    const-string v0, "selectedartistname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 87
    :cond_0
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->setContentView(I)V

    .line 88
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->updateGoHome(Landroid/app/Activity;)V

    .line 89
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 90
    .local v9, lv:Landroid/widget/ListView;
    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 91
    invoke-virtual {v9, v11}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 92
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/miui/player/ui/view/AlphabetScroller;

    .line 93
    .local v10, scroller:Lcom/miui/player/ui/view/AlphabetScroller;
    invoke-virtual {v10, v1}, Lcom/miui/player/ui/view/AlphabetScroller;->setVisibility(I)V

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    const v2, 0x7f03000d

    new-array v4, v1, [Ljava/lang/String;

    new-array v5, v1, [I

    invoke-virtual {v9}, Landroid/widget/ListView;->getFastScroller()Landroid/widget/FastScroller;

    move-result-object v6

    const-string v7, "artist"

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;-><init>(Lcom/miui/player/model/BrowserSource;ILandroid/database/Cursor;[Ljava/lang/String;[ILandroid/widget/FastScroller;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    .line 110
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v11}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 122
    :goto_1
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 123
    return-void

    .line 97
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 98
    .local v8, e:Ljava/lang/ClassCastException;
    iput-object v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    goto :goto_0

    .line 113
    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->setActivity(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)V

    .line 114
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 116
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->inititalizeByCursor(Landroid/database/Cursor;Z)V

    goto :goto_1

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v11}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const/4 v5, 0x0

    .line 281
    const/16 v3, 0x17

    const v4, 0x7f080024

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 282
    const/16 v3, 0x14

    const v4, 0x7f080025

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    .line 283
    .local v2, sub:Landroid/view/SubMenu;
    invoke-static {p0, v2}, Lcom/miui/player/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 284
    const/16 v3, 0xa

    const v4, 0x7f080002

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 286
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 287
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 289
    iget-object v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 291
    iget-object v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v5, "artist"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 294
    iget-object v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/miui/player/helper/MediaInfo;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 295
    return-void
.end method

.method public onCreateOptionsMenuForParent(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 251
    const/4 v0, 0x7

    const v1, 0x7f0800b2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 252
    const/4 v0, 0x6

    const v1, 0x7f08003d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020036

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 152
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sput v2, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 154
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sput v2, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    .line 160
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    iget-boolean v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapterSent:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    if-eqz v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    invoke-virtual {v2, v4}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 166
    :cond_1
    invoke-virtual {p0, v4}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    iget-object v3, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-static {v2, v3}, Lcom/miui/player/MusicUtils;->recycleCursorAdapter(Landroid/widget/SimpleCursorAdapter;Landroid/database/DataSetObserver;)V

    .line 168
    iput-object v4, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    .line 169
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->onDestroy()V

    .line 170
    return-void
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 357
    sparse-switch p1, :sswitch_data_0

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 359
    :sswitch_0
    if-eqz p2, :cond_0

    .line 360
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 361
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, list:[J
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 364
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/miui/player/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 370
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3, v4}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)V

    goto :goto_0

    .line 366
    :cond_2
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/miui/player/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    goto :goto_1

    .line 376
    .end local v0           #list:[J
    .end local v1           #uri:Landroid/net/Uri;
    :sswitch_1
    if-nez p2, :cond_3

    .line 377
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->finish()V

    goto :goto_0

    .line 379
    :cond_3
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    if-eqz v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_0

    .line 357
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v8, "artistname"

    const-string v7, "artist"

    .line 227
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.miui.music.PICK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, intent:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/track"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v4, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v4, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 231
    iget-object v4, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 233
    iget-object v4, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v6, "artist"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 235
    const-string v4, "artist"

    iget-object v4, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v4, "artistname"

    iget-object v4, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v4, "num"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 240
    .local v3, obj:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;

    if-eqz v4, :cond_0

    .line 241
    move-object v0, v3

    check-cast v0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;

    move-object v1, v0

    .line 242
    .local v1, holder:Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;
    const-string v4, "artistname"

    iget-object v4, v1, Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;->artistNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    .end local v1           #holder:Lcom/miui/player/model/ArtistAlbumBrowserAdapter$ViewHolder;
    :cond_0
    invoke-static {p0, v2}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->pushActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 246
    return-void
.end method

.method public onOptionsItemSelectedForParent(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 276
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 267
    :pswitch_0
    new-instance v1, Lcom/miui/player/helper/SleepModeManager;

    invoke-direct {v1}, Lcom/miui/player/helper/SleepModeManager;-><init>()V

    .line 268
    .local v1, sleepModeManager:Lcom/miui/player/helper/SleepModeManager;
    invoke-virtual {v1, p0}, Lcom/miui/player/helper/SleepModeManager;->showSelectTimeDialog(Landroid/app/Activity;)V

    move v2, v3

    .line 269
    goto :goto_0

    .line 271
    .end local v1           #sleepModeManager:Lcom/miui/player/helper/SleepModeManager;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/miui/player/ui/PreferencesActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v0, settingIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 273
    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->onPause()V

    .line 203
    return-void
.end method

.method public onPrepareOptionsMenuForParent(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->onResume()V

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "com.miui.player.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 181
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapterSent:Z

    .line 134
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 142
    const-string v0, "selectedalbum"

    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "selectedalbumname"

    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "selectedartist"

    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "selectedartistname"

    iget-object v1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 147
    return-void
.end method

.method public refreshAfterRecovery()V
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 483
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->getSongCountForArtist()V

    .line 485
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->refreshAfterRecovery()V

    .line 486
    return-void
.end method

.method public refreshBeforeRecovery()V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->refreshHeader()V

    .line 491
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->refreshBeforeRecovery()V

    .line 492
    return-void
.end method

.method public scan()V
    .locals 3

    .prologue
    .line 496
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 498
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->getSongCountForArtist()V

    .line 500
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->scan()V

    .line 501
    return-void
.end method

.method public setCurrentBrowserCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 466
    iput-object p1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 467
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-static {v0, p1}, Lcom/miui/player/MusicUtils;->updateAlphabetScroller(Landroid/widget/ListView;Landroid/widget/ListAdapter;)V

    .line 129
    return-void
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 472
    return-void
.end method
