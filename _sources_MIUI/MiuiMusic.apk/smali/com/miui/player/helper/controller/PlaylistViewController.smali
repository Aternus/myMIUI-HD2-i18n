.class public Lcom/miui/player/helper/controller/PlaylistViewController;
.super Lcom/miui/player/helper/controller/MediaPlaybackController;
.source "PlaylistViewController.java"

# interfaces
.implements Lcom/miui/player/model/BrowserSource;
.implements Lcom/miui/player/MusicUtils$OnDialogCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/controller/PlaylistViewController$NowplayingSelectionCallback;,
        Lcom/miui/player/helper/controller/PlaylistViewController$PlaylistItemClickListener;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

.field private final mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

.field private final mListView:Landroid/widget/SortableListView;

.field private mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

.field private mNowPlayingCursor:Landroid/database/Cursor;

.field private final mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/miui/player/IMediaPlaybackService;

.field private mUserClick:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .parameter "a"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 52
    invoke-direct {p0}, Lcom/miui/player/helper/controller/MediaPlaybackController;-><init>()V

    .line 166
    new-instance v0, Lcom/miui/player/helper/controller/PlaylistViewController$1;

    invoke-direct {v0, p0}, Lcom/miui/player/helper/controller/PlaylistViewController$1;-><init>(Lcom/miui/player/helper/controller/PlaylistViewController;)V

    iput-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 53
    iput-object p1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mActivity:Landroid/app/Activity;

    .line 54
    const v0, 0x7f0c0044

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SortableListView;

    iput-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    .line 55
    new-instance v0, Lcom/miui/player/model/TrackBrowserHelper;

    const-wide/16 v3, -0x1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/model/TrackBrowserHelper;-><init>(Lcom/miui/player/model/BrowserSource;Lcom/miui/player/MusicUtils$OnDialogCallback;JZ)V

    iput-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    .line 56
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 57
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    invoke-virtual {v1}, Lcom/miui/player/model/TrackBrowserHelper;->makeDropListener()Landroid/widget/SortableListView$OnOrderChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setOnOrderChangedListener(Landroid/widget/SortableListView$OnOrderChangedListener;)V

    .line 58
    iput-boolean v5, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mUserClick:Z

    .line 60
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    new-instance v1, Lcom/miui/player/helper/controller/PlaylistViewController$PlaylistItemClickListener;

    invoke-direct {v1, p0, v6}, Lcom/miui/player/helper/controller/PlaylistViewController$PlaylistItemClickListener;-><init>(Lcom/miui/player/helper/controller/PlaylistViewController;Lcom/miui/player/helper/controller/PlaylistViewController$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    new-instance v0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    const v1, 0x7f0c0032

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080097

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/player/helper/controller/PlaylistViewController$NowplayingSelectionCallback;

    invoke-direct {v3, p0, v6}, Lcom/miui/player/helper/controller/PlaylistViewController$NowplayingSelectionCallback;-><init>(Lcom/miui/player/helper/controller/PlaylistViewController;Lcom/miui/player/helper/controller/PlaylistViewController$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;)V

    iput-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    .line 64
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    new-instance v2, Lcom/miui/player/helper/controller/PlaylistViewController$PlaylistItemClickListener;

    invoke-direct {v2, p0, v6}, Lcom/miui/player/helper/controller/PlaylistViewController$PlaylistItemClickListener;-><init>(Lcom/miui/player/helper/controller/PlaylistViewController;Lcom/miui/player/helper/controller/PlaylistViewController$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->bindAdapterView(Landroid/widget/AdapterView;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    invoke-virtual {v0, v1}, Lcom/miui/player/model/TrackBrowserHelper;->setBatchSelectionController(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V

    .line 66
    return-void
.end method

.method static synthetic access$200(Lcom/miui/player/helper/controller/PlaylistViewController;)Lcom/miui/player/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mService:Lcom/miui/player/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/helper/controller/PlaylistViewController;)Lcom/miui/player/model/TrackBrowserAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/helper/controller/PlaylistViewController;)Lcom/miui/player/model/TrackBrowserHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/player/helper/controller/PlaylistViewController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mUserClick:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/player/helper/controller/PlaylistViewController;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingCursor:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public adjustSelection()V
    .locals 3

    .prologue
    .line 189
    iget-boolean v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mUserClick:Z

    if-eqz v1, :cond_1

    .line 190
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mUserClick:Z

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 198
    :try_start_0
    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 199
    .local v0, cur:I
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    invoke-virtual {v1}, Landroid/widget/SortableListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    invoke-virtual {v1}, Landroid/widget/SortableListView;->getSelectedItemPosition()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SortableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    iget-object v2, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/SortableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    invoke-virtual {v1, v0}, Landroid/widget/SortableListView;->setSelection(I)V

    goto :goto_0

    .line 209
    .end local v0           #cur:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 205
    .restart local v0       #cur:I
    :cond_2
    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/TrackBrowserAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 8
    .parameter "asyncHandler"
    .parameter "filter"
    .parameter "async"

    .prologue
    .line 71
    move-object v0, p1

    check-cast v0, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-object v1, v0

    .line 72
    .local v1, queryhandler:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;
    if-nez v1, :cond_0

    .line 73
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 76
    :cond_0
    const/4 v2, 0x0

    .line 78
    .local v2, ret:Landroid/database/Cursor;
    iget-object v3, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v3, :cond_1

    .line 79
    new-instance v2, Lcom/miui/player/model/TrackNowPlayingCursor;

    .end local v2           #ret:Landroid/database/Cursor;
    iget-object v3, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mService:Lcom/miui/player/IMediaPlaybackService;

    sget-object v5, Lcom/miui/player/model/TrackBrowserAdapter;->NOWPLAYING_CURSOR_COLS:[Ljava/lang/String;

    sget-object v6, Lcom/miui/player/model/TrackBrowserAdapter;->NOWPLAYING_CURSOR_COLS:[Ljava/lang/String;

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/player/model/TrackNowPlayingCursor;-><init>(Landroid/content/Context;Lcom/miui/player/IMediaPlaybackService;[Ljava/lang/String;I)V

    .line 84
    .restart local v2       #ret:Landroid/database/Cursor;
    :cond_1
    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    .line 85
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/miui/player/helper/controller/PlaylistViewController;->inititalizeByCursor(Landroid/database/Cursor;Z)V

    .line 88
    :cond_2
    return-object v2
.end method

.method protected dirty(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 273
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/helper/controller/PlaylistViewController;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected doUpdate()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 278
    iget-object v0, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    iget v0, v0, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;->mMetaChangedFlag:I

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 284
    :goto_0
    return v0

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/helper/controller/PlaylistViewController;->adjustSelection()V

    move v0, v1

    .line 284
    goto :goto_0
.end method

.method public getBrowserView()Landroid/view/View;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrentBrowserCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getListStyle()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public getNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    return-object v0
.end method

.method public getPlayList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "nowplaying"

    return-object v0
.end method

.method public initPlayingList(Lcom/miui/player/IMediaPlaybackService;)V
    .locals 13
    .parameter "service"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 218
    iput-object p1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mService:Lcom/miui/player/IMediaPlaybackService;

    .line 219
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-nez v0, :cond_1

    .line 223
    new-instance v0, Lcom/miui/player/model/TrackBrowserAdapter;

    iget-object v2, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    const v3, 0x7f030005

    new-array v5, v6, [Ljava/lang/String;

    new-array v6, v6, [I

    const-string v10, "nowplaying"

    move-object v1, p0

    move-object v8, v4

    move-object v9, v4

    move-object v11, v4

    move-object v12, v4

    invoke-direct/range {v0 .. v12}, Lcom/miui/player/model/TrackBrowserAdapter;-><init>(Lcom/miui/player/model/BrowserSource;Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;ILandroid/database/Cursor;[Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/FastScroller;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    .line 237
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v7}, Lcom/miui/player/helper/controller/PlaylistViewController;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingCursor:Landroid/database/Cursor;

    .line 241
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v6}, Lcom/miui/player/helper/controller/PlaylistViewController;->inititalizeByCursor(Landroid/database/Cursor;Z)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v7}, Lcom/miui/player/helper/controller/PlaylistViewController;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public inititalizeByCursor(Landroid/database/Cursor;Z)V
    .locals 6
    .parameter "cursor"
    .parameter "isCookie"

    .prologue
    const-string v5, "com.miui.player.metachanged"

    .line 119
    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-nez v1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/player/model/TrackBrowserAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "com.miui.player.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/miui/player/helper/controller/PlaylistViewController;->adjustSelection()V

    .line 129
    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mActivity:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.miui.player.metachanged"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public isBatchSelectMode()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->isBatchSelectMode()Z

    move-result v0

    return v0
.end method

.method public isCurrentBrowserCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingCursor:Landroid/database/Cursor;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaylistEditMode()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    invoke-virtual {v0, p1}, Lcom/miui/player/model/TrackBrowserHelper;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 362
    const/4 v1, 0x0

    .line 363
    .local v1, uri:Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 365
    :sswitch_0
    if-eqz p2, :cond_0

    .line 366
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 367
    if-eqz v1, :cond_0

    .line 368
    new-array v0, v5, [J

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;

    invoke-virtual {v3}, Lcom/miui/player/model/TrackBrowserHelper;->getSelectedId()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 371
    .local v0, list:[J
    iget-object v2, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v0, v3, v4, v5}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)V

    goto :goto_0

    .line 378
    .end local v0           #list:[J
    :sswitch_1
    iget-object v2, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v2, :cond_0

    .line 379
    iget-object v2, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/TrackBrowserAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 363
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public release(Z)V
    .locals 2
    .parameter "adapterSent"

    .prologue
    const/4 v1, 0x0

    .line 263
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/player/model/TrackBrowserAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    iput-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    .line 269
    return-void
.end method

.method public requery()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 159
    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 2

    .prologue
    .line 300
    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    invoke-virtual {v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->discard()Z

    move-result v0

    .line 301
    .local v0, hasSelected:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/TrackBrowserAdapter;->notifyDataSetChanged()V

    .line 304
    :cond_0
    return v0
.end method

.method public setCurrentBrowserCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingCursor:Landroid/database/Cursor;

    .line 146
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SortableListView;->setDrawingCacheEnabled(Z)V

    .line 114
    return-void
.end method

.method public setNonConfigurationInstance(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 255
    instance-of v0, p1, Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v0, :cond_0

    .line 256
    check-cast p1, Lcom/miui/player/model/TrackBrowserAdapter;

    .end local p1
    iput-object p1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    .line 257
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/player/model/TrackBrowserAdapter;->setBrowserSource(Lcom/miui/player/model/BrowserSource;)V

    .line 258
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    invoke-virtual {v0, v1}, Lcom/miui/player/model/TrackBrowserAdapter;->setBatchSelectionPlaylistController(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V

    .line 260
    :cond_0
    return-void
.end method

.method public setUserClick(Z)V
    .locals 0
    .parameter "userClick"

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mUserClick:Z

    .line 215
    return-void
.end method

.method protected setVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 289
    if-eqz p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    invoke-virtual {v0, v2}, Landroid/widget/SortableListView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->updateButtons(Z)V

    .line 297
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mListView:Landroid/widget/SortableListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SortableListView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mBatchSelectionPlaylistController:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    invoke-virtual {v0, v2}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->updateButtons(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/miui/player/helper/controller/PlaylistViewController;->reset()Z

    goto :goto_0
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->notifyDataSetChanged()V

    .line 153
    :cond_0
    return-void
.end method
