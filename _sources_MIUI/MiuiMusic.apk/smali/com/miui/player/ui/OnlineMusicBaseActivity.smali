.class public abstract Lcom/miui/player/ui/OnlineMusicBaseActivity;
.super Lcom/miui/player/ui/BaseListActivity;
.source "OnlineMusicBaseActivity.java"

# interfaces
.implements Lcom/miui/player/MusicUtils$Defs;
.implements Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;
.implements Lcom/miui/player/helper/SongListCache$SongListWaiter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadClickListener;,
        Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;,
        Lcom/miui/player/ui/OnlineMusicBaseActivity$OnRetryClickListener;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

.field private final mAdapterRefreshReceiver:Landroid/content/BroadcastReceiver;

.field protected mBatchDownloadClickListener:Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadClickListener;

.field private mOnButtonBarClickListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

.field protected mOnlineStatusBarController:Lcom/miui/player/helper/controller/OnlineStatusBarController;

.field private mSelectedPosition:I

.field private mShuffleAllHeader:Landroid/view/View;

.field private mSongItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/player/ui/BaseListActivity;-><init>()V

    .line 437
    new-instance v0, Lcom/miui/player/ui/OnlineMusicBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity$2;-><init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 455
    new-instance v0, Lcom/miui/player/ui/OnlineMusicBaseActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity$3;-><init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapterRefreshReceiver:Landroid/content/BroadcastReceiver;

    .line 503
    new-instance v0, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity$4;-><init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mOnButtonBarClickListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

    .line 612
    new-instance v0, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadClickListener;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadClickListener;-><init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mBatchDownloadClickListener:Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/ui/OnlineMusicBaseActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mSongItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/player/ui/OnlineMusicBaseActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mSongItemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/player/ui/OnlineMusicBaseActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/ui/OnlineMusicBaseActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private correctPosition(I)I
    .locals 1
    .parameter "rawPos"

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private makeHeaderView(II)Landroid/view/View;
    .locals 7
    .parameter "iconId"
    .parameter "textId"

    .prologue
    .line 445
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 446
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030037

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 447
    .local v3, ret:Landroid/view/View;
    const v4, 0x7f0c00b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 448
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 449
    const v4, 0x7f0c00b6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 450
    .local v2, name:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 452
    return-object v3
.end method


# virtual methods
.method protected getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getContentViewId()I
.end method

.method protected getMusicInfoSongList()Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineMusicAdapter;->getMusicInfoSongList()Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    move-result-object v0

    return-object v0
.end method

.method protected getOnlineAdapter()Lcom/miui/player/model/OnlineMusicAdapter;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    return-object v0
.end method

.method public getResultView()Landroid/view/View;
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnableScanReceiver()Z
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x1

    return v0
.end method

.method public isRecoveryCompleteReceiver()Z
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mList:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/EditableListView;

    .line 165
    .local v0, editList:Landroid/widget/EditableListView;
    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 22
    .parameter "item"

    .prologue
    .line 243
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 326
    :pswitch_0
    const/16 v18, 0x0

    .end local p1
    :goto_0
    return v18

    .line 245
    .restart local p1
    :pswitch_1
    const/16 v18, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/miui/player/ui/CreatorDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;I)Lcom/miui/player/ui/CreatorDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/miui/player/ui/CreatorDialog;->show()V

    .line 246
    const/16 v18, 0x1

    goto :goto_0

    .line 250
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/player/model/OnlineMusicAdapter;->getSongItemArr()Ljava/util/ArrayList;

    move-result-object v17

    .line 251
    .local v17, songList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    move-object v8, v0

    .line 252
    .local v8, itemArr:[Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mSelectedPosition:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;[Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;IZ)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/player/model/OnlineMusicAdapter;->notifyDataSetChanged()V

    .line 255
    const/16 v18, 0x1

    goto :goto_0

    .line 259
    .end local v8           #itemArr:[Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    .end local v17           #songList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mSelectedPosition:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/miui/player/model/OnlineMusicAdapter;->getSongItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    move-result-object v16

    .line 260
    .local v16, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "playlist"

    const-wide/16 v20, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 261
    .local v12, playlist:J
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide v2, v12

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/MusicUtils;->addOnlineToPlaylist(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;J)V

    .line 262
    const/16 v18, 0x1

    goto :goto_0

    .line 266
    .end local v12           #playlist:J
    .end local v16           #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/player/model/OnlineMusicAdapter;->getSongItemArr()Ljava/util/ArrayList;

    move-result-object v17

    .line 267
    .restart local v17       #songList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    move-object v8, v0

    .line 268
    .restart local v8       #itemArr:[Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    aput-object p1, v8, v18

    .line 269
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/miui/player/provider/PlayerProviderUtils;->updateNowplayingList(Landroid/content/Context;[Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Z)[J

    move-result-object v9

    .line 270
    .local v9, list:[J
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-static {v0, v1}, Lcom/miui/player/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 271
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 275
    .end local v8           #itemArr:[Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    .end local v9           #list:[J
    .end local v17           #songList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    .restart local p1
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mSelectedPosition:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/miui/player/model/OnlineMusicAdapter;->getSongItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    move-result-object v16

    .line 276
    .restart local v16       #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/miui/player/downloader/DownloadProvider;->queryRunning(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 277
    const v18, 0x7f0800e3

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 290
    :goto_1
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 278
    :cond_0
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-wide/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/player/provider/PlayerProviderUtils;->getDownloadedAudioId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_1

    .line 279
    const v18, 0x7f0800e2

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 281
    :cond_1
    new-instance v18, Lcom/miui/player/ui/OnlineMusicBaseActivity$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miui/player/ui/OnlineMusicBaseActivity$1;-><init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/OnlinePlayHelper;->download(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 294
    .end local v16           #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mSelectedPosition:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/miui/player/model/OnlineMusicAdapter;->getSongItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    move-result-object v16

    .line 295
    .restart local v16       #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/miui/player/helper/MusicMetaManager;->getMP3AppointName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, appointName:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 297
    const-string v18, "music/mp3"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 298
    .local v11, path:Ljava/lang/String;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 299
    .local v6, b:Landroid/os/Bundle;
    const-string v18, "description"

    move-object v0, v6

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v18, "path"

    move-object v0, v6

    move-object/from16 v1, v18

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v18, "online_id"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v18, Lcom/miui/player/ui/DeleteItems;

    const/16 v19, 0xa

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v3, p0

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/player/ui/DeleteItems;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/MusicUtils$OnDialogCallback;I)V

    invoke-virtual/range {v18 .. v18}, Lcom/miui/player/ui/DeleteItems;->show()V

    .line 304
    .end local v6           #b:Landroid/os/Bundle;
    .end local v11           #path:Ljava/lang/String;
    :cond_2
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 308
    .end local v5           #appointName:Ljava/lang/String;
    .end local v16           #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mSelectedPosition:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/miui/player/model/OnlineMusicAdapter;->getSongItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    move-result-object v16

    .line 309
    .restart local v16       #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    move-object v15, v0

    .line 310
    .local v15, providerId:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/miui/player/helper/FavoritePlaylist;->getFavoritePlaylistId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 311
    .local v14, playlistId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/miui/player/helper/FavoritePlaylist;->onlineContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 312
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/miui/player/model/TrackBrowserHelper;->getOnlineMemberId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    .line 313
    .local v10, memberId:I
    move v0, v10

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide/from16 v2, v18

    move-object v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/player/MusicUtils;->removeFromPlaylist(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    .line 317
    .end local v10           #memberId:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/miui/player/model/OnlineMusicAdapter;->notifyDataSetChanged()V

    .line 318
    new-instance v7, Landroid/content/Intent;

    const-string v18, "com.miui.music.FAVORITE_CHANGED"

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v7, i:Landroid/content/Intent;
    const-string v18, "who"

    const-string v19, "tracklist_browser"

    move-object v0, v7

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 315
    .end local v7           #i:Landroid/content/Intent;
    :cond_3
    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/MusicUtils;->addOnlineToPlaylist(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;J)V

    goto :goto_2

    .line 243
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getContentViewId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->setContentView(I)V

    .line 76
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->updateGoHome(Landroid/app/Activity;)V

    .line 78
    new-instance v4, Lcom/miui/player/helper/controller/OnlineStatusBarController;

    const v5, 0x7f0c007d

    new-instance v6, Lcom/miui/player/ui/OnlineMusicBaseActivity$OnRetryClickListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/miui/player/ui/OnlineMusicBaseActivity$OnRetryClickListener;-><init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;Lcom/miui/player/ui/OnlineMusicBaseActivity$1;)V

    invoke-direct {v4, p0, v5, v6}, Lcom/miui/player/helper/controller/OnlineStatusBarController;-><init>(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)V

    iput-object v4, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mOnlineStatusBarController:Lcom/miui/player/helper/controller/OnlineStatusBarController;

    .line 80
    iget-object v4, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mOnlineStatusBarController:Lcom/miui/player/helper/controller/OnlineStatusBarController;

    const v5, 0x7f080085

    const v6, 0x7f080086

    invoke-virtual {v4, v5, v6}, Lcom/miui/player/helper/controller/OnlineStatusBarController;->setLoadingHintTextId(II)V

    .line 83
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/player/model/OnlineMusicAdapter;

    iput-object v4, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    .line 84
    iget-object v4, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    if-nez v4, :cond_0

    .line 85
    new-instance v4, Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-direct {v4, p0}, Lcom/miui/player/model/OnlineMusicAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    .line 88
    :cond_0
    const v4, 0x7f020057

    const v5, 0x7f080005

    invoke-direct {p0, v4, v5}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->makeHeaderView(II)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mShuffleAllHeader:Landroid/view/View;

    .line 90
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 91
    .local v2, lv:Landroid/widget/ListView;
    iget-object v4, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mShuffleAllHeader:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getResultView()Landroid/view/View;

    move-result-object v3

    .line 93
    .local v3, resultView:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 96
    :cond_1
    iget-object v4, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->prepareForLoading(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->startSongListLoadingAsync()V

    .line 103
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mList:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/EditableListView;

    .line 104
    .local v0, editList:Landroid/widget/EditableListView;
    invoke-static {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getCommitView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/player/ui/view/BatchSelectionTrackView;

    .line 105
    .local v1, editableCommitBar:Lcom/miui/player/ui/view/BatchSelectionTrackView;
    iget-object v4, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mOnButtonBarClickListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

    invoke-virtual {v1, v4}, Lcom/miui/player/ui/view/BatchSelectionTrackView;->setOnButtonBarClickListener(Landroid/widget/EditableListActionBar$OnButtonBarClickListener;)V

    .line 106
    const v4, 0x7f080089

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/player/ui/view/BatchSelectionTrackView;->setOperationText(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 108
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 13
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    .line 203
    iget-object v9, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v9}, Lcom/miui/player/model/OnlineMusicAdapter;->isValid()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v9

    if-nez v9, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v4, v0

    .line 208
    .local v4, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v9, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v9}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->correctPosition(I)I

    move-result v5

    .line 209
    .local v5, selectedPosition:I
    if-ltz v5, :cond_0

    .line 212
    iput v5, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mSelectedPosition:I

    .line 213
    iget-object v9, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    iget v10, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mSelectedPosition:I

    invoke-virtual {v9, v10}, Lcom/miui/player/model/OnlineMusicAdapter;->getSongItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    move-result-object v6

    .line 214
    .local v6, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    iget-object v9, v6, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    iget-object v10, v6, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    const-wide/16 v11, 0x0

    invoke-static {p0, v9, v10, v11, v12}, Lcom/miui/player/provider/PlayerProviderUtils;->getDownloadedAudioId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    const/4 v9, 0x1

    move v3, v9

    .line 215
    .local v3, isLocal:Z
    :goto_1
    iget-object v1, v6, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    .line 218
    .local v1, currentSongName:Ljava/lang/String;
    const/4 v9, 0x0

    const/16 v10, 0x17

    const/4 v11, 0x0

    const v12, 0x7f080024

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 221
    iget-object v9, v6, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/miui/player/helper/FavoritePlaylist;->onlineContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const v9, 0x7f080027

    move v7, v9

    .line 223
    .local v7, strId:I
    :goto_2
    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    invoke-interface {p1, v9, v10, v11, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 226
    const/4 v9, 0x0

    const/16 v10, 0x14

    const/4 v11, 0x0

    const v12, 0x7f080025

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v8

    .line 227
    .local v8, sub:Landroid/view/SubMenu;
    invoke-static {p0, v8}, Lcom/miui/player/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 229
    if-eqz v3, :cond_4

    .line 231
    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    const v12, 0x7f080003

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 237
    :goto_3
    iget-object v9, v6, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    iget-object v10, v6, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Album:Ljava/lang/String;

    invoke-static {p0, v1, v9, v10, v3}, Lcom/miui/player/MusicUtils;->makeContextMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v2

    .line 238
    .local v2, header:Landroid/view/View;
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 214
    .end local v1           #currentSongName:Ljava/lang/String;
    .end local v2           #header:Landroid/view/View;
    .end local v3           #isLocal:Z
    .end local v7           #strId:I
    .end local v8           #sub:Landroid/view/SubMenu;
    :cond_2
    const/4 v9, 0x0

    move v3, v9

    goto :goto_1

    .line 221
    .restart local v1       #currentSongName:Ljava/lang/String;
    .restart local v3       #isLocal:Z
    :cond_3
    const v9, 0x7f080026

    move v7, v9

    goto :goto_2

    .line 234
    .restart local v7       #strId:I
    .restart local v8       #sub:Landroid/view/SubMenu;
    :cond_4
    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    const v12, 0x7f080004

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method public onCreateOptionsMenuForParent(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 179
    const/4 v0, 0x7

    const v1, 0x7f0800b2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 180
    const/4 v0, 0x6

    const v1, 0x7f08003d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020036

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 122
    .local v1, lv:Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mShuffleAllHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 124
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    :cond_0
    iput-object v3, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mShuffleAllHeader:Landroid/view/View;

    .line 127
    invoke-static {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getCommitView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/view/BatchSelectionTrackView;

    .line 128
    .local v0, editableCommitBar:Lcom/miui/player/ui/view/BatchSelectionTrackView;
    invoke-virtual {v0, v3}, Lcom/miui/player/ui/view/BatchSelectionTrackView;->setOnButtonBarClickListener(Landroid/widget/EditableListActionBar$OnButtonBarClickListener;)V

    .line 129
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->onDestroy()V

    .line 130
    return-void
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    .line 331
    sparse-switch p1, :sswitch_data_0

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 333
    :sswitch_0
    if-eqz p2, :cond_0

    .line 334
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 335
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 336
    iget-object v2, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    iget v3, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mSelectedPosition:I

    invoke-virtual {v2, v3}, Lcom/miui/player/model/OnlineMusicAdapter;->getSongItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    move-result-object v0

    .line 337
    .local v0, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p0, v0, v2, v3}, Lcom/miui/player/MusicUtils;->addOnlineToPlaylist(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;J)V

    goto :goto_0

    .line 343
    .end local v0           #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    .end local v1           #uri:Landroid/net/Uri;
    :sswitch_1
    if-eqz p2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/OnlineMusicAdapter;->updateDownloadStatus()V

    goto :goto_0

    .line 331
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 352
    if-nez p3, :cond_1

    .line 353
    iget-object v2, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/OnlineMusicAdapter;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/OnlineMusicAdapter;->getSongItemArr()Ljava/util/ArrayList;

    move-result-object v1

    .line 355
    .local v1, songList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    .line 356
    .local v0, itemArr:[Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 357
    const/4 v2, 0x1

    invoke-static {p0, v0, v3, v2}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;[Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;IZ)V

    .line 358
    iget-object v2, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/OnlineMusicAdapter;->notifyDataSetChanged()V

    .line 374
    .end local v0           #itemArr:[Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    .end local v1           #songList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-direct {p0, p3}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->correctPosition(I)I

    move-result p3

    .line 365
    if-ltz p3, :cond_0

    .line 369
    iget-object v2, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/OnlineMusicAdapter;->getSongItemArr()Ljava/util/ArrayList;

    move-result-object v1

    .line 370
    .restart local v1       #songList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    .line 371
    .restart local v0       #itemArr:[Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 372
    invoke-static {p0, v0, p3, v3}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;[Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;IZ)V

    .line 373
    iget-object v2, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/OnlineMusicAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onOptionsItemSelectedForParent(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/miui/player/ui/PreferencesActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v0, settingIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 196
    .end local v0           #settingIntent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 191
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 192
    new-instance v1, Lcom/miui/player/helper/SleepModeManager;

    invoke-direct {v1}, Lcom/miui/player/helper/SleepModeManager;-><init>()V

    .line 193
    .local v1, sleepModeManager:Lcom/miui/player/helper/SleepModeManager;
    invoke-virtual {v1, p0}, Lcom/miui/player/helper/SleepModeManager;->showSelectTimeDialog(Landroid/app/Activity;)V

    move v2, v4

    .line 194
    goto :goto_0

    .end local v1           #sleepModeManager:Lcom/miui/player/helper/SleepModeManager;
    :cond_1
    move v2, v4

    .line 196
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 152
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapterRefreshReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mList:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/EditableListView;

    .line 156
    .local v0, editList:Landroid/widget/EditableListView;
    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setEditable(Z)V

    .line 159
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->onPause()V

    .line 160
    return-void
.end method

.method public onPrepareOptionsMenuForParent(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestCompleted(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
    .locals 4
    .parameter "songList"

    .prologue
    const v3, 0x7f0c0051

    .line 408
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/player/model/OnlineMusicAdapter;->updateSongList(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    .line 409
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineMusicAdapter;->notifyDataSetChanged()V

    .line 410
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->updateHeaderView()V

    .line 412
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, categoryName:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineMusicAdapter;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mOnlineStatusBarController:Lcom/miui/player/helper/controller/OnlineStatusBarController;

    invoke-virtual {v1}, Lcom/miui/player/helper/controller/OnlineStatusBarController;->setLoadSuccess()V

    .line 415
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 417
    iget-object v1, p1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p0, v3, v0, v1}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;ILjava/lang/CharSequence;I)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    if-eqz v0, :cond_2

    .line 423
    const/4 v1, -0x1

    invoke-static {p0, v3, v0, v1}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;ILjava/lang/CharSequence;I)V

    .line 425
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mOnlineStatusBarController:Lcom/miui/player/helper/controller/OnlineStatusBarController;

    invoke-virtual {v1}, Lcom/miui/player/helper/controller/OnlineStatusBarController;->setLoadFailed()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->onResume()V

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "com.miui.player.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #f:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .restart local v0       #f:Landroid/content/IntentFilter;
    const-string v1, "com.miui.music.FAVORITE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "com.miui.music.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapterRefreshReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineMusicAdapter;->updateDownloadStatus()V

    .line 147
    const/4 v1, 0x0

    invoke-virtual {p0, p0, v1}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->onScanReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    .line 113
    .local v0, a:Lcom/miui/player/model/OnlineMusicAdapter;
    return-object v0
.end method

.method public onScanReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mList:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/EditableListView;

    .line 497
    .local v0, editList:Landroid/widget/EditableListView;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setEditable(Z)V

    .line 498
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineMusicAdapter;->updateDownloadStatus()V

    .line 499
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/BaseListActivity;->onScanReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 500
    return-void
.end method

.method protected abstract prepareForLoading(Landroid/os/Bundle;)V
.end method

.method public refreshAfterRecovery()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineMusicAdapter;->notifyDataSetChanged()V

    .line 473
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->refreshAfterRecovery()V

    .line 474
    return-void
.end method

.method public refreshBeforeRecovery()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineMusicAdapter;->notifyDataSetChanged()V

    .line 481
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->refreshBeforeRecovery()V

    .line 482
    return-void
.end method

.method protected startSongListLoadingAsync()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mOnlineStatusBarController:Lcom/miui/player/helper/controller/OnlineStatusBarController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/OnlineStatusBarController;->setLoadInProcess()V

    .line 431
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/model/OnlineMusicAdapter;->updateSongList(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    .line 432
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineMusicAdapter;->notifyDataSetChanged()V

    .line 433
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 434
    invoke-virtual {p0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/player/helper/SongListCache;->registerWaiter(Landroid/content/Context;Lcom/miui/player/helper/SongListCache$SongListWaiter;)Z

    .line 435
    return-void
.end method

.method public updateHeaderView()V
    .locals 0

    .prologue
    .line 401
    return-void
.end method
