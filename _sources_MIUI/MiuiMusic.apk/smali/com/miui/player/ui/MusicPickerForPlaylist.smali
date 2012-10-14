.class public Lcom/miui/player/ui/MusicPickerForPlaylist;
.super Landroid/app/ListActivity;
.source "MusicPickerForPlaylist.java"

# interfaces
.implements Lcom/miui/player/MusicUtils$Defs;
.implements Lcom/miui/player/model/BrowserSource;


# static fields
.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapterSent:Z

.field private mCurrentPlaylistId:I

.field private mPlaylistCursor:Landroid/database/Cursor;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 40
    sput v0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mLastListPosCourse:I

    .line 42
    sput v0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 239
    new-instance v0, Lcom/miui/player/ui/MusicPickerForPlaylist$4;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MusicPickerForPlaylist$4;-><init>(Lcom/miui/player/ui/MusicPickerForPlaylist;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 246
    new-instance v0, Lcom/miui/player/ui/MusicPickerForPlaylist$5;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MusicPickerForPlaylist$5;-><init>(Lcom/miui/player/ui/MusicPickerForPlaylist;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mReScanHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/MusicPickerForPlaylist;)Lcom/miui/player/model/MusicPickerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/ui/MusicPickerForPlaylist;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initBottom(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "bottomLayout"

    .prologue
    const/4 v5, 0x0

    .line 120
    const v2, 0x7f0c0002

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    .local v0, addCommit:Landroid/widget/TextView;
    const v2, 0x7f08009c

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/MusicPickerForPlaylist;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const v2, 0x7f0c0003

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    .local v1, cancelCommit:Landroid/widget/TextView;
    const v2, 0x7f08009a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 125
    new-instance v2, Lcom/miui/player/ui/MusicPickerForPlaylist$1;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/MusicPickerForPlaylist$1;-><init>(Lcom/miui/player/ui/MusicPickerForPlaylist;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance v2, Lcom/miui/player/ui/MusicPickerForPlaylist$2;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/MusicPickerForPlaylist$2;-><init>(Lcom/miui/player/ui/MusicPickerForPlaylist;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method private initSelectAll()V
    .locals 2

    .prologue
    .line 166
    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/MusicPickerForPlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    .local v0, selectAll:Landroid/widget/TextView;
    new-instance v1, Lcom/miui/player/ui/MusicPickerForPlaylist$3;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/MusicPickerForPlaylist$3;-><init>(Lcom/miui/player/ui/MusicPickerForPlaylist;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void
.end method


# virtual methods
.method public createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 10
    .parameter "asyncHandler"
    .parameter "filter"
    .parameter "async"

    .prologue
    .line 257
    move-object v0, p1

    check-cast v0, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;

    move-object v1, v0

    .line 258
    .local v1, queryhandler:Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;
    if-nez v1, :cond_0

    .line 259
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 262
    :cond_0
    const/4 v8, 0x0

    .line 263
    .local v8, ret:Landroid/database/Cursor;
    const-string v6, "sort_key"

    .line 264
    .local v6, sortOrder:Ljava/lang/String;
    const-string v9, "title != \'\'"

    .line 265
    .local v9, where:Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/miui/player/model/MusicPickerAdapter;->CURSOR_COLS:[Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v8

    .line 269
    if-eqz v8, :cond_1

    if-eqz p3, :cond_1

    .line 270
    const/4 v2, 0x0

    invoke-virtual {p0, v8, v2}, Lcom/miui/player/ui/MusicPickerForPlaylist;->inititalizeByCursor(Landroid/database/Cursor;Z)V

    .line 272
    :cond_1
    return-object v8
.end method

.method public getBrowserView()Landroid/view/View;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 282
    return-object p0
.end method

.method public getCurrentBrowserCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mPlaylistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getListStyle()I
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return-object v0
.end method

.method public inititalizeByCursor(Landroid/database/Cursor;Z)V
    .locals 4
    .parameter "cursor"
    .parameter "isCookie"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/player/model/MusicPickerAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 304
    sget v0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mLastListPosCourse:I

    if-ltz v0, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/miui/player/ui/MusicPickerForPlaylist;->mLastListPosCourse:I

    sget v2, Lcom/miui/player/ui/MusicPickerForPlaylist;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 306
    const/4 v0, -0x1

    sput v0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mLastListPosCourse:I

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 310
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/player/MusicUtils;->displayDatabaseError(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;)V

    .line 311
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->closeContextMenu()V

    .line 312
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 315
    :cond_2
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/player/MusicUtils;->hideDatabaseError(Landroid/app/Activity;Z)V

    .line 316
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/MusicPickerAdapter;->updateBottomView()V

    goto :goto_0
.end method

.method public isCurrentBrowserCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mPlaylistCursor:Landroid/database/Cursor;

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
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 55
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->requestWindowFeature(I)Z

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->requestWindowFeature(I)Z

    .line 57
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->setVolumeControlStream(I)V

    .line 59
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v11, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v0, "file"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v11}, Lcom/miui/player/ui/MusicPickerForPlaylist;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->setContentView(I)V

    .line 67
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->updateGoHome(Landroid/app/Activity;)V

    .line 68
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->getListView()Landroid/widget/ListView;

    move-result-object v12

    .line 69
    .local v12, lv:Landroid/widget/ListView;
    invoke-virtual {v12, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playlist"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mCurrentPlaylistId:I

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/miui/player/model/MusicPickerAdapter;

    iput-object p1, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    const v0, 0x7f0c0066

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 78
    .local v3, bottomLayout:Landroid/widget/LinearLayout;
    const v0, 0x7f0c0003

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 79
    .local v4, selectAll:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/miui/player/model/MusicPickerAdapter;

    iget v2, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mCurrentPlaylistId:I

    const v5, 0x7f03001a

    iget-object v6, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mPlaylistCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v8, "title"

    aput-object v8, v7, v1

    const/4 v1, 0x1

    new-array v8, v1, [I

    const/4 v1, 0x0

    const v9, 0x1020014

    aput v9, v8, v1

    iget-object v1, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFastScroller()Landroid/widget/FastScroller;

    move-result-object v9

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/miui/player/model/MusicPickerAdapter;-><init>(Lcom/miui/player/model/BrowserSource;ILandroid/widget/LinearLayout;Landroid/widget/TextView;ILandroid/database/Cursor;[Ljava/lang/String;[ILandroid/widget/FastScroller;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    .line 90
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/MusicPickerAdapter;->getQueryHandler()Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/player/ui/MusicPickerForPlaylist;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 109
    :goto_1
    invoke-direct {p0, v3}, Lcom/miui/player/ui/MusicPickerForPlaylist;->initBottom(Landroid/widget/LinearLayout;)V

    .line 110
    invoke-direct {p0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->initSelectAll()V

    .line 111
    return-void

    .line 74
    .end local v3           #bottomLayout:Landroid/widget/LinearLayout;
    .end local v4           #selectAll:Landroid/widget/TextView;
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 75
    .local v10, e:Ljava/lang/ClassCastException;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    goto :goto_0

    .line 93
    .end local v10           #e:Ljava/lang/ClassCastException;
    .restart local v3       #bottomLayout:Landroid/widget/LinearLayout;
    .restart local v4       #selectAll:Landroid/widget/TextView;
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    invoke-virtual {v0, p0}, Lcom/miui/player/model/MusicPickerAdapter;->setBrowserSource(Lcom/miui/player/model/BrowserSource;)V

    .line 95
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/MusicPickerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mPlaylistCursor:Landroid/database/Cursor;

    .line 103
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mPlaylistCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/MusicPickerForPlaylist;->inititalizeByCursor(Landroid/database/Cursor;Z)V

    goto :goto_1

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    invoke-virtual {v0}, Lcom/miui/player/model/MusicPickerAdapter;->getQueryHandler()Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/player/ui/MusicPickerForPlaylist;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 213
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sput v2, Lcom/miui/player/ui/MusicPickerForPlaylist;->mLastListPosCourse:I

    .line 215
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sput v2, Lcom/miui/player/ui/MusicPickerForPlaylist;->mLastListPosFine:I

    .line 221
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    iget-boolean v2, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mAdapterSent:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    if-eqz v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    invoke-virtual {v2, v3}, Lcom/miui/player/model/MusicPickerAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 227
    :cond_1
    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MusicPickerForPlaylist;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    iput-object v3, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    .line 229
    iget-object v2, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/MusicPickerForPlaylist;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 231
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 149
    const v2, 0x7f0c0068

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 150
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/MusicPickerAdapter;->getSelectAudioSet()Ljava/util/HashSet;

    move-result-object v1

    .line 152
    .local v1, selectSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 154
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 159
    :goto_0
    iget-object v2, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    invoke-virtual {v2}, Lcom/miui/player/model/MusicPickerAdapter;->updateBottomView()V

    .line 162
    .end local v1           #selectSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 163
    return-void

    .line 156
    .restart local v1       #selectSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 236
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 237
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;

    .line 206
    .local v0, a:Lcom/miui/player/model/MusicPickerAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mAdapterSent:Z

    .line 207
    return-object v0
.end method

.method public setCurrentBrowserCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mPlaylistCursor:Landroid/database/Cursor;

    .line 332
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist;->mList:Landroid/widget/ListView;

    invoke-static {v0, p1}, Lcom/miui/player/MusicUtils;->updateAlphabetScroller(Landroid/widget/ListView;Landroid/widget/ListAdapter;)V

    .line 117
    return-void
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 337
    return-void
.end method
