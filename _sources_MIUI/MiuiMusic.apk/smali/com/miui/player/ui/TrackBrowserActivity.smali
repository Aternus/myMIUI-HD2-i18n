.class public Lcom/miui/player/ui/TrackBrowserActivity;
.super Lcom/miui/player/ui/BaseListActivity;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/miui/player/MusicUtils$Defs;
.implements Lcom/miui/player/model/BrowserSource;
.implements Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;
.implements Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;,
        Lcom/miui/player/ui/TrackBrowserActivity$PlaylistSelectionCallback;,
        Lcom/miui/player/ui/TrackBrowserActivity$OnListItemClick;,
        Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;
    }
.end annotation


# static fields
.field private static final BATCH_EDIT:I = 0x1f

.field private static final EDIT_ALBUM_NAME:I = 0x21

.field private static final EDIT_ARTIST_NAME:I = 0x22

.field private static final NEW_PLAYLIST_FOR_OPTION:I = 0x23

.field private static final RENAME_PLAYLIST:I = 0x20

.field private static final SAVE_AS_PLAYLIST:I = 0x1e

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I

.field private static sHasSynchronized:Z


# instance fields
.field private mAdapterSent:Z

.field private mAddTrackHeader:Landroid/view/View;

.field private mAlbumId:Ljava/lang/String;

.field private mAlbumName:Ljava/lang/String;

.field private mAlbumNum:I

.field private mAlphabetScroller:Lcom/miui/player/ui/view/AlphabetScroller;

.field private mArtistId:Ljava/lang/String;

.field private mArtistNameForAlbum:Ljava/lang/String;

.field private mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

.field private mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

.field private mCurrentPlaylistId:I

.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private final mFavoriteChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mFolderPath:Ljava/lang/String;

.field private final mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mOnButtonBarClickListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

.field private mPlaylist:Ljava/lang/String;

.field private mShuffleAllHeader:Landroid/view/View;

.field private mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

.field private mTrackCursor:Landroid/database/Cursor;

.field private final mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 101
    sput v0, Lcom/miui/player/ui/TrackBrowserActivity;->mLastListPosCourse:I

    .line 103
    sput v0, Lcom/miui/player/ui/TrackBrowserActivity;->mLastListPosFine:I

    .line 1014
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/player/ui/TrackBrowserActivity;->sHasSynchronized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/miui/player/ui/BaseListActivity;-><init>()V

    .line 547
    new-instance v0, Lcom/miui/player/ui/TrackBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/TrackBrowserActivity$1;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 563
    new-instance v0, Lcom/miui/player/ui/TrackBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/TrackBrowserActivity$2;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 1053
    new-instance v0, Lcom/miui/player/ui/TrackBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/TrackBrowserActivity$5;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mFavoriteChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1208
    new-instance v0, Lcom/miui/player/ui/TrackBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/TrackBrowserActivity$6;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 1224
    new-instance v0, Lcom/miui/player/ui/TrackBrowserActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/TrackBrowserActivity$7;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mOnButtonBarClickListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

    .line 1335
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/player/ui/TrackBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/player/ui/TrackBrowserActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/player/ui/TrackBrowserActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/ui/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumNum:I

    return v0
.end method

.method static synthetic access$600(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/player/ui/TrackBrowserActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAddTrackHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/player/ui/TrackBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mCurrentPlaylistId:I

    return v0
.end method

.method private connectService()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 248
    invoke-static {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getServiceFromParent(Landroid/app/Activity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v13

    .line 249
    .local v13, service:Lcom/miui/player/IMediaPlaybackService;
    if-nez v13, :cond_0

    .line 250
    invoke-static {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->finishParent(Landroid/app/Activity;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-nez v0, :cond_3

    .line 254
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->isPlaylistEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f030005

    move v3, v0

    .line 256
    .local v3, itemLayoutId:I
    :goto_0
    new-instance v0, Lcom/miui/player/model/TrackBrowserAdapter;

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    new-array v5, v7, [Ljava/lang/String;

    new-array v6, v7, [I

    iget-object v8, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    iget-object v9, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mFolderPath:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    move-object v10, v1

    :goto_1
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFastScroller()Landroid/widget/FastScroller;

    move-result-object v11

    const-string v12, "title"

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Lcom/miui/player/model/TrackBrowserAdapter;-><init>(Lcom/miui/player/model/BrowserSource;Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;ILandroid/database/Cursor;[Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/FastScroller;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    .line 269
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/miui/player/model/TrackBrowserAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 270
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v14}, Lcom/miui/player/ui/TrackBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 288
    .end local v3           #itemLayoutId:I
    :goto_2
    return-void

    .line 254
    :cond_1
    const v0, 0x7f03002c

    move v3, v0

    goto :goto_0

    .restart local v3       #itemLayoutId:I
    :cond_2
    move-object v10, v4

    .line 256
    goto :goto_1

    .line 274
    .end local v3           #itemLayoutId:I
    :cond_3
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 281
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 282
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v7}, Lcom/miui/player/ui/TrackBrowserActivity;->inititalizeByCursor(Landroid/database/Cursor;Z)V

    goto :goto_2

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v14}, Lcom/miui/player/ui/TrackBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_2
.end method

.method private editAllSongID3(ILjava/lang/CharSequence;)V
    .locals 3
    .parameter "type"
    .parameter "title"

    .prologue
    .line 1288
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Landroid/app/AlertDialog$Indicator;->Warning:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    new-instance v2, Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1295
    return-void
.end method

.method private getAllSongsEditInfo(ILjava/lang/String;)[Lcom/miui/player/helper/MediaInfo$MediaEditInfo;
    .locals 13
    .parameter "type"
    .parameter "newValue"

    .prologue
    .line 1298
    iget-object v10, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v10, :cond_2

    .line 1299
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 1300
    .local v2, c:Landroid/database/Cursor;
    const-string v10, "_data"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1301
    .local v6, pathIdx:I
    const-string v10, "title"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1302
    .local v9, titleIdx:I
    const-string v10, "artist"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1303
    .local v1, artistIdx:I
    const-string v10, "album"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1304
    .local v0, albumIdx:I
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    .line 1305
    .local v7, position:I
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    new-array v8, v10, [Lcom/miui/player/helper/MediaInfo$MediaEditInfo;

    .line 1306
    .local v8, ret:[Lcom/miui/player/helper/MediaInfo$MediaEditInfo;
    const/4 v3, 0x0

    .line 1307
    .local v3, i:I
    const/16 v10, 0x21

    if-ne p1, v10, :cond_0

    .line 1308
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1309
    new-instance v5, Lcom/miui/player/helper/MediaInfo$MediaEditInfo;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v10, v11, v12, p2}, Lcom/miui/player/helper/MediaInfo$MediaEditInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    .local v5, info:Lcom/miui/player/helper/MediaInfo$MediaEditInfo;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    aput-object v5, v8, v3

    .line 1308
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 1316
    .end local v5           #info:Lcom/miui/player/helper/MediaInfo$MediaEditInfo;
    :cond_0
    const/16 v10, 0x22

    if-ne p1, v10, :cond_1

    .line 1317
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1318
    new-instance v5, Lcom/miui/player/helper/MediaInfo$MediaEditInfo;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v10, v11, p2, v12}, Lcom/miui/player/helper/MediaInfo$MediaEditInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    .restart local v5       #info:Lcom/miui/player/helper/MediaInfo$MediaEditInfo;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    aput-object v5, v8, v3

    .line 1317
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 1327
    .end local v5           #info:Lcom/miui/player/helper/MediaInfo$MediaEditInfo;
    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object v10, v8

    .line 1331
    .end local v0           #albumIdx:I
    .end local v1           #artistIdx:I
    .end local v2           #c:Landroid/database/Cursor;
    .end local v3           #i:I
    .end local v6           #pathIdx:I
    .end local v7           #position:I
    .end local v8           #ret:[Lcom/miui/player/helper/MediaInfo$MediaEditInfo;
    .end local v9           #titleIdx:I
    :goto_2
    return-object v10

    :cond_2
    const/4 v10, 0x0

    goto :goto_2
.end method

.method private getHeaderName()Ljava/lang/CharSequence;
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 492
    const/4 v7, 0x0

    .line 493
    .local v7, fancyName:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 494
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v9, v0

    .line 495
    .local v9, numresults:I
    :goto_0
    iget-object v7, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumName:Ljava/lang/String;

    .line 496
    if-lez v9, :cond_0

    .line 497
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 498
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v1, "album"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 499
    .local v8, idx:I
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 500
    invoke-static {p0, v7}, Lcom/miui/player/helper/MediaInfo;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 539
    .end local v8           #idx:I
    .end local v9           #numresults:I
    :cond_0
    :goto_1
    if-nez v7, :cond_1

    .line 540
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 543
    :cond_1
    return-object v7

    :cond_2
    move v9, v10

    .line 494
    goto :goto_0

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 503
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v9, v0

    .line 504
    .restart local v9       #numresults:I
    :goto_2
    if-lez v9, :cond_0

    .line 505
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 506
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v1, "artist"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 507
    .restart local v8       #idx:I
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 508
    invoke-static {p0, v7}, Lcom/miui/player/helper/MediaInfo;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_1

    .end local v8           #idx:I
    .end local v9           #numresults:I
    :cond_4
    move v9, v10

    .line 503
    goto :goto_2

    .line 510
    :cond_5
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "nowplaying"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 512
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_1

    .line 513
    :cond_6
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "recentlyadded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 514
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_1

    .line 515
    :cond_7
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/player/helper/FavoritePlaylist;->isFavoritePlaylistId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 516
    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 517
    :cond_8
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mFolderPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/player/helper/MusicMetaManager;->isMiuiMp3DownloadPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 518
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 520
    :cond_9
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v10

    .line 524
    .local v2, cols:[Ljava/lang/String;
    sget-object v0, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 529
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 530
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_a

    .line 531
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 532
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 534
    :cond_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method private makeHeaderView(II)Landroid/view/View;
    .locals 7
    .parameter "iconId"
    .parameter "textId"

    .prologue
    .line 480
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 481
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030037

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 482
    .local v3, ret:Landroid/view/View;
    const v4, 0x7f0c00b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 483
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    const v4, 0x7f0c00b6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 485
    .local v2, name:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 487
    return-object v3
.end method

.method public static setHasSynchronized(Z)V
    .locals 0
    .parameter "hasSynchronized"

    .prologue
    .line 1017
    sput-boolean p0, Lcom/miui/player/ui/TrackBrowserActivity;->sHasSynchronized:Z

    .line 1018
    return-void
.end method


# virtual methods
.method public createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 26
    .parameter "asyncHandler"
    .parameter "filter"
    .parameter "async"

    .prologue
    .line 886
    move-object/from16 v0, p1

    check-cast v0, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-object v5, v0

    .line 887
    .local v5, queryhandler:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;
    if-nez v5, :cond_0

    .line 888
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 891
    :cond_0
    const/16 v24, 0x0

    .line 892
    .local v24, ret:Landroid/database/Cursor;
    const-string v10, "sort_key"

    .line 893
    .local v10, sortOrder:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 894
    .local v25, where:Ljava/lang/StringBuilder;
    const-string v6, "title != \'\'"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_8

    .line 897
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->synchronizeWithAndroidLib(Landroid/content/Context;)V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "nowplaying"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 899
    sget-object v6, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v6, :cond_1

    .line 900
    new-instance v24, Lcom/miui/player/model/TrackNowPlayingCursor;

    .end local v24           #ret:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    sget-object v8, Lcom/miui/player/model/TrackBrowserAdapter;->NOWPLAYING_CURSOR_COLS:[Ljava/lang/String;

    sget-object v9, Lcom/miui/player/model/TrackBrowserAdapter;->NOWPLAYING_CURSOR_COLS:[Ljava/lang/String;

    array-length v9, v9

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    move-object/from16 v0, v24

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/player/model/TrackNowPlayingCursor;-><init>(Landroid/content/Context;Lcom/miui/player/IMediaPlaybackService;[Ljava/lang/String;I)V

    .line 966
    .restart local v24       #ret:Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-eqz v24, :cond_2

    if-eqz p3, :cond_2

    .line 967
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/TrackBrowserActivity;->inititalizeByCursor(Landroid/database/Cursor;Z)V

    :cond_2
    move-object/from16 v6, v24

    .line 969
    :goto_1
    return-object v6

    .line 906
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "recentlyadded"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 908
    const-string v10, "date_modified DESC"

    .line 909
    const-string v6, " AND date_added>"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/32 v8, 0x127500

    sub-long/2addr v6, v8

    move-object/from16 v0, v25

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 911
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/miui/player/model/TrackBrowserAdapter;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v12, 0x0

    move/from16 v11, p3

    invoke-virtual/range {v5 .. v12}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;

    move-result-object v24

    goto :goto_0

    .line 916
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Lcom/miui/player/helper/FavoritePlaylist;->isFavoritePlaylistId(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 917
    const-string v6, "$$miui"

    const/4 v7, 0x3

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/miui/player/MusicUtils;->idForplaylist(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 919
    .local v20, id:J
    const-wide/16 v6, 0x0

    cmp-long v6, v20, v6

    if-gez v6, :cond_5

    .line 920
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/TrackBrowserActivity;->finish()V

    .line 921
    const/4 v6, 0x0

    goto :goto_1

    .line 924
    :cond_5
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v12

    sget-object v13, Lcom/miui/player/model/TrackBrowserAdapter;->PLAYLIST_TRACK_COLS:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "play_order"

    const/16 v18, 0x0

    move-object v11, v5

    move/from16 v17, p3

    invoke-virtual/range {v11 .. v18}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;

    move-result-object v24

    .line 929
    goto/16 :goto_0

    .end local v20           #id:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mFolderPath:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_7

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mFolderPath:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Lcom/miui/player/MusicUtils;->filterSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 931
    .local v19, escapedPath:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%s LIKE \"%%%s%%\""

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v11, "_data"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    aput-object v19, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ESCAPE \'\\\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 933
    .local v22, likeClause:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%s NOT LIKE \"%%%s%%/%%\""

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v11, "_data"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    aput-object v19, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ESCAPE \'\\\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 935
    .local v23, notlikeClause:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/miui/player/model/TrackBrowserAdapter;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v12, 0x1

    move/from16 v11, p3

    invoke-virtual/range {v5 .. v12}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;

    move-result-object v24

    .line 940
    goto/16 :goto_0

    .line 941
    .end local v19           #escapedPath:Ljava/lang/String;
    .end local v22           #likeClause:Ljava/lang/String;
    .end local v23           #notlikeClause:Ljava/lang/String;
    :cond_7
    const-string v10, "play_order"

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/miui/player/model/TrackBrowserAdapter;->PLAYLIST_TRACK_COLS:[Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v12, 0x0

    move/from16 v11, p3

    invoke-virtual/range {v5 .. v12}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;

    move-result-object v24

    goto/16 :goto_0

    .line 948
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_9

    .line 949
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND album_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "track, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 953
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_a

    .line 954
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND artist_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    :cond_a
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/miui/player/model/TrackBrowserAdapter;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    move-object v11, v0

    if-nez v11, :cond_b

    const/4 v11, 0x1

    move v12, v11

    :goto_2
    move/from16 v11, p3

    invoke-virtual/range {v5 .. v12}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;

    move-result-object v24

    goto/16 :goto_0

    :cond_b
    const/4 v11, 0x0

    move v12, v11

    goto :goto_2
.end method

.method public getBrowserView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 989
    return-object p0
.end method

.method public getCurrentBrowserCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getListStyle()I
    .locals 1

    .prologue
    .line 1114
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    return-object v0
.end method

.method public inititalizeByCursor(Landroid/database/Cursor;Z)V
    .locals 9
    .parameter "newCursor"
    .parameter "isLimited"

    .prologue
    const-string v8, "other"

    const-string v7, "meta_changed_track"

    const-string v6, "com.miui.player.metachanged"

    .line 428
    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-nez v4, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v4, p1}, Lcom/miui/player/model/TrackBrowserAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 433
    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    iget-object v5, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v5}, Lcom/miui/player/model/TrackBrowserAdapter;->isIndexerEnabled()Z

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/miui/player/ui/TrackBrowserActivity;->enableDatabaseError(ZZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 438
    sget v4, Lcom/miui/player/ui/TrackBrowserActivity;->mLastListPosCourse:I

    if-ltz v4, :cond_2

    .line 442
    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 444
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    .line 445
    .local v2, lv:Landroid/widget/ListView;
    sget v4, Lcom/miui/player/ui/TrackBrowserActivity;->mLastListPosCourse:I

    sget v5, Lcom/miui/player/ui/TrackBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v2, v4, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 446
    if-nez p2, :cond_2

    .line 447
    const/4 v4, -0x1

    sput v4, Lcom/miui/player/ui/TrackBrowserActivity;->mLastListPosCourse:I

    .line 455
    .end local v2           #lv:Landroid/widget/ListView;
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 456
    .local v1, f:Landroid/content/IntentFilter;
    const-string v4, "com.miui.player.metachanged"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string v4, "com.miui.player.queuechanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v4, "com.miui.player.playstatechanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v4, "com.miui.player.playbackcomplete"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    const-string v4, "nowplaying"

    iget-object v5, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 463
    :try_start_0
    sget-object v4, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/miui/player/IMediaPlaybackService;->getQueuePosition()I

    move-result v0

    .line 464
    .local v0, cur:I
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->setSelection(I)V

    .line 465
    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v4, v5}, Lcom/miui/player/ui/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 466
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.miui.player.metachanged"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v3, trigger:Landroid/content/Intent;
    const-string v4, "other"

    const-string v5, "meta_changed_track"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, p0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 469
    .end local v0           #cur:I
    .end local v3           #trigger:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 433
    .end local v1           #f:Landroid/content/IntentFilter;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 472
    .restart local v1       #f:Landroid/content/IntentFilter;
    :cond_4
    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v4, v5}, Lcom/miui/player/ui/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 473
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.miui.player.metachanged"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .restart local v3       #trigger:Landroid/content/Intent;
    const-string v4, "other"

    const-string v4, "meta_changed_track"

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, p0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public isCurrentBrowserCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 984
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

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
    .line 1206
    const/4 v0, 0x1

    return v0
.end method

.method public isPlaylistEditMode()Z
    .locals 2

    .prologue
    .line 974
    iget v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mCurrentPlaylistId:I

    sget v1, Lcom/miui/player/provider/PlayerProvider;->INVALID_PLAYLIST_ID:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecoveryCompleteReceiver()Z
    .locals 1

    .prologue
    .line 1201
    const/4 v0, 0x1

    return v0
.end method

.method public notifyConnection(Lcom/miui/player/IMediaPlaybackService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 1050
    invoke-direct {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->connectService()V

    .line 1051
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 844
    packed-switch p1, :pswitch_data_0

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 847
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 848
    const-string v1, "audioid_list"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 849
    .local v0, audioList:[J
    if-eqz v0, :cond_0

    .line 850
    const-string v1, "nowplaying"

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 851
    invoke-static {p0, v0}, Lcom/miui/player/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    goto :goto_0

    .line 853
    :cond_1
    new-instance v1, Lcom/miui/player/ui/TrackBrowserActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/miui/player/ui/TrackBrowserActivity$3;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;[J)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/TrackBrowserActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 844
    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->isPlaylistEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/EditableListView;

    .line 391
    .local v0, editList:Landroid/widget/EditableListView;
    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 401
    .end local v0           #editList:Landroid/widget/EditableListView;
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    invoke-virtual {v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->discard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/TrackBrowserAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 400
    :cond_1
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    invoke-virtual {v0, p1}, Lcom/miui/player/model/TrackBrowserHelper;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 27
    .parameter "icicle"

    .prologue
    .line 122
    invoke-super/range {p0 .. p1}, Lcom/miui/player/ui/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const-wide/16 v6, 0x0

    .line 124
    .local v6, selectedId:J
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    .line 125
    .local v21, intent:Landroid/content/Intent;
    if-eqz p1, :cond_4

    .line 126
    const-string v3, "selectedtrack"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 127
    const-string v3, "album"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 128
    const-string v3, "artist"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 129
    const-string v3, "playlist"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    .line 130
    const-string v3, "folderpath"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mFolderPath:Ljava/lang/String;

    .line 131
    const-string v3, "albumname"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumName:Ljava/lang/String;

    .line 132
    const-string v3, "artistname"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;

    .line 146
    :goto_0
    sget v3, Lcom/miui/player/provider/PlayerProvider;->INVALID_PLAYLIST_ID:I

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mCurrentPlaylistId:I

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mFolderPath:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    move-object v3, v0

    const-string v4, "nowplaying"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 149
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mCurrentPlaylistId:I

    .line 159
    :cond_0
    :goto_1
    const v17, 0x7f030018

    .line 160
    .local v17, contentViewId:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/TrackBrowserActivity;->isPlaylistEditMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    const v17, 0x7f030004

    .line 163
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->setContentView(I)V

    .line 164
    invoke-static/range {p0 .. p0}, Lcom/miui/player/MusicUtils;->updateGoHome(Landroid/app/Activity;)V

    .line 166
    new-instance v3, Lcom/miui/player/model/TrackBrowserHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mFolderPath:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move v8, v4

    :goto_2
    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/miui/player/model/TrackBrowserHelper;-><init>(Lcom/miui/player/model/BrowserSource;Lcom/miui/player/MusicUtils$OnDialogCallback;JZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    move-object/from16 v22, v0

    .line 168
    .local v22, lv:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    move-object v3, v0

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 169
    const/4 v3, 0x1

    move-object/from16 v0, v22

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/TrackBrowserActivity;->isPlaylistEditMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 172
    move-object/from16 v0, v22

    check-cast v0, Landroid/widget/SortableListView;

    move-object/from16 v26, v0

    .line 173
    .local v26, sortableListView:Landroid/widget/SortableListView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/miui/player/model/TrackBrowserHelper;->makeDropListener()Landroid/widget/SortableListView$OnOrderChangedListener;

    move-result-object v3

    move-object/from16 v0, v26

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setOnOrderChangedListener(Landroid/widget/SortableListView$OnOrderChangedListener;)V

    .line 174
    const v3, 0x7f020055

    const v4, 0x7f08009d

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/miui/player/ui/TrackBrowserActivity;->makeHeaderView(II)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mAddTrackHeader:Landroid/view/View;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mAddTrackHeader:Landroid/view/View;

    move-object v3, v0

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 177
    new-instance v3, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    invoke-static/range {p0 .. p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getCommitView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f080097

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/miui/player/ui/TrackBrowserActivity$PlaylistSelectionCallback;

    .end local v6           #selectedId:J
    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/miui/player/ui/TrackBrowserActivity$PlaylistSelectionCallback;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;Lcom/miui/player/ui/TrackBrowserActivity$1;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    move-object v4, v0

    new-instance v5, Lcom/miui/player/ui/TrackBrowserActivity$OnListItemClick;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/miui/player/ui/TrackBrowserActivity$OnListItemClick;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;Lcom/miui/player/ui/TrackBrowserActivity$1;)V

    invoke-virtual {v3, v4, v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->bindAdapterView(Landroid/widget/AdapterView;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->updateButtons(Z)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/miui/player/model/TrackBrowserHelper;->setBatchSelectionController(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V

    .line 194
    .end local v26           #sortableListView:Landroid/widget/SortableListView;
    :goto_3
    const v3, 0x7f020057

    const v4, 0x7f080005

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/miui/player/ui/TrackBrowserActivity;->makeHeaderView(II)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mShuffleAllHeader:Landroid/view/View;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mShuffleAllHeader:Landroid/view/View;

    move-object v3, v0

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 197
    const v3, 0x7f0c000d

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/miui/player/ui/view/AlphabetScroller;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mAlphabetScroller:Lcom/miui/player/ui/view/AlphabetScroller;

    .line 200
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/player/model/TrackBrowserAdapter;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    move-object v3, v0

    if-eqz v3, :cond_2

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/miui/player/model/TrackBrowserAdapter;->setBrowserSource(Lcom/miui/player/model/BrowserSource;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/miui/player/model/TrackBrowserAdapter;->setBatchSelectionPlaylistController(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/miui/player/model/TrackBrowserAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_3

    .line 214
    const v3, 0x7f0c0053

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 215
    .local v25, secondary:Landroid/view/View;
    const/4 v3, 0x0

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    const v3, 0x7f0c0054

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 217
    .local v9, leftView:Landroid/view/View;
    const v3, 0x7f0c0057

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 218
    .local v24, rightView:Landroid/view/View;
    const v3, 0x7f0c0055

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 219
    .local v10, trackTab:Landroid/widget/TextView;
    const v3, 0x7f0c0058

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 220
    .local v23, otherTab:Landroid/widget/TextView;
    new-instance v3, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;

    const/4 v4, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/miui/player/ui/TrackBrowserActivity$ToOtherOnClickListener;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;Lcom/miui/player/ui/TrackBrowserActivity$1;)V

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v11, 0x7f080054

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v8, p0

    invoke-static/range {v8 .. v13}, Lcom/miui/player/MusicUtils;->setTopTabStyle(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;IZZ)V

    .line 223
    const v14, 0x7f080053

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, v24

    move-object/from16 v13, v23

    invoke-static/range {v11 .. v16}, Lcom/miui/player/MusicUtils;->setTopTabStyle(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;IZZ)V

    .line 226
    .end local v9           #leftView:Landroid/view/View;
    .end local v10           #trackTab:Landroid/widget/TextView;
    .end local v23           #otherTab:Landroid/widget/TextView;
    .end local v24           #rightView:Landroid/view/View;
    .end local v25           #secondary:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->registerParentServiceConnection(Landroid/app/Activity;Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;)V

    .line 227
    return-void

    .line 135
    .end local v17           #contentViewId:I
    .end local v22           #lv:Landroid/widget/ListView;
    .restart local v6       #selectedId:J
    .restart local p1
    :cond_4
    const-string v3, "album"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 138
    const-string v3, "artist"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 139
    const-string v3, "playlist"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    .line 140
    const-string v3, "folderpath"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mFolderPath:Ljava/lang/String;

    .line 141
    const-string v3, "albumname"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumName:Ljava/lang/String;

    .line 142
    const-string v3, "artistname"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;

    goto/16 :goto_0

    .line 152
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mCurrentPlaylistId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 153
    :catch_0
    move-exception v3

    move-object/from16 v18, v3

    .line 154
    .local v18, e:Ljava/lang/Exception;
    sget v3, Lcom/miui/player/provider/PlayerProvider;->INVALID_PLAYLIST_ID:I

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mCurrentPlaylistId:I

    goto/16 :goto_1

    .line 166
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v17       #contentViewId:I
    :cond_6
    const/4 v4, 0x0

    move v8, v4

    goto/16 :goto_2

    .line 184
    .restart local v22       #lv:Landroid/widget/ListView;
    :cond_7
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mAddTrackHeader:Landroid/view/View;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/EditableListView;

    .line 186
    .local v19, editList:Landroid/widget/EditableListView;
    invoke-static/range {p0 .. p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getCommitView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/miui/player/ui/view/BatchSelectionTrackView;

    .line 187
    .local v20, editableCommitBar:Lcom/miui/player/ui/view/BatchSelectionTrackView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/TrackBrowserActivity;->mOnButtonBarClickListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

    move-object v3, v0

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/BatchSelectionTrackView;->setOnButtonBarClickListener(Landroid/widget/EditableListActionBar$OnButtonBarClickListener;)V

    .line 188
    const/4 v3, -0x1

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/BatchSelectionTrackView;->setMaxSelectCount(I)V

    .line 189
    const v3, 0x7f080002

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/BatchSelectionTrackView;->setOperationText(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 191
    new-instance v3, Lcom/miui/player/ui/TrackBrowserActivity$OnListItemClick;

    const/4 v4, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/miui/player/ui/TrackBrowserActivity$OnListItemClick;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;Lcom/miui/player/ui/TrackBrowserActivity$1;)V

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_3

    .line 201
    .end local v6           #selectedId:J
    .end local v19           #editList:Landroid/widget/EditableListView;
    .end local v20           #editableCommitBar:Lcom/miui/player/ui/view/BatchSelectionTrackView;
    .end local p1
    :catch_1
    move-exception v3

    move-object/from16 v18, v3

    .line 202
    .local v18, e:Ljava/lang/ClassCastException;
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenuForParent(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f02002f

    const/16 v5, 0x1f

    const/4 v4, 0x0

    .line 659
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 660
    const/16 v2, 0x21

    const v3, 0x7f08000d

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020032

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 663
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 664
    const/16 v2, 0x22

    const v3, 0x7f08000c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020033

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 667
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 669
    iget v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mCurrentPlaylistId:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mFolderPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/player/helper/MusicMetaManager;->isMiuiMp3DownloadPath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/player/helper/FavoritePlaylist;->isFavoritePlaylistId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 671
    const/16 v2, 0x20

    const v3, 0x7f08001a

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020039

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 674
    :cond_2
    const/16 v2, 0x1e

    const v3, 0x7f080033

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x108004e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 678
    :cond_3
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    instance-of v2, v2, Landroid/widget/EditableListView;

    if-eqz v2, :cond_4

    .line 679
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/EditableListView;

    .line 680
    .local v0, list:Landroid/widget/EditableListView;
    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 681
    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 682
    const v2, 0x7f08000b

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 689
    .end local v0           #list:Landroid/widget/EditableListView;
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 690
    :cond_5
    const/16 v2, 0x14

    const v3, 0x7f080025

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f02002e

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v1

    .line 692
    .local v1, subPlaylist:Landroid/view/SubMenu;
    invoke-static {p0, v1}, Lcom/miui/player/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 695
    .end local v1           #subPlaylist:Landroid/view/SubMenu;
    :cond_6
    const/4 v2, 0x7

    const v3, 0x7f0800b2

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02003b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 696
    const/4 v2, 0x6

    const v3, 0x7f08003d

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020036

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 699
    const/4 v2, 0x1

    return v2

    .line 684
    .restart local v0       #list:Landroid/widget/EditableListView;
    :cond_7
    const v2, 0x7f08000a

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 299
    const-string v3, "nowplaying"

    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 300
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v3}, Lcom/miui/player/MusicUtils;->unregisterReceiverSafe(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 307
    :goto_0
    iget-boolean v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapterSent:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v3, v5}, Lcom/miui/player/model/TrackBrowserAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    .line 314
    .local v2, lv:Landroid/widget/ListView;
    if-eqz v2, :cond_1

    .line 315
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sput v3, Lcom/miui/player/ui/TrackBrowserActivity;->mLastListPosCourse:I

    .line 316
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 317
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sput v3, Lcom/miui/player/ui/TrackBrowserActivity;->mLastListPosFine:I

    .line 321
    .end local v0           #cv:Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 322
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mShuffleAllHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 323
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAddTrackHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 325
    :cond_2
    iput-object v5, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mShuffleAllHeader:Landroid/view/View;

    .line 326
    iput-object v5, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAddTrackHeader:Landroid/view/View;

    .line 327
    invoke-virtual {p0, v5}, Lcom/miui/player/ui/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 328
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-static {v3, v4}, Lcom/miui/player/MusicUtils;->recycleCursorAdapter(Landroid/widget/SimpleCursorAdapter;Landroid/database/DataSetObserver;)V

    .line 329
    iput-object v5, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    .line 331
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->isPlaylistEditMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 332
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    invoke-virtual {v3, v6}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->updateButtons(Z)V

    .line 338
    :goto_1
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->onDestroy()V

    .line 339
    return-void

    .line 302
    .end local v2           #lv:Landroid/widget/ListView;
    :cond_3
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v3}, Lcom/miui/player/MusicUtils;->unregisterReceiverSafe(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 334
    .restart local v2       #lv:Landroid/widget/ListView;
    :cond_4
    invoke-static {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getCommitView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/player/ui/view/BatchSelectionTrackView;

    .line 335
    .local v1, editableCommitBar:Lcom/miui/player/ui/view/BatchSelectionTrackView;
    invoke-virtual {v1, v5}, Lcom/miui/player/ui/view/BatchSelectionTrackView;->setOnButtonBarClickListener(Landroid/widget/EditableListActionBar$OnButtonBarClickListener;)V

    goto :goto_1
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    const v3, 0x7f08000f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 768
    const/4 v9, 0x0

    .line 769
    .local v9, uri:Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 771
    :sswitch_0
    if-eqz p2, :cond_0

    .line 772
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 773
    if-eqz v9, :cond_0

    .line 774
    new-array v1, v4, [J

    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserHelper;->getSelectedId()J

    move-result-wide v2

    aput-wide v2, v1, v5

    .line 775
    .local v1, list:[J
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)V

    goto :goto_0

    .line 783
    .end local v1           #list:[J
    :sswitch_1
    if-eqz p2, :cond_0

    .line 784
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 785
    if-eqz v9, :cond_0

    .line 786
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/miui/player/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v0

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p0, v0, v2, v3, v4}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)V

    goto :goto_0

    .line 794
    :sswitch_2
    if-eqz p2, :cond_0

    .line 795
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 796
    if-eqz v9, :cond_0

    .line 797
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/miui/player/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v1

    .line 798
    .restart local v1       #list:[J
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 799
    .local v8, plid:I
    int-to-long v2, v8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZZ)V

    goto :goto_0

    .line 804
    .end local v1           #list:[J
    .end local v8           #plid:I
    :sswitch_3
    if-nez p2, :cond_1

    .line 805
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v4}, Lcom/miui/player/ui/TrackBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_0

    .line 813
    :sswitch_4
    if-eqz p2, :cond_0

    .line 815
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->refreshHeader()V

    goto :goto_0

    .line 819
    :sswitch_5
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 820
    const-string v0, "search_album_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 821
    .local v6, newAlbumName:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x21

    invoke-direct {p0, v2, v6}, Lcom/miui/player/ui/TrackBrowserActivity;->getAllSongsEditInfo(ILjava/lang/String;)[Lcom/miui/player/helper/MediaInfo$MediaEditInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/player/helper/MediaInfo;->batchCorretID3Async(Landroid/content/Context;[Lcom/miui/player/helper/MediaInfo$MediaEditInfo;)V

    .line 823
    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 824
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->finish()V

    goto/16 :goto_0

    .line 830
    .end local v6           #newAlbumName:Ljava/lang/String;
    :sswitch_6
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 831
    const-string v0, "search_artist_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 832
    .local v7, newArtistName:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x22

    invoke-direct {p0, v2, v7}, Lcom/miui/player/ui/TrackBrowserActivity;->getAllSongsEditInfo(ILjava/lang/String;)[Lcom/miui/player/helper/MediaInfo$MediaEditInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/player/helper/MediaInfo;->batchCorretID3Async(Landroid/content/Context;[Lcom/miui/player/helper/MediaInfo$MediaEditInfo;)V

    .line 834
    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 835
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->finish()V

    goto/16 :goto_0

    .line 769
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x16 -> :sswitch_0
        0x1e -> :sswitch_2
        0x20 -> :sswitch_4
        0x21 -> :sswitch_5
        0x22 -> :sswitch_6
        0x23 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelectedForParent(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 709
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    move v6, v9

    .line 763
    :goto_0
    return v6

    .line 711
    :sswitch_0
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v6}, Lcom/miui/player/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v6

    invoke-static {p0, v6}, Lcom/miui/player/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    move v6, v10

    .line 712
    goto :goto_0

    .line 716
    :sswitch_1
    const/16 v6, 0x23

    invoke-static {p0, p0, v6}, Lcom/miui/player/ui/CreatorDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;I)Lcom/miui/player/ui/CreatorDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/player/ui/CreatorDialog;->show()V

    move v6, v10

    .line 717
    goto :goto_0

    .line 721
    :sswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "playlist"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 722
    .local v2, playlist:J
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v6}, Lcom/miui/player/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v6

    invoke-static {p0, v6, v2, v3, v10}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)V

    move v6, v10

    .line 723
    goto :goto_0

    .line 726
    .end local v2           #playlist:J
    :sswitch_3
    iget-object v6, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    instance-of v6, v6, Landroid/widget/EditableListView;

    if-eqz v6, :cond_0

    .line 727
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    check-cast v1, Landroid/widget/EditableListView;

    .line 728
    .local v1, list:Landroid/widget/EditableListView;
    invoke-virtual {v1}, Landroid/widget/EditableListView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 729
    invoke-virtual {v1}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 730
    invoke-virtual {v1}, Landroid/widget/EditableListView;->exitEditMode()V

    .end local v1           #list:Landroid/widget/EditableListView;
    :cond_0
    :goto_1
    move v6, v10

    .line 736
    goto :goto_0

    .line 732
    .restart local v1       #list:Landroid/widget/EditableListView;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/EditableListView;->enterEditMode()V

    goto :goto_1

    .line 739
    .end local v1           #list:Landroid/widget/EditableListView;
    :sswitch_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 740
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "rename"

    iget v7, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mCurrentPlaylistId:I

    int-to-long v7, v7

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 741
    const-string v6, "playlist_type"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 742
    new-instance v6, Lcom/miui/player/ui/RenamePlaylist;

    const/16 v7, 0x20

    invoke-direct {v6, p0, p0, v0, v7}, Lcom/miui/player/ui/RenamePlaylist;-><init>(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;Landroid/os/Bundle;I)V

    invoke-virtual {v6}, Lcom/miui/player/ui/RenamePlaylist;->show()V

    move v6, v10

    .line 743
    goto :goto_0

    .line 746
    .end local v0           #b:Landroid/os/Bundle;
    :sswitch_5
    const/16 v6, 0x1e

    invoke-static {p0, p0, v6}, Lcom/miui/player/ui/CreatorDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;I)Lcom/miui/player/ui/CreatorDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/player/ui/CreatorDialog;->show()V

    move v6, v10

    .line 747
    goto :goto_0

    .line 750
    :sswitch_6
    new-instance v5, Lcom/miui/player/helper/SleepModeManager;

    invoke-direct {v5}, Lcom/miui/player/helper/SleepModeManager;-><init>()V

    .line 751
    .local v5, sleepModeManager:Lcom/miui/player/helper/SleepModeManager;
    invoke-virtual {v5, p0}, Lcom/miui/player/helper/SleepModeManager;->showSelectTimeDialog(Landroid/app/Activity;)V

    move v6, v10

    .line 752
    goto :goto_0

    .line 754
    .end local v5           #sleepModeManager:Lcom/miui/player/helper/SleepModeManager;
    :sswitch_7
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/miui/player/ui/PreferencesActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 755
    .local v4, settingIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/miui/player/ui/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v6, v10

    .line 756
    goto/16 :goto_0

    .line 760
    .end local v4           #settingIntent:Landroid/content/Intent;
    :sswitch_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/miui/player/ui/TrackBrowserActivity;->editAllSongID3(ILjava/lang/CharSequence;)V

    move v6, v10

    .line 761
    goto/16 :goto_0

    .line 709
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x19 -> :sswitch_0
        0x1e -> :sswitch_5
        0x1f -> :sswitch_3
        0x20 -> :sswitch_4
        0x21 -> :sswitch_8
        0x22 -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 373
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    invoke-virtual {v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->discard()Z

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mFavoriteChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v1}, Lcom/miui/player/MusicUtils;->unregisterReceiverSafe(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 378
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->isPlaylistEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/EditableListView;

    .line 380
    .local v0, editList:Landroid/widget/EditableListView;
    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 381
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setEditable(Z)V

    .line 384
    .end local v0           #editList:Landroid/widget/EditableListView;
    :cond_1
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->onPause()V

    .line 385
    return-void
.end method

.method public onPrepareOptionsMenuForParent(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 704
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 343
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->onResume()V

    .line 344
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.miui.music.FAVORITE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 345
    .local v1, f:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mFavoriteChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/miui/player/ui/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->isPlaylistEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    check-cast v0, Landroid/widget/EditableListView;

    .line 349
    .local v0, editList:Landroid/widget/EditableListView;
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->isPlaylistEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/EditableListView;->setEditable(Z)V

    .line 351
    .end local v0           #editList:Landroid/widget/EditableListView;
    :cond_0
    return-void

    .line 349
    .restart local v0       #editList:Landroid/widget/EditableListView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    .line 293
    .local v0, a:Lcom/miui/player/model/TrackBrowserAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAdapterSent:Z

    .line 294
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 408
    const-string v0, "selectedtrack"

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    invoke-virtual {v1}, Lcom/miui/player/model/TrackBrowserHelper;->getSelectedId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 409
    const-string v0, "artist"

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v0, "album"

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v0, "playlist"

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v0, "folderpath"

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mFolderPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    const-string v0, "albumname"

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    const-string v0, "artistname"

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 423
    return-void
.end method

.method public onScanReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1137
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1138
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 1139
    .local v9, uri:Landroid/net/Uri;
    if-nez v9, :cond_1

    .line 1189
    .end local v9           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 1143
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1144
    .local v8, path:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "artist_id"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "artist"

    aput-object v1, v2, v0

    .line 1156
    .local v2, proj:[Ljava/lang/String;
    const-string v10, "_data=?"

    .line 1157
    .local v10, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v4, v0

    .line 1158
    .local v4, args:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1160
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1164
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1165
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/miui/player/MusicUtils;->getCurrentAudioPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1166
    const/4 v7, 0x0

    .line 1168
    .local v7, needUpdate:Z
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1169
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 1170
    const/4 v7, 0x1

    .line 1173
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1174
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 1175
    const/4 v7, 0x1

    .line 1177
    :cond_3
    if-eqz v7, :cond_4

    .line 1178
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumName:Ljava/lang/String;

    .line 1179
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;

    .line 1180
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v0, :cond_4

    .line 1181
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/player/ui/TrackBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 1186
    .end local v2           #proj:[Ljava/lang/String;
    .end local v7           #needUpdate:Z
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1188
    .end local v4           #args:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #path:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #where:Ljava/lang/String;
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/BaseListActivity;->onScanReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public refreshAfterRecovery()V
    .locals 3

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/player/ui/TrackBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 1122
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->refreshAfterRecovery()V

    .line 1123
    return-void
.end method

.method public refreshBeforeRecovery()V
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->refreshHeader()V

    .line 1131
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->refreshBeforeRecovery()V

    .line 1132
    return-void
.end method

.method public refreshHeader()V
    .locals 5

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "num"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 355
    .local v0, count:I
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/TrackBrowserAdapter;->getToken()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mCurrentPlaylistId:I

    if-nez v2, :cond_1

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/TrackBrowserAdapter;->getCount()I

    move-result v0

    .line 360
    :cond_1
    const v1, 0x7f0c0051

    .line 361
    .local v1, textId:I
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 362
    const v1, 0x7f0c0056

    .line 363
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/miui/player/MusicUtils;->getAlbumCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumNum:I

    .line 364
    const v2, 0x7f0c0059

    const v3, 0x7f080013

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumNum:I

    invoke-static {p0, v2, v3, v4}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;ILjava/lang/CharSequence;I)V

    .line 368
    :cond_2
    invoke-direct {p0}, Lcom/miui/player/ui/TrackBrowserActivity;->getHeaderName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;ILjava/lang/CharSequence;I)V

    .line 369
    return-void
.end method

.method public scan()V
    .locals 3

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/player/ui/TrackBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 1196
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->scan()V

    .line 1197
    return-void
.end method

.method public setCurrentBrowserCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 979
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 980
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    const/4 v4, 0x0

    .line 584
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 585
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/TrackBrowserActivity;->updateListHeader(Landroid/widget/ListAdapter;)V

    .line 587
    const/4 v2, 0x0

    .line 588
    .local v2, trackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    instance-of v3, p1, Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v3, :cond_0

    .line 589
    move-object v0, p1

    check-cast v0, Lcom/miui/player/model/TrackBrowserAdapter;

    move-object v2, v0

    .line 591
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/player/model/TrackBrowserAdapter;->isIndexerEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 592
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlphabetScroller:Lcom/miui/player/ui/view/AlphabetScroller;

    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v4, v2}, Lcom/miui/player/ui/view/AlphabetScroller;->setList(Landroid/widget/AbsListView;Landroid/widget/SectionIndexer;)V

    .line 593
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlphabetScroller:Lcom/miui/player/ui/view/AlphabetScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/AlphabetScroller;->setVisibility(I)V

    .line 594
    invoke-virtual {v2}, Lcom/miui/player/model/TrackBrowserAdapter;->makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v1

    .line 595
    .local v1, l:Landroid/widget/AbsListView$OnScrollListener;
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlphabetScroller:Lcom/miui/player/ui/view/AlphabetScroller;

    invoke-virtual {v4, v1}, Lcom/miui/player/ui/view/AlphabetScroller;->wrapScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 596
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlphabetScroller:Lcom/miui/player/ui/view/AlphabetScroller;

    invoke-virtual {v3}, Lcom/miui/player/ui/view/AlphabetScroller;->getIndexerChangeListener()Lcom/miui/player/ui/view/AlphabetScroller$OnIndexerChangedListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/player/model/TrackBrowserAdapter;->setOnIndexerChangedListener(Lcom/miui/player/ui/view/AlphabetScroller$OnIndexerChangedListener;)V

    .line 597
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlphabetScroller:Lcom/miui/player/ui/view/AlphabetScroller;

    invoke-virtual {v3}, Lcom/miui/player/ui/view/AlphabetScroller;->refreshAlphabetBgPos()V

    .line 607
    .end local v1           #l:Landroid/widget/AbsListView$OnScrollListener;
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 600
    if-eqz v2, :cond_2

    .line 601
    invoke-virtual {v2, v4}, Lcom/miui/player/model/TrackBrowserAdapter;->setOnIndexerChangedListener(Lcom/miui/player/ui/view/AlphabetScroller$OnIndexerChangedListener;)V

    .line 603
    :cond_2
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlphabetScroller:Lcom/miui/player/ui/view/AlphabetScroller;

    invoke-virtual {v3, v4, v4}, Lcom/miui/player/ui/view/AlphabetScroller;->setList(Landroid/widget/AbsListView;Landroid/widget/SectionIndexer;)V

    .line 604
    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mAlphabetScroller:Lcom/miui/player/ui/view/AlphabetScroller;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/AlphabetScroller;->setVisibility(I)V

    goto :goto_0
.end method

.method public synchronizeWithAndroidLib(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1021
    sget-boolean v0, Lcom/miui/player/ui/TrackBrowserActivity;->sHasSynchronized:Z

    if-eqz v0, :cond_0

    .line 1046
    :goto_0
    return-void

    .line 1025
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/player/ui/TrackBrowserActivity;->sHasSynchronized:Z

    .line 1027
    new-instance v0, Lcom/miui/player/ui/TrackBrowserActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/miui/player/ui/TrackBrowserActivity$4;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/TrackBrowserActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method updateListHeader(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mShuffleAllHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 610
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mShuffleAllHeader:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mShuffleAllHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->notifyDataSetChanged()V

    .line 1007
    :cond_0
    return-void
.end method
