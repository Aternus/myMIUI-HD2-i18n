.class public Lcom/miui/player/model/TrackBrowserHelper;
.super Ljava/lang/Object;
.source "TrackBrowserHelper.java"

# interfaces
.implements Lcom/miui/player/MusicUtils$Defs;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/TrackBrowserHelper$TrackDropListener;
    }
.end annotation


# instance fields
.field private mBatchSelectionController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

.field private final mBrowserSource:Lcom/miui/player/model/BrowserSource;

.field private final mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;

.field private mCurrentTrackName:Ljava/lang/String;

.field private mDeleteOneRow:Z

.field private final mIsFolderPlaylist:Z

.field private mSelectedId:J

.field private mSelectedIdToLocal:J

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Lcom/miui/player/model/BrowserSource;Lcom/miui/player/MusicUtils$OnDialogCallback;JZ)V
    .locals 3
    .parameter "source"
    .parameter "callback"
    .parameter "selectedId"
    .parameter "isFolderPlaylist"

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput v2, p0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedPosition:I

    .line 413
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    .line 414
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedIdToLocal:J

    .line 415
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/player/model/TrackBrowserHelper;->mCurrentTrackName:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    .line 62
    iput-object p2, p0, Lcom/miui/player/model/TrackBrowserHelper;->mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;

    .line 63
    iput-wide p3, p0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    .line 64
    iput-boolean p5, p0, Lcom/miui/player/model/TrackBrowserHelper;->mIsFolderPlaylist:Z

    .line 65
    iput-boolean v2, p0, Lcom/miui/player/model/TrackBrowserHelper;->mDeleteOneRow:Z

    .line 66
    return-void
.end method

.method public static addToFavorite(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "audioId"

    .prologue
    .line 681
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->getFavoritePlaylistId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, favoritePlaylist:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, p1, p2, v1, v2}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;JJ)V

    .line 683
    return-void
.end method

.method public static getLocalMemberId(Landroid/content/Context;J)I
    .locals 12
    .parameter "context"
    .parameter "audioId"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 657
    const/4 v8, -0x1

    .line 659
    .local v8, memberId:I
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->getFavoritePlaylistId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 661
    .local v7, favoritePlaylist:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 662
    .local v0, res:Landroid/content/ContentResolver;
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 664
    .local v1, uri:Landroid/net/Uri;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v11

    .line 668
    .local v2, projection:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "audio_id = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, where:Ljava/lang/String;
    move-object v5, v4

    .line 669
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 670
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 671
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 672
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 674
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 677
    :cond_1
    return v8
.end method

.method public static getOnlineMemberId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 12
    .parameter "context"
    .parameter "providerId"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 631
    const/4 v8, -0x1

    .line 633
    .local v8, memberId:I
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->getFavoritePlaylistId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 635
    .local v7, favoritePlaylist:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 636
    .local v0, res:Landroid/content/ContentResolver;
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 638
    .local v1, uri:Landroid/net/Uri;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v11

    .line 642
    .local v2, projection:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "online_id = \'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "\'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, where:Ljava/lang/String;
    move-object v5, v4

    .line 645
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 646
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 647
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 648
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 650
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_1
    return v8
.end method

.method public static handlOnlineClick(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 619
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->getFavoritePlaylistId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, favoritePlaylist:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {p0, p1, p2, v3}, Lcom/miui/player/provider/PlayerProviderUtils;->getProviderId(Landroid/content/Context;JLjava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, providerId:Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/miui/player/helper/FavoritePlaylist;->onlineContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    invoke-static {p0, v2}, Lcom/miui/player/model/TrackBrowserHelper;->getOnlineMemberId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 624
    .local v1, memberId:I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4, v2}, Lcom/miui/player/MusicUtils;->removeFromPlaylist(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    .line 628
    .end local v1           #memberId:I
    :goto_0
    return-void

    .line 626
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/player/model/TrackBrowserHelper;->addToFavorite(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public static handleLocalClick(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "id"

    .prologue
    .line 607
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->getFavoritePlaylistId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, favoritePlaylist:Ljava/lang/String;
    invoke-static {p0, p1, p2}, Lcom/miui/player/helper/FavoritePlaylist;->localContains(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    invoke-static {p0, p1, p2}, Lcom/miui/player/model/TrackBrowserHelper;->getLocalMemberId(Landroid/content/Context;J)I

    move-result v6

    .line 611
    .local v6, memberId:I
    int-to-long v2, v6

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->removeFromPlaylist(Landroid/content/Context;Ljava/lang/String;JJ)V

    .line 616
    .end local v6           #memberId:I
    :goto_0
    return-void

    .line 613
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/player/model/TrackBrowserHelper;->addToFavorite(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method private moveItem(Ljava/lang/String;Z)V
    .locals 21
    .parameter "playlist"
    .parameter "up"

    .prologue
    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/miui/player/model/BrowserSource;->getCurrentBrowserCursor()Landroid/database/Cursor;

    move-result-object v13

    .line 357
    .local v13, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/miui/player/model/BrowserSource;->getBrowserView()Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ListView;

    .line 359
    .local v14, listView:Landroid/widget/ListView;
    if-nez v14, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 364
    .local v10, curcount:I
    invoke-virtual {v14}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v11

    .line 365
    .local v11, curpos:I
    if-eqz p2, :cond_2

    const/16 v19, 0x1

    move v0, v11

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    :cond_2
    if-nez p2, :cond_3

    const/16 v19, 0x1

    sub-int v19, v10, v19

    move v0, v11

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 369
    :cond_3
    move-object v0, v13

    instance-of v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 370
    move-object v0, v13

    check-cast v0, Lcom/miui/player/model/TrackNowPlayingCursor;

    move-object v8, v0

    .line 371
    .local v8, c:Lcom/miui/player/model/TrackNowPlayingCursor;
    if-eqz p2, :cond_5

    const/16 v19, 0x1

    sub-int v19, v11, v19

    :goto_1
    move-object v0, v8

    move v1, v11

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/model/TrackNowPlayingCursor;->moveItem(II)V

    .line 372
    invoke-virtual {v14}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 373
    .local v6, adapter:Landroid/widget/Adapter;
    move-object v0, v6

    instance-of v0, v0, Lcom/miui/player/model/TrackBrowserAdapter;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 374
    check-cast v6, Lcom/miui/player/model/TrackBrowserAdapter;

    .end local v6           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v6}, Lcom/miui/player/model/TrackBrowserAdapter;->notifyDataSetChanged()V

    .line 376
    :cond_4
    invoke-virtual {v14}, Landroid/widget/ListView;->invalidateViews()V

    .line 377
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/player/model/TrackBrowserHelper;->mDeleteOneRow:Z

    .line 378
    if-eqz p2, :cond_6

    .line 379
    const/16 v19, 0x1

    sub-int v19, v11, v19

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 371
    :cond_5
    add-int/lit8 v19, v11, 0x1

    goto :goto_1

    .line 381
    :cond_6
    add-int/lit8 v19, v11, 0x1

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 384
    .end local v8           #c:Lcom/miui/player/model/TrackNowPlayingCursor;
    :cond_7
    const-string v19, "play_order"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 386
    .local v9, colidx:I
    invoke-interface {v13, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 387
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 388
    .local v12, currentplayidx:I
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v7

    .line 389
    .local v7, baseUri:Landroid/net/Uri;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 390
    .local v16, values:Landroid/content/ContentValues;
    const-string v17, "_id=?"

    .line 391
    .local v17, where:Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 392
    .local v18, wherearg:[Ljava/lang/String;
    const-string v5, "play_order"

    .line 393
    .local v5, PLAYER_ORDER:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 394
    .local v15, res:Landroid/content/ContentResolver;
    if-eqz p2, :cond_8

    .line 395
    const-string v19, "play_order"

    const/16 v20, 0x1

    sub-int v20, v12, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v13

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    .line 397
    move-object v0, v15

    move-object v1, v7

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 398
    invoke-interface {v13}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 405
    :goto_2
    const-string v19, "play_order"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v13

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    .line 407
    move-object v0, v15

    move-object v1, v7

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 400
    :cond_8
    const-string v19, "play_order"

    add-int/lit8 v20, v12, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v13

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    .line 402
    move-object v0, v15

    move-object v1, v7

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 403
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method private removeItem(Ljava/lang/String;)V
    .locals 12
    .parameter "playlist"

    .prologue
    const/4 v11, 0x0

    .line 307
    iget-object v9, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v9}, Lcom/miui/player/model/BrowserSource;->getCurrentBrowserCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 308
    .local v3, cursor:Landroid/database/Cursor;
    iget-object v9, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v9}, Lcom/miui/player/model/BrowserSource;->getBrowserView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 310
    .local v6, listView:Landroid/widget/ListView;
    if-nez v6, :cond_1

    .line 353
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 314
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local p0
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 315
    .local v1, curcount:I
    invoke-virtual {v6}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    .line 316
    .local v2, curpos:I
    if-eqz v1, :cond_0

    if-ltz v2, :cond_0

    .line 320
    const-string v9, "nowplaying"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 326
    :try_start_0
    sget-object v9, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/miui/player/IMediaPlaybackService;->getQueuePosition()I

    move-result v9

    if-eq v2, v9, :cond_2

    .line 327
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/miui/player/model/TrackBrowserHelper;->mDeleteOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v8

    .line 332
    .local v8, v:Landroid/view/View;
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 333
    check-cast v3, Lcom/miui/player/model/TrackNowPlayingCursor;

    .end local v3           #cursor:Landroid/database/Cursor;
    invoke-virtual {v3, v2}, Lcom/miui/player/model/TrackNowPlayingCursor;->removeItem(I)Z

    .line 334
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 335
    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 338
    .end local v8           #v:Landroid/view/View;
    .restart local v3       #cursor:Landroid/database/Cursor;
    :cond_3
    const-string v9, "_id"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 340
    .local v0, colidx:I
    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 341
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 342
    .local v4, id:J
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v7

    .line 343
    .local v7, uri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v9}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v11, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 345
    add-int/lit8 v1, v1, -0x1

    .line 346
    if-nez v1, :cond_4

    .line 347
    iget-object v9, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_0

    .line 348
    iget-object p0, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 350
    .restart local p0
    :cond_4
    if-ge v2, v1, :cond_5

    move v9, v2

    :goto_2
    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    :cond_5
    move v9, v1

    goto :goto_2

    .line 329
    .end local v0           #colidx:I
    .end local v4           #id:J
    .end local v7           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v9

    goto :goto_1
.end method


# virtual methods
.method public dropTrack(II)V
    .locals 16
    .parameter "from"
    .parameter "to"

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object v14, v0

    invoke-interface {v14}, Lcom/miui/player/model/BrowserSource;->getCurrentBrowserCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 74
    .local v7, mTrackCursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    instance-of v14, v7, Lcom/miui/player/model/TrackNowPlayingCursor;

    if-eqz v14, :cond_2

    .line 80
    move-object v0, v7

    check-cast v0, Lcom/miui/player/model/TrackNowPlayingCursor;

    move-object v4, v0

    .line 81
    .local v4, c:Lcom/miui/player/model/TrackNowPlayingCursor;
    move-object v0, v4

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/model/TrackNowPlayingCursor;->moveItem(II)V

    .line 83
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/player/model/TrackBrowserHelper;->mDeleteOneRow:Z

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object v14, v0

    invoke-interface {v14}, Lcom/miui/player/model/BrowserSource;->updateViews()V

    goto :goto_0

    .line 87
    .end local v4           #c:Lcom/miui/player/model/TrackNowPlayingCursor;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object v14, v0

    invoke-interface {v14}, Lcom/miui/player/model/BrowserSource;->getPlayList()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 89
    .local v3, baseUri:Landroid/net/Uri;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v11, values:Landroid/content/ContentValues;
    const-string v12, "_id=?"

    .line 91
    .local v12, where:Ljava/lang/String;
    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/String;

    .line 92
    .local v13, wherearg:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object v14, v0

    invoke-interface {v14}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 94
    .local v8, res:Landroid/content/ContentResolver;
    const-string v14, "play_order"

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 96
    .local v5, colidx:I
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    .line 98
    move-object v0, v7

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 99
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 100
    .local v9, toidx:J
    move-object v0, v7

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 101
    const-string v14, "play_order"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 103
    invoke-virtual {v8, v3, v11, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    add-int/lit8 v6, p1, 0x1

    .local v6, i:I
    :goto_1
    move v0, v6

    move/from16 v1, p2

    if-gt v0, v1, :cond_0

    .line 105
    invoke-interface {v7, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 106
    const-string v14, "play_order"

    const/4 v15, 0x1

    sub-int v15, v6, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 108
    invoke-virtual {v8, v3, v11, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 110
    .end local v6           #i:I
    .end local v9           #toidx:J
    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    .line 112
    move-object v0, v7

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 113
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 114
    .restart local v9       #toidx:J
    move-object v0, v7

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 115
    const-string v14, "play_order"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 117
    invoke-virtual {v8, v3, v11, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    const/4 v14, 0x1

    sub-int v6, p1, v14

    .restart local v6       #i:I
    :goto_2
    move v0, v6

    move/from16 v1, p2

    if-lt v0, v1, :cond_0

    .line 119
    invoke-interface {v7, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 120
    const-string v14, "play_order"

    add-int/lit8 v15, v6, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 122
    invoke-virtual {v8, v3, v11, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    add-int/lit8 v6, v6, -0x1

    goto :goto_2
.end method

.method public getSelectedId()J
    .locals 2

    .prologue
    .line 420
    iget-wide v0, p0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    return-wide v0
.end method

.method public makeDropListener()Landroid/widget/SortableListView$OnOrderChangedListener;
    .locals 1

    .prologue
    .line 686
    new-instance v0, Lcom/miui/player/model/TrackBrowserHelper$TrackDropListener;

    invoke-direct {v0, p0}, Lcom/miui/player/model/TrackBrowserHelper$TrackDropListener;-><init>(Lcom/miui/player/model/TrackBrowserHelper;)V

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 24
    .parameter "item"

    .prologue
    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 500
    .local v5, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/miui/player/model/BrowserSource;->getCurrentBrowserCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 501
    .local v9, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 502
    .local v8, context:Landroid/content/Context;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 603
    :pswitch_0
    const/16 v19, 0x0

    :goto_0
    return v19

    .line 504
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 505
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    move-wide/from16 v19, v0

    move-object v0, v5

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/miui/player/model/TrackBrowserHelper;->handlOnlineClick(Landroid/content/Context;J)V

    .line 509
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/miui/player/model/BrowserSource;->updateViews()V

    .line 511
    new-instance v13, Landroid/content/Intent;

    const-string v19, "com.miui.music.FAVORITE_CHANGED"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .local v13, i:Landroid/content/Intent;
    const-string v19, "who"

    const-string v20, "tracklist_browser"

    move-object v0, v13

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    invoke-virtual {v5, v13}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 515
    const/16 v19, 0x1

    goto :goto_0

    .line 507
    .end local v13           #i:Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    move-wide/from16 v19, v0

    move-object v0, v5

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/miui/player/model/TrackBrowserHelper;->handleLocalClick(Landroid/content/Context;J)V

    goto :goto_1

    .line 519
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedPosition:I

    move/from16 v17, v0

    .line 520
    .local v17, position:I
    move-object v0, v5

    move-object v1, v9

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 521
    const/16 v19, 0x1

    goto :goto_0

    .line 525
    .end local v17           #position:I
    :pswitch_3
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object v14, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    move-wide/from16 v20, v0

    aput-wide v20, v14, v19

    .line 528
    .local v14, list:[J
    invoke-static {v5, v14}, Lcom/miui/player/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 529
    const/16 v19, 0x1

    goto :goto_0

    .line 533
    .end local v14           #list:[J
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;

    move-object/from16 v19, v0

    const/16 v20, 0x16

    move-object v0, v5

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/miui/player/ui/CreatorDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;I)Lcom/miui/player/ui/CreatorDialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/miui/player/ui/CreatorDialog;->show()V

    .line 534
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 538
    :pswitch_5
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object v14, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    move-wide/from16 v20, v0

    aput-wide v20, v14, v19

    .line 541
    .restart local v14       #list:[J
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "playlist"

    const-wide/16 v21, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 542
    .local v15, playlist:J
    const/16 v19, 0x1

    move-object v0, v5

    move-object v1, v14

    move-wide v2, v15

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)V

    .line 543
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 548
    .end local v14           #list:[J
    .end local v15           #playlist:J
    :pswitch_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedIdToLocal:J

    move-wide/from16 v19, v0

    move-object v0, v5

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/miui/player/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    .line 549
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 552
    :pswitch_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    move-wide/from16 v19, v0

    move-object v0, v8

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/miui/player/MusicUtils;->sendByChooser(Landroid/content/Context;J)V

    .line 553
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 556
    :pswitch_8
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object v14, v0

    .line 557
    .restart local v14       #list:[J
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedIdToLocal:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    aput-wide v20, v14, v19

    .line 558
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 559
    .local v7, b:Landroid/os/Bundle;
    const v19, 0x7f080008

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 560
    .local v12, f:Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mCurrentTrackName:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 561
    .local v10, desc:Ljava/lang/String;
    const-string v19, "description"

    move-object v0, v7

    move-object/from16 v1, v19

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v19, "items"

    move-object v0, v7

    move-object/from16 v1, v19

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 563
    new-instance v19, Lcom/miui/player/ui/DeleteItems;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;

    move-object/from16 v20, v0

    const/16 v21, 0xa

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/player/ui/DeleteItems;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/MusicUtils$OnDialogCallback;I)V

    invoke-virtual/range {v19 .. v19}, Lcom/miui/player/ui/DeleteItems;->show()V

    .line 564
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 568
    .end local v7           #b:Landroid/os/Bundle;
    .end local v10           #desc:Ljava/lang/String;
    .end local v12           #f:Ljava/lang/String;
    .end local v14           #list:[J
    :pswitch_9
    sget-object v19, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/miui/player/model/BrowserSource;->getPlayList()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/player/model/TrackBrowserHelper;->removeTrack(Lcom/miui/player/IMediaPlaybackService;ILjava/lang/String;)Z

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/miui/player/model/BrowserSource;->updateViews()V

    .line 570
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 572
    :pswitch_a
    new-instance v18, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    invoke-direct/range {v18 .. v18}, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;-><init>()V

    .line 573
    .local v18, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedPosition:I

    move/from16 v19, v0

    move-object v0, v9

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 574
    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    .line 577
    :try_start_0
    const-string v19, "online_id"

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object v0, v9

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_2
    const-string v19, "title"

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object v0, v9

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    .line 583
    const-string v19, "artist"

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object v0, v9

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    .line 584
    const-string v19, "album"

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object v0, v9

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Album:Ljava/lang/String;

    .line 585
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/miui/player/downloader/DownloadProvider;->queryRunning(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 586
    const v19, 0x7f0800e3

    const/16 v20, 0x0

    move-object v0, v5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 599
    :goto_3
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 578
    :catch_0
    move-exception v19

    move-object/from16 v11, v19

    .line 580
    .local v11, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    move-wide/from16 v19, v0

    const/16 v21, 0x0

    move-object v0, v8

    move-wide/from16 v1, v19

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/provider/PlayerProviderUtils;->getProviderId(Landroid/content/Context;JLjava/lang/Long;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    goto :goto_2

    .line 587
    .end local v11           #e:Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    invoke-static/range {v19 .. v23}, Lcom/miui/player/provider/PlayerProviderUtils;->getDownloadedAudioId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_2

    .line 588
    const v19, 0x7f0800e2

    const/16 v20, 0x0

    move-object v0, v5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 590
    :cond_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/miui/player/helper/MusicMetaManager;->getMP3AppointName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 591
    .local v6, appointName:Ljava/lang/String;
    const-string v19, "music/mp3"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 592
    const v19, 0x7f0800e2

    const/16 v20, 0x0

    move-object v0, v5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 593
    :cond_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 594
    :cond_4
    const v19, 0x7f0800df

    const/16 v20, 0x0

    move-object v0, v5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 596
    :cond_5
    const/16 v19, 0x0

    move-object v0, v5

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/OnlinePlayHelper;->download(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 23
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBatchSelectionController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBatchSelectionController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->isBatchSelectMode()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 430
    .local v7, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/miui/player/model/BrowserSource;->getBrowserView()Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    .line 431
    .local v13, lv:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/miui/player/model/BrowserSource;->getCurrentBrowserCursor()Landroid/database/Cursor;

    move-result-object v8

    .line 432
    .local v8, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/miui/player/model/BrowserSource;->getPlayList()Ljava/lang/String;

    move-result-object v15

    .line 433
    .local v15, playlist:Ljava/lang/String;
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v14, v0

    .line 434
    .local v14, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {v13}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v10

    .line 435
    .local v10, headerCount:I
    move-object v0, v14

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v19, v0

    move/from16 v0, v19

    move v1, v10

    if-lt v0, v1, :cond_0

    .line 439
    move-object v0, v14

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v19, v0

    sub-int v19, v19, v10

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedPosition:I

    .line 442
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedPosition:I

    move/from16 v19, v0

    move-object v0, v8

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 444
    :try_start_0
    const-string v19, "audio_id"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 445
    .local v11, id_idx:I
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v11           #id_idx:I
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedIdToLocal:J

    .line 452
    const/4 v12, 0x0

    .line 453
    .local v12, isLocal:Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v19

    if-nez v19, :cond_5

    .line 454
    const/4 v12, 0x1

    .line 463
    :cond_2
    :goto_2
    const/16 v19, 0x0

    const/16 v20, 0x17

    const/16 v21, 0x0

    const v22, 0x7f080024

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 466
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    move-wide/from16 v19, v0

    const/16 v21, 0x0

    move-object v0, v7

    move-wide/from16 v1, v19

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/helper/FavoritePlaylist;->contains(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    const v19, 0x7f080027

    move/from16 v16, v19

    .line 468
    .local v16, strId:I
    :goto_3
    const/16 v19, 0x0

    const/16 v20, 0x18

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v16

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 471
    const/16 v19, 0x0

    const/16 v20, 0x14

    const/16 v21, 0x0

    const v22, 0x7f080025

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v17

    .line 472
    .local v17, sub:Landroid/view/SubMenu;
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/miui/player/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 475
    if-eqz v12, :cond_3

    .line 476
    const/16 v19, 0x0

    const/16 v20, 0x9

    const/16 v21, 0x0

    const v22, 0x7f080021

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 480
    :cond_3
    if-eqz v15, :cond_4

    const-string v19, "recentlyadded"

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mIsFolderPlaylist:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 481
    const/16 v19, 0x0

    const/16 v20, 0x1a

    const/16 v21, 0x0

    const v22, 0x7f080036

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 485
    :cond_4
    if-eqz v12, :cond_8

    .line 486
    const/16 v19, 0x0

    const/16 v20, 0xb

    const/16 v21, 0x0

    const v22, 0x7f080001

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 487
    const/16 v19, 0x0

    const/16 v20, 0xa

    const/16 v21, 0x0

    const v22, 0x7f080003

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 492
    :goto_4
    const-string v19, "title"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object v0, v8

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/model/TrackBrowserHelper;->mCurrentTrackName:Ljava/lang/String;

    .line 493
    const-string v19, "artist"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object v0, v8

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 494
    .local v6, ar:Ljava/lang/String;
    const-string v19, "album"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object v0, v8

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 495
    .local v5, al:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mCurrentTrackName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v7

    move-object/from16 v1, v19

    move-object v2, v6

    move-object v3, v5

    move v4, v12

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/player/MusicUtils;->makeContextMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    goto/16 :goto_0

    .line 446
    .end local v5           #al:Ljava/lang/String;
    .end local v6           #ar:Ljava/lang/String;
    .end local v12           #isLocal:Z
    .end local v16           #strId:I
    .end local v17           #sub:Landroid/view/SubMenu;
    :catch_0
    move-exception v19

    move-object/from16 v9, v19

    .line 447
    .local v9, ex:Ljava/lang/IllegalArgumentException;
    move-object v0, v14

    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedId:J

    goto/16 :goto_1

    .line 455
    .end local v9           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v12       #isLocal:Z
    :cond_5
    if-eqz v8, :cond_2

    .line 456
    const-string v19, "title"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object v0, v8

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 457
    .local v18, tr:Ljava/lang/String;
    const-string v19, "artist"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object v0, v8

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 458
    .restart local v6       #ar:Ljava/lang/String;
    const-wide/16 v19, 0x0

    move-object v0, v7

    move-object/from16 v1, v18

    move-object v2, v6

    move-wide/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/player/provider/PlayerProviderUtils;->getDownloadedAudioId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedIdToLocal:J

    .line 459
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mSelectedIdToLocal:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_6

    const/16 v19, 0x1

    move/from16 v12, v19

    :goto_5
    goto/16 :goto_2

    :cond_6
    const/16 v19, 0x0

    move/from16 v12, v19

    goto :goto_5

    .line 466
    .end local v6           #ar:Ljava/lang/String;
    .end local v18           #tr:Ljava/lang/String;
    :cond_7
    const v19, 0x7f080026

    move/from16 v16, v19

    goto/16 :goto_3

    .line 489
    .restart local v16       #strId:I
    .restart local v17       #sub:Landroid/view/SubMenu;
    :cond_8
    const/16 v19, 0x0

    const/16 v20, 0xc

    const/16 v21, 0x0

    const v22, 0x7f080004

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_4
.end method

.method public onReceiveNowPlaying(Lcom/miui/player/IMediaPlaybackService;Landroid/widget/SimpleCursorAdapter;Landroid/content/Intent;)V
    .locals 6
    .parameter "service"
    .parameter "adapter"
    .parameter "intent"

    .prologue
    .line 224
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.miui.player.queuechanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    iget-boolean v2, p0, Lcom/miui/player/model/TrackBrowserHelper;->mDeleteOneRow:Z

    if-eqz v2, :cond_1

    .line 230
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/player/model/TrackBrowserHelper;->mDeleteOneRow:Z

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    new-instance v1, Lcom/miui/player/model/TrackNowPlayingCursor;

    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v2}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/miui/player/model/TrackBrowserAdapter;->NOWPLAYING_CURSOR_COLS:[Ljava/lang/String;

    sget-object v4, Lcom/miui/player/model/TrackBrowserAdapter;->NOWPLAYING_CURSOR_COLS:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/miui/player/model/TrackNowPlayingCursor;-><init>(Landroid/content/Context;Lcom/miui/player/IMediaPlaybackService;[Ljava/lang/String;I)V

    .line 237
    .local v1, c:Landroid/database/Cursor;
    if-eqz p2, :cond_0

    .line 238
    invoke-virtual {p2, v1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public playTrackInPosition(Lcom/miui/player/IMediaPlaybackService;I)V
    .locals 11
    .parameter "service"
    .parameter "position"

    .prologue
    .line 244
    iget-object v9, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v9}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 245
    .local v0, context:Landroid/content/Context;
    iget-object v9, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v9}, Lcom/miui/player/model/BrowserSource;->getBrowserView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 246
    .local v6, listView:Landroid/widget/ListView;
    if-nez v6, :cond_1

    .line 304
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 250
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    iget-object v9, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v9}, Lcom/miui/player/model/BrowserSource;->getCurrentBrowserCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 252
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-eqz v9, :cond_0

    .line 256
    const/4 v5, 0x0

    .line 257
    .local v5, isPause:Z
    const/4 v4, 0x0

    .line 260
    .local v4, isContinue:Z
    if-eqz p1, :cond_2

    .line 261
    :try_start_0
    invoke-interface {v1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 262
    invoke-static {v1}, Lcom/miui/player/MusicUtils;->getAudioIdColumnIndex(Landroid/database/Cursor;)I

    move-result v3

    .line 264
    .local v3, idIdx:I
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 265
    .local v7, songId:J
    invoke-interface {p1}, Lcom/miui/player/IMediaPlaybackService;->getAudioId()J

    move-result-wide v9

    cmp-long v9, v7, v9

    if-nez v9, :cond_2

    .line 266
    invoke-interface {p1}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 267
    invoke-interface {p1}, Lcom/miui/player/IMediaPlaybackService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    const/4 v5, 0x1

    .line 278
    .end local v3           #idIdx:I
    .end local v7           #songId:J
    :cond_2
    :goto_1
    if-eqz v5, :cond_4

    .line 279
    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 270
    .restart local v3       #idIdx:I
    .restart local v7       #songId:J
    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 274
    .end local v3           #idIdx:I
    .end local v7           #songId:J
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 275
    .local v2, e:Landroid/os/RemoteException;
    const/4 v5, 0x1

    goto :goto_1

    .line 286
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_4
    instance-of v9, v1, Lcom/miui/player/model/TrackNowPlayingCursor;

    if-eqz v9, :cond_6

    .line 287
    if-eqz p1, :cond_0

    .line 289
    if-eqz v4, :cond_5

    .line 290
    :try_start_1
    invoke-interface {p1}, Lcom/miui/player/IMediaPlaybackService;->play()V

    .line 295
    :goto_2
    iget-object v9, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v9}, Lcom/miui/player/model/BrowserSource;->getListStyle()I

    move-result v9

    if-nez v9, :cond_0

    .line 296
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->startDrawerChild(Landroid/app/Activity;Z)Z

    goto :goto_0

    .line 298
    :catch_1
    move-exception v9

    goto :goto_0

    .line 292
    .restart local v0       #context:Landroid/content/Context;
    :cond_5
    invoke-interface {p1, p2}, Lcom/miui/player/IMediaPlaybackService;->setQueuePosition(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 302
    :cond_6
    invoke-static {v0, v1, p2}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_0
.end method

.method public removeTrack(Lcom/miui/player/IMediaPlaybackService;ILjava/lang/String;)Z
    .locals 12
    .parameter "service"
    .parameter "which"
    .parameter "playlist"

    .prologue
    const/4 v11, 0x1

    .line 187
    iget-object v1, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v1}, Lcom/miui/player/model/BrowserSource;->getBrowserView()Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    .line 188
    .local v10, listView:Landroid/widget/ListView;
    if-nez v10, :cond_0

    .line 189
    const/4 v1, 0x0

    .line 219
    :goto_0
    return v1

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v1}, Lcom/miui/player/model/BrowserSource;->getCurrentBrowserCursor()Landroid/database/Cursor;

    move-result-object v8

    .line 193
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/miui/player/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 194
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/model/TrackBrowserHelper;->mDeleteOneRow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v1}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 202
    .local v0, context:Landroid/content/Context;
    instance-of v1, v8, Lcom/miui/player/model/TrackNowPlayingCursor;

    if-eqz v1, :cond_2

    .line 203
    check-cast v8, Lcom/miui/player/model/TrackNowPlayingCursor;

    .end local v8           #cursor:Landroid/database/Cursor;
    invoke-virtual {v8, p2}, Lcom/miui/player/model/TrackNowPlayingCursor;->removeItem(I)Z

    .line 218
    :goto_2
    iget-object v1, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v1}, Lcom/miui/player/model/BrowserSource;->updateViews()V

    move v1, v11

    .line 219
    goto :goto_0

    .line 196
    .end local v0           #context:Landroid/content/Context;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 198
    .local v9, e:Landroid/os/RemoteException;
    iput-boolean v11, p0, Lcom/miui/player/model/TrackBrowserHelper;->mDeleteOneRow:Z

    goto :goto_1

    .line 205
    .end local v9           #e:Landroid/os/RemoteException;
    .restart local v0       #context:Landroid/content/Context;
    :cond_2
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 208
    .local v7, colidx:I
    const-string v1, "audio_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 211
    .local v6, colAudioIdx:I
    invoke-interface {v8, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 212
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 213
    .local v2, id:J
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .local v4, audioId:J
    move-object v1, p3

    .line 215
    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->removeFromPlaylist(Landroid/content/Context;Ljava/lang/String;JJ)V

    goto :goto_2
.end method

.method public removeTrackBatch(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 21
    .parameter
    .parameter "playlist"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, rmSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/16 v18, 0x0

    .line 131
    .local v18, ret:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object v3, v0

    invoke-interface {v3}, Lcom/miui/player/model/BrowserSource;->getCurrentBrowserCursor()Landroid/database/Cursor;

    move-result-object v11

    .line 132
    .local v11, cursor:Landroid/database/Cursor;
    instance-of v3, v11, Lcom/miui/player/model/TrackNowPlayingCursor;

    if-eqz v3, :cond_2

    .line 133
    move-object v0, v11

    check-cast v0, Lcom/miui/player/model/TrackNowPlayingCursor;

    move-object v9, v0

    .line 134
    .local v9, c:Lcom/miui/player/model/TrackNowPlayingCursor;
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v16

    .line 135
    .local v16, len:I
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 137
    .local v19, rmArr:[I
    const-string v3, "_id"

    invoke-virtual {v9, v3}, Lcom/miui/player/model/TrackNowPlayingCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 138
    .local v14, idx:I
    const/4 v12, 0x0

    .line 139
    .local v12, i:I
    invoke-virtual {v9}, Lcom/miui/player/model/TrackNowPlayingCursor;->moveToFirst()Z

    move v13, v12

    .end local v12           #i:I
    .local v13, i:I
    :goto_0
    move v0, v13

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    invoke-virtual {v9}, Lcom/miui/player/model/TrackNowPlayingCursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    invoke-virtual {v9, v14}, Lcom/miui/player/model/TrackNowPlayingCursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 141
    add-int/lit8 v12, v13, 0x1

    .end local v13           #i:I
    .restart local v12       #i:I
    invoke-virtual {v9}, Lcom/miui/player/model/TrackNowPlayingCursor;->getPosition()I

    move-result v3

    aput v3, v19, v13

    .line 139
    :goto_1
    invoke-virtual {v9}, Lcom/miui/player/model/TrackNowPlayingCursor;->moveToNext()Z

    move v13, v12

    .end local v12           #i:I
    .restart local v13       #i:I
    goto :goto_0

    .line 144
    :cond_0
    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/player/model/TrackNowPlayingCursor;->removeItem([I)Z

    move-result v18

    .line 181
    .end local v9           #c:Lcom/miui/player/model/TrackNowPlayingCursor;
    .end local v13           #i:I
    .end local v14           #idx:I
    .end local v16           #len:I
    .end local v19           #rmArr:[I
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object v3, v0

    invoke-interface {v3}, Lcom/miui/player/model/BrowserSource;->updateViews()V

    .line 182
    return v18

    .line 146
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/miui/player/provider/PlayerProviderUtils;->concatIdsAsSet(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v20

    .line 147
    .local v20, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object v3, v0

    invoke-interface {v3}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 148
    .local v10, context:Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 149
    .local v2, res:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 151
    .local v8, audioIds:[J
    const/16 v17, 0x0

    .line 152
    .local v17, notify:Z
    invoke-static/range {p2 .. p2}, Lcom/miui/player/helper/FavoritePlaylist;->isFavoritePlaylistId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 153
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "audio_id"

    aput-object v6, v4, v3

    .line 155
    .local v4, proj:[Ljava/lang/String;
    sget-object v3, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 156
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 157
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 158
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v8, v3, [J

    .line 159
    const/4 v12, 0x0

    .line 160
    .restart local v12       #i:I
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 161
    add-int/lit8 v13, v12, 0x1

    .end local v12           #i:I
    .restart local v13       #i:I
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v8, v12

    .line 160
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move v12, v13

    .end local v13           #i:I
    .restart local v12       #i:I
    goto :goto_3

    .line 165
    :cond_3
    const/4 v12, 0x0

    :goto_4
    array-length v3, v8

    if-ge v12, v3, :cond_4

    .line 166
    aget-wide v6, v8, v12

    invoke-static {v10, v6, v7}, Lcom/miui/player/helper/FavoritePlaylist;->remove(Landroid/content/Context;J)V

    .line 165
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 168
    :cond_4
    array-length v3, v8

    if-lez v3, :cond_7

    const/4 v3, 0x1

    move/from16 v17, v3

    .line 170
    .end local v12           #i:I
    :cond_5
    :goto_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 174
    .end local v4           #proj:[Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    :cond_6
    sget-object v3, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 175
    if-eqz v17, :cond_1

    .line 176
    new-instance v15, Landroid/content/Intent;

    const-string v3, "com.miui.music.FAVORITE_CHANGED"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v15, intent:Landroid/content/Intent;
    const-string v3, "who"

    const-string v4, "tracklist_browser"

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackBrowserHelper;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    move-object v3, v0

    invoke-interface {v3}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 168
    .end local v15           #intent:Landroid/content/Intent;
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v12       #i:I
    :cond_7
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_5

    .end local v2           #res:Landroid/content/ContentResolver;
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v8           #audioIds:[J
    .end local v10           #context:Landroid/content/Context;
    .end local v12           #i:I
    .end local v17           #notify:Z
    .end local v20           #s:Ljava/lang/String;
    .local v9, c:Lcom/miui/player/model/TrackNowPlayingCursor;
    .restart local v13       #i:I
    .restart local v14       #idx:I
    .restart local v16       #len:I
    .restart local v19       #rmArr:[I
    :cond_8
    move v12, v13

    .end local v13           #i:I
    .restart local v12       #i:I
    goto/16 :goto_1
.end method

.method public setBatchSelectionController(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/miui/player/model/TrackBrowserHelper;->mBatchSelectionController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    .line 70
    return-void
.end method
