.class public Lcom/android/browser/controller/TabController;
.super Ljava/lang/Object;
.source "TabController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.android.browser.controller.TabController"

.field private static final MSG_CREATE_CACHE_BUFFER_TAB:I = 0x1

.field private static instance:Lcom/android/browser/controller/TabController;


# instance fields
.field private mBarconChange:Z

.field private mCachedBufferTab:Lcom/android/browser/controller/Tab;

.field private mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

.field private mCurrentTab:Lcom/android/browser/controller/Tab;

.field private mFakeTitleView:Lcom/android/browser/ui/TitleView;

.field private mForceInitHistoryAdapter:Z

.field private mHandler:Landroid/os/Handler;

.field private mHiddenTab:Lcom/android/browser/controller/Tab;

.field private mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/controller/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mTopsitesMaxNumChange:Z

.field private mViewFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;


# direct methods
.method public constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/android/browser/controller/TabController$1;

    invoke-direct {v0, p0}, Lcom/android/browser/controller/TabController$1;-><init>(Lcom/android/browser/controller/TabController;)V

    iput-object v0, p0, Lcom/android/browser/controller/TabController;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    .line 45
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getViewFlipper()Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/TabController;->mViewFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    .line 46
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getFakeTitleView()Lcom/android/browser/ui/TitleView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/TabController;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    .line 47
    sput-object p0, Lcom/android/browser/controller/TabController;->instance:Lcom/android/browser/controller/TabController;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/controller/TabController;)Lcom/android/browser/ui/MiRenBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/controller/TabController;)Lcom/android/browser/controller/Tab;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mCachedBufferTab:Lcom/android/browser/controller/Tab;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/browser/controller/TabController;Lcom/android/browser/controller/Tab;)Lcom/android/browser/controller/Tab;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/browser/controller/TabController;->mCachedBufferTab:Lcom/android/browser/controller/Tab;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/browser/controller/TabController;)Lcom/android/browser/controller/Tab;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/browser/controller/TabController;->createNewTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    return-object v0
.end method

.method private addWebViewInFlipper(Landroid/view/ViewGroup;I)V
    .locals 2
    .parameter "aView"
    .parameter "index"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mViewFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/controller/TabController;->mViewFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    invoke-virtual {v1, p1, p2}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->addDetachedView(Landroid/view/View;I)V

    .line 356
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createNewTab()Lcom/android/browser/controller/Tab;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/android/browser/controller/Tab;

    iget-object v1, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {v0, p0, v1}, Lcom/android/browser/controller/Tab;-><init>(Lcom/android/browser/controller/TabController;Lcom/android/browser/ui/MiRenBrowserActivity;)V

    .line 52
    .local v0, newTab:Lcom/android/browser/controller/Tab;
    return-object v0
.end method

.method private getCachedBufferTab()Lcom/android/browser/controller/Tab;
    .locals 5

    .prologue
    .line 103
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mCachedBufferTab:Lcom/android/browser/controller/Tab;

    if-eqz v2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/browser/controller/TabController;->mCachedBufferTab:Lcom/android/browser/controller/Tab;

    .line 105
    .local v1, newTab:Lcom/android/browser/controller/Tab;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/controller/TabController;->mCachedBufferTab:Lcom/android/browser/controller/Tab;

    .line 110
    :goto_0
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 111
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2ee

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 112
    return-object v1

    .line 107
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #newTab:Lcom/android/browser/controller/Tab;
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/controller/TabController;->createNewTab()Lcom/android/browser/controller/Tab;

    move-result-object v1

    .restart local v1       #newTab:Lcom/android/browser/controller/Tab;
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/browser/controller/TabController;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/browser/controller/TabController;->instance:Lcom/android/browser/controller/TabController;

    return-object v0
.end method

.method private registerClickEvent(Lcom/android/browser/controller/Tab;)V
    .locals 5
    .parameter "newTab"

    .prologue
    .line 219
    move-object v0, p1

    .line 221
    .local v0, thisTab:Lcom/android/browser/controller/Tab;
    iget-object v1, p0, Lcom/android/browser/controller/TabController;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->getIndex()I

    move-result v2

    const/4 v3, 0x0

    new-instance v4, Lcom/android/browser/controller/TabController$3;

    invoke-direct {v4, p0, v0}, Lcom/android/browser/controller/TabController$3;-><init>(Lcom/android/browser/controller/TabController;Lcom/android/browser/controller/Tab;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/browser/ui/TitleView;->setOnClickListener(IILandroid/view/View$OnClickListener;)V

    .line 228
    iget-object v1, p0, Lcom/android/browser/controller/TabController;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->getIndex()I

    move-result v2

    const/4 v3, 0x1

    new-instance v4, Lcom/android/browser/controller/TabController$4;

    invoke-direct {v4, p0, v0}, Lcom/android/browser/controller/TabController$4;-><init>(Lcom/android/browser/controller/TabController;Lcom/android/browser/controller/Tab;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/browser/ui/TitleView;->setOnClickListener(IILandroid/view/View$OnClickListener;)V

    .line 235
    return-void
.end method

.method private removeWebViewInFlipper(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mViewFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    monitor-enter v0

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/controller/TabController;->mViewFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    invoke-virtual {v1, p1}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->removeDetachedViewAt(I)V

    .line 362
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private switchDisplayChildInFlipper(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mViewFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    sget-object v1, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->SWITCH_ANIMATION_NONE:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    invoke-virtual {v0, p1, v1}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->setDisplayedDetachedView(ILcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;)V

    .line 367
    return-void
.end method


# virtual methods
.method public addTab(ZLcom/android/browser/controller/Tab;ZZ)Lcom/android/browser/controller/Tab;
    .locals 5
    .parameter "useHomePage"
    .parameter "parentTab"
    .parameter "switchToForground"
    .parameter "useBuffered"

    .prologue
    const/4 v4, 0x0

    .line 161
    if-eqz p4, :cond_3

    .line 162
    invoke-direct {p0}, Lcom/android/browser/controller/TabController;->getCachedBufferTab()Lcom/android/browser/controller/Tab;

    move-result-object v1

    .line 167
    .local v1, newTab:Lcom/android/browser/controller/Tab;
    :goto_0
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    if-eqz p2, :cond_0

    .line 181
    invoke-virtual {p2}, Lcom/android/browser/controller/Tab;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/controller/Tab;->setUserAgentString(Ljava/lang/String;)V

    .line 184
    :cond_0
    invoke-virtual {v1}, Lcom/android/browser/controller/Tab;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/browser/controller/Tab;->getIndex()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/browser/controller/TabController;->addWebViewInFlipper(Landroid/view/ViewGroup;I)V

    .line 187
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v1}, Lcom/android/browser/controller/Tab;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3, p3}, Lcom/android/browser/ui/TitleView;->addTabTitle(IZ)V

    .line 188
    if-eqz p1, :cond_4

    .line 189
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v2, v4}, Lcom/android/browser/ui/TitleView;->switchMode(I)V

    .line 194
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/browser/controller/TabController;->registerClickEvent(Lcom/android/browser/controller/Tab;)V

    .line 196
    if-eqz p3, :cond_2

    .line 197
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mCurrentTab:Lcom/android/browser/controller/Tab;

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mCurrentTab:Lcom/android/browser/controller/Tab;

    invoke-virtual {v2, v4}, Lcom/android/browser/controller/Tab;->onSwitchTab(Z)V

    .line 201
    :cond_1
    iput-object v1, p0, Lcom/android/browser/controller/TabController;->mCurrentTab:Lcom/android/browser/controller/Tab;

    .line 203
    invoke-virtual {v1}, Lcom/android/browser/controller/Tab;->getIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/browser/controller/TabController;->switchDisplayChildInFlipper(I)V

    .line 206
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    const v3, 0x7f0d0073

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 208
    .local v0, fakeScrollView:Landroid/widget/HorizontalScrollView;
    new-instance v2, Lcom/android/browser/controller/TabController$2;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/controller/TabController$2;-><init>(Lcom/android/browser/controller/TabController;Landroid/widget/HorizontalScrollView;)V

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 215
    .end local v0           #fakeScrollView:Landroid/widget/HorizontalScrollView;
    :cond_2
    return-object v1

    .line 164
    .end local v1           #newTab:Lcom/android/browser/controller/Tab;
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/controller/TabController;->createNewTab()Lcom/android/browser/controller/Tab;

    move-result-object v1

    .restart local v1       #newTab:Lcom/android/browser/controller/Tab;
    goto :goto_0

    .line 191
    :cond_4
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/TitleView;->switchMode(I)V

    goto :goto_1
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 333
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/controller/Tab;

    .line 334
    .local v1, item:Lcom/android/browser/controller/Tab;
    invoke-virtual {v1}, Lcom/android/browser/controller/Tab;->destroy()V

    goto :goto_0

    .line 336
    .end local v1           #item:Lcom/android/browser/controller/Tab;
    :cond_0
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mHiddenTab:Lcom/android/browser/controller/Tab;

    if-eqz v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mHiddenTab:Lcom/android/browser/controller/Tab;

    invoke-virtual {v2}, Lcom/android/browser/controller/Tab;->destroy()V

    .line 340
    :cond_1
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mCachedBufferTab:Lcom/android/browser/controller/Tab;

    if-eqz v2, :cond_2

    .line 341
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mCachedBufferTab:Lcom/android/browser/controller/Tab;

    invoke-virtual {v2}, Lcom/android/browser/controller/Tab;->destroy()V

    .line 342
    :cond_2
    return-void
.end method

.method public getBarconChange()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/browser/controller/TabController;->mBarconChange:Z

    return v0
.end method

.method public getCurrentIndex()I
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    iget-object v1, p0, Lcom/android/browser/controller/TabController;->mCurrentTab:Lcom/android/browser/controller/Tab;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrentTab()Lcom/android/browser/controller/Tab;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mCurrentTab:Lcom/android/browser/controller/Tab;

    return-object v0
.end method

.method public getForceInitHistoryAdapter()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/browser/controller/TabController;->mForceInitHistoryAdapter:Z

    return v0
.end method

.method public getHiddenTab()Lcom/android/browser/controller/Tab;
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mHiddenTab:Lcom/android/browser/controller/Tab;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lcom/android/browser/controller/Tab;

    iget-object v1, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {v0, p0, v1}, Lcom/android/browser/controller/Tab;-><init>(Lcom/android/browser/controller/TabController;Lcom/android/browser/ui/MiRenBrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/controller/TabController;->mHiddenTab:Lcom/android/browser/controller/Tab;

    .line 326
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const v1, 0x7f0d001b

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/browser/controller/TabController;->mHiddenTab:Lcom/android/browser/controller/Tab;

    invoke-virtual {v1}, Lcom/android/browser/controller/Tab;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 327
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mHiddenTab:Lcom/android/browser/controller/Tab;

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->setHidden()V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mHiddenTab:Lcom/android/browser/controller/Tab;

    return-object v0
.end method

.method public getTabAt(I)Lcom/android/browser/controller/Tab;
    .locals 1
    .parameter "index"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/controller/Tab;

    return-object p0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTabIndex(Lcom/android/browser/controller/Tab;)I
    .locals 1
    .parameter "tab"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getTopsitesMaxNumChange()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/browser/controller/TabController;->mTopsitesMaxNumChange:Z

    return v0
.end method

.method public isCurrentTab(Lcom/android/browser/controller/Tab;)Z
    .locals 1
    .parameter "tab"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mCurrentTab:Lcom/android/browser/controller/Tab;

    if-ne p1, v0, :cond_0

    .line 294
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(I)V
    .locals 3
    .parameter "mCurrentOri"

    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/controller/Tab;

    .line 346
    .local v1, tab:Lcom/android/browser/controller/Tab;
    invoke-virtual {v1, p1}, Lcom/android/browser/controller/Tab;->onOrientationChanged(I)V

    goto :goto_0

    .line 348
    .end local v1           #tab:Lcom/android/browser/controller/Tab;
    :cond_0
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mCachedBufferTab:Lcom/android/browser/controller/Tab;

    if-eqz v2, :cond_1

    .line 349
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mCachedBufferTab:Lcom/android/browser/controller/Tab;

    invoke-virtual {v2, p1}, Lcom/android/browser/controller/Tab;->onOrientationChanged(I)V

    .line 351
    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 311
    iget-object v2, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/controller/Tab;

    .line 312
    .local v1, tab:Lcom/android/browser/controller/Tab;
    invoke-virtual {v1}, Lcom/android/browser/controller/Tab;->onLowMemory()V

    goto :goto_0

    .line 313
    .end local v1           #tab:Lcom/android/browser/controller/Tab;
    :cond_0
    return-void
.end method

.method public onRestoreState(Landroid/os/Bundle;)V
    .locals 8
    .parameter "inState"

    .prologue
    const/4 v7, 0x0

    .line 129
    const-string v5, "tab_num"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 130
    .local v4, tabNum:I
    const-string v5, "forground_index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 133
    .local v1, forground_index:I
    if-eqz v4, :cond_0

    .line 134
    iget-object v5, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/controller/Tab;

    invoke-virtual {p0, v5, v7}, Lcom/android/browser/controller/TabController;->removeTab(Lcom/android/browser/controller/Tab;Z)V

    .line 137
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tab_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 139
    .local v0, b:Landroid/os/Bundle;
    const/4 v5, 0x0

    invoke-virtual {p0, v7, v5, v7, v7}, Lcom/android/browser/controller/TabController;->addTab(ZLcom/android/browser/controller/Tab;ZZ)Lcom/android/browser/controller/Tab;

    move-result-object v3

    .line 141
    .local v3, tab:Lcom/android/browser/controller/Tab;
    if-ne v2, v1, :cond_2

    .line 142
    iget-object v5, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v5, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchToTab(Lcom/android/browser/controller/Tab;)V

    .line 144
    invoke-virtual {v3, v0}, Lcom/android/browser/controller/Tab;->restoreState(Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 146
    const-string v5, "miui:home"

    invoke-virtual {v3, v5}, Lcom/android/browser/controller/Tab;->doNavigation(Ljava/lang/String;)V

    .line 137
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {v3, v0}, Lcom/android/browser/controller/Tab;->setStateToRestore(Landroid/os/Bundle;)V

    .line 152
    if-eqz v0, :cond_1

    .line 153
    iget-object v5, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const-string v6, "title"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateTitle(Ljava/lang/String;Lcom/android/browser/controller/Tab;)V

    goto :goto_1

    .line 157
    .end local v0           #b:Landroid/os/Bundle;
    .end local v3           #tab:Lcom/android/browser/controller/Tab;
    :cond_3
    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 116
    const-string v3, "tab_num"

    iget-object v4, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 118
    iget-object v3, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/controller/Tab;

    .line 119
    .local v2, tab:Lcom/android/browser/controller/Tab;
    invoke-virtual {v2, v1}, Lcom/android/browser/controller/Tab;->onSaveState(I)Landroid/os/Bundle;

    move-result-object v0

    .line 120
    .local v0, b:Landroid/os/Bundle;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tab_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 122
    iget-object v3, p0, Lcom/android/browser/controller/TabController;->mCurrentTab:Lcom/android/browser/controller/Tab;

    if-ne v2, v3, :cond_0

    .line 123
    const-string v3, "forground_index"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #tab:Lcom/android/browser/controller/Tab;
    :cond_1
    return-void
.end method

.method public removeTab(Lcom/android/browser/controller/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/controller/TabController;->removeTab(Lcom/android/browser/controller/Tab;Z)V

    .line 256
    return-void
.end method

.method public removeTab(Lcom/android/browser/controller/Tab;Z)V
    .locals 6
    .parameter "tab"
    .parameter "addWhenZeroTab"

    .prologue
    const/4 v5, 0x1

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/browser/controller/TabController;->getTabIndex(Lcom/android/browser/controller/Tab;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 290
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->getIndex()I

    move-result v2

    .line 263
    .local v2, oldIndex:I
    iget-object v3, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 267
    iget-object v3, p0, Lcom/android/browser/controller/TabController;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/browser/ui/TitleView;->switchMode(I)V

    .line 269
    iget-object v3, p0, Lcom/android/browser/controller/TabController;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v3, v2}, Lcom/android/browser/ui/TitleView;->removeTabTitle(I)V

    .line 274
    invoke-direct {p0, v2}, Lcom/android/browser/controller/TabController;->removeWebViewInFlipper(I)V

    .line 276
    iget-object v3, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 277
    iget-object v3, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 278
    iget-object v4, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    iget-object v3, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    iget-object v5, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/controller/Tab;

    invoke-virtual {v4, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchToTab(Lcom/android/browser/controller/Tab;)V

    .line 286
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/controller/Tab;

    .line 287
    .local v1, item:Lcom/android/browser/controller/Tab;
    invoke-direct {p0, v1}, Lcom/android/browser/controller/TabController;->registerClickEvent(Lcom/android/browser/controller/Tab;)V

    goto :goto_2

    .line 279
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/browser/controller/Tab;
    :cond_2
    iget-object v3, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 280
    iget-object v4, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    iget-object v3, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    sub-int v5, v2, v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/controller/Tab;

    invoke-virtual {v4, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchToTab(Lcom/android/browser/controller/Tab;)V

    goto :goto_1

    .line 282
    :cond_3
    iget-object v4, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    iget-object v3, p0, Lcom/android/browser/controller/TabController;->mTabs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/controller/Tab;

    invoke-virtual {v4, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchToTab(Lcom/android/browser/controller/Tab;)V

    goto :goto_1

    .line 283
    :cond_4
    if-eqz p2, :cond_1

    .line 284
    iget-object v3, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/android/browser/ui/MiRenBrowserActivity;->addTab(ZLcom/android/browser/controller/Tab;)Lcom/android/browser/controller/Tab;

    goto :goto_1

    .line 289
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->destroy()V

    goto/16 :goto_0
.end method

.method public setBarconChange(Z)V
    .locals 0
    .parameter "barconChange"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/browser/controller/TabController;->mBarconChange:Z

    .line 67
    return-void
.end method

.method public setForceInitHistoryAdapter(Z)V
    .locals 0
    .parameter "forceInitHistoryAdapter"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/browser/controller/TabController;->mForceInitHistoryAdapter:Z

    .line 76
    return-void
.end method

.method public setTopsitesMaxNumChange(Z)V
    .locals 0
    .parameter "topsitesMaxNumChange"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/browser/controller/TabController;->mTopsitesMaxNumChange:Z

    .line 58
    return-void
.end method

.method public switchToTab(Lcom/android/browser/controller/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/android/browser/controller/TabController;->getTabIndex(Lcom/android/browser/controller/Tab;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->getIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/browser/controller/TabController;->switchDisplayChildInFlipper(I)V

    .line 241
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/TitleView;->switchToTab(I)V

    .line 242
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mCurrentTab:Lcom/android/browser/controller/Tab;

    if-eq v0, p1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mCurrentTab:Lcom/android/browser/controller/Tab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/Tab;->onSwitchTab(Z)V

    .line 244
    iput-object p1, p0, Lcom/android/browser/controller/TabController;->mCurrentTab:Lcom/android/browser/controller/Tab;

    .line 245
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mCurrentTab:Lcom/android/browser/controller/Tab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/Tab;->onSwitchTab(Z)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateProgress(I)V

    .line 249
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateUrl(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateUrlTitle(Lcom/android/browser/controller/Tab;)V

    .line 251
    iget-object v0, p0, Lcom/android/browser/controller/TabController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateLockIconToLatest()V

    goto :goto_0
.end method
