.class public Lcom/miui/player/model/OnlineMusicAdapter;
.super Landroid/widget/BaseAdapter;
.source "OnlineMusicAdapter.java"

# interfaces
.implements Landroid/widget/EditableListView$EditableListIdMapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

.field private mStatusArr:[I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 39
    iput-object p1, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mActivity:Landroid/app/Activity;

    .line 40
    return-void
.end method

.method private getDownloadStatus(Ljava/util/ArrayList;)V
    .locals 20
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const/4 v2, 0x0

    .line 176
    .local v2, alreadyDownloadFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v18, "music/mp3"

    invoke-static/range {v18 .. v18}, Lcom/miui/player/helper/MusicMetaManager;->getMetaDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 177
    .local v7, dir:Ljava/io/File;
    if-eqz v7, :cond_2

    .line 178
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 179
    .local v6, childs:[Ljava/io/File;
    new-instance v2, Ljava/util/HashSet;

    .end local v2           #alreadyDownloadFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, v6

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v2

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 180
    .restart local v2       #alreadyDownloadFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v5, v6

    .local v5, arr$:[Ljava/io/File;
    array-length v14, v5

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v14, :cond_3

    aget-object v9, v5, v11

    .line 181
    .local v9, f:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 184
    .end local v5           #arr$:[Ljava/io/File;
    .end local v6           #childs:[Ljava/io/File;
    .end local v9           #f:Ljava/io/File;
    .end local v11           #i$:I
    .end local v14           #len$:I
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    .end local v2           #alreadyDownloadFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v18, 0x0

    move-object v0, v2

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 187
    .restart local v2       #alreadyDownloadFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 188
    .local v16, size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_5

    .line 189
    :cond_4
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    .line 191
    :cond_5
    const/4 v15, 0x0

    .line 192
    .local v15, maxSelectCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 193
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    iget-object v12, v3, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    .line 194
    .local v12, id:Ljava/lang/String;
    invoke-static {v12}, Lcom/miui/player/downloader/DownloadInfoManager;->isDownloading(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aput v19, v18, v10

    .line 192
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 197
    :cond_6
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    .line 198
    .local v13, item:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    move-object v0, v13

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 199
    .local v17, tr:Ljava/lang/String;
    iget-object v4, v13, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    .line 200
    .local v4, ar:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/miui/player/helper/MusicMetaManager;->getMP3AppointName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, appointName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 202
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aput v19, v18, v10

    goto :goto_3

    .line 204
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v19, v18, v10

    .line 205
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 209
    .end local v3           #appointName:Ljava/lang/String;
    .end local v4           #ar:Ljava/lang/String;
    .end local v12           #id:Ljava/lang/String;
    .end local v13           #item:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    .end local v17           #tr:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/OnlineMusicAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getCommitView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/miui/player/ui/view/BatchSelectionTrackView;

    .line 210
    .local v8, editableCommitBar:Lcom/miui/player/ui/view/BatchSelectionTrackView;
    invoke-virtual {v8, v15}, Lcom/miui/player/ui/view/BatchSelectionTrackView;->setMaxSelectCount(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineMusicAdapter;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 86
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMusicInfoSongList()Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    return-object v0
.end method

.method public getSongItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    .locals 4
    .parameter "position"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineMusicAdapter;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-long v0, p1

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSongItemArr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 91
    move-object/from16 v0, p2

    check-cast v0, Lcom/miui/player/ui/view/OnlineMusicItem;

    move-object v12, v0

    .line 92
    .local v12, view:Lcom/miui/player/ui/view/OnlineMusicItem;
    if-nez v12, :cond_0

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/OnlineMusicAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object v13, v0

    const v14, 0x7f03002e

    const/4 v15, 0x0

    move-object v0, v13

    move v1, v14

    move-object/from16 v2, p3

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .end local v12           #view:Lcom/miui/player/ui/view/OnlineMusicItem;
    check-cast v12, Lcom/miui/player/ui/view/OnlineMusicItem;

    .line 96
    .restart local v12       #view:Lcom/miui/player/ui/view/OnlineMusicItem;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    move-object v13, v0

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    move-object v13, v0

    array-length v13, v13

    move/from16 v0, p1

    move v1, v13

    if-ge v0, v1, :cond_1

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    move-object v13, v0

    aget v13, v13, p1

    invoke-virtual {v12, v13}, Lcom/miui/player/ui/view/OnlineMusicItem;->setStatus(I)V

    .line 99
    :cond_1
    const/4 v11, 0x0

    .line 100
    .local v11, vh:Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;
    invoke-virtual {v12}, Lcom/miui/player/ui/view/OnlineMusicItem;->getTag()Ljava/lang/Object;

    move-result-object v10

    .line 101
    .local v10, tag:Ljava/lang/Object;
    if-nez v10, :cond_4

    .line 102
    new-instance v11, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;

    .end local v11           #vh:Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;
    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;-><init>(Lcom/miui/player/model/OnlineMusicAdapter;Landroid/view/View;)V

    .line 103
    .restart local v11       #vh:Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;
    invoke-virtual {v12, v11}, Lcom/miui/player/ui/view/OnlineMusicItem;->setTag(Ljava/lang/Object;)V

    .line 108
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/player/model/OnlineMusicAdapter;->getSongItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    move-result-object v9

    .line 110
    .local v9, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    iget-object v13, v11, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->trackNameText:Landroid/widget/TextView;

    iget-object v14, v9, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v13, v11, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->artistNameText:Landroid/widget/TextView;

    iget-object v14, v9, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const/4 v6, 0x0

    .line 114
    .local v6, isPlayingItem:Z
    const/4 v4, 0x0

    .line 115
    .local v4, isBuffering:Z
    const/4 v5, 0x0

    .line 118
    .local v5, isPlaying:Z
    :try_start_0
    sget-object v8, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    .line 120
    .local v8, service:Lcom/miui/player/IMediaPlaybackService;
    if-eqz v8, :cond_2

    .line 121
    iget-object v13, v9, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    invoke-interface {v8}, Lcom/miui/player/IMediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 122
    invoke-interface {v8}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v5

    .line 123
    invoke-interface {v8}, Lcom/miui/player/IMediaPlaybackService;->isBuffering()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 128
    .end local v8           #service:Lcom/miui/player/IMediaPlaybackService;
    :cond_2
    :goto_1
    iget-object v7, v11, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->playIndicator:Landroid/widget/ImageView;

    .line 129
    .local v7, iv:Landroid/widget/ImageView;
    if-eqz v6, :cond_6

    .line 130
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    if-nez v5, :cond_3

    if-eqz v4, :cond_5

    .line 133
    :cond_3
    const v13, 0x7f020068

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/OnlineMusicAdapter;->mActivity:Landroid/app/Activity;

    move-object v13, v0

    iget-object v14, v9, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/miui/player/helper/FavoritePlaylist;->onlineContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 143
    iget-object v13, v11, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    :goto_3
    return-object v12

    .line 105
    .end local v4           #isBuffering:Z
    .end local v5           #isPlaying:Z
    .end local v6           #isPlayingItem:Z
    .end local v7           #iv:Landroid/widget/ImageView;
    .end local v9           #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    :cond_4
    move-object v0, v10

    check-cast v0, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;

    move-object v11, v0

    goto :goto_0

    .line 135
    .restart local v4       #isBuffering:Z
    .restart local v5       #isPlaying:Z
    .restart local v6       #isPlayingItem:Z
    .restart local v7       #iv:Landroid/widget/ImageView;
    .restart local v9       #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    :cond_5
    const v13, 0x7f020064

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 139
    :cond_6
    const/4 v13, 0x4

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 145
    :cond_7
    iget-object v13, v11, Lcom/miui/player/model/OnlineMusicAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 125
    .end local v7           #iv:Landroid/widget/ImageView;
    :catch_0
    move-exception v13

    goto :goto_1
.end method

.method public isResultEmpty()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mapPositionToId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mStatusArr:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    int-to-long v0, p1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public updateDownloadStatus()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/miui/player/model/OnlineMusicAdapter;->getDownloadStatus(Ljava/util/ArrayList;)V

    .line 218
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineMusicAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public updateSongList(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
    .locals 1
    .parameter "songList"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    .line 44
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/miui/player/model/OnlineMusicAdapter;->mSongList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/miui/player/model/OnlineMusicAdapter;->getDownloadStatus(Ljava/util/ArrayList;)V

    .line 46
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineMusicAdapter;->notifyDataSetChanged()V

    .line 48
    :cond_0
    return-void
.end method
