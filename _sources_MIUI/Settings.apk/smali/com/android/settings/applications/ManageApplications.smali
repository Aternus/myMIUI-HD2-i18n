.class public Lcom/android/settings/applications/ManageApplications;
.super Landroid/app/TabActivity;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplications$AppViewHolder;
    }
.end annotation


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field mColorBar:Lcom/android/settings/applications/LinearColorBar;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private mCreatedRunning:Z

.field private mCurView:I

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mFilterApps:I

.field mFreeStorageText:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastFreeStorage:J

.field private mLastShowedInternalStorage:Z

.field private mLastUsedStorage:J

.field private mListContainer:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mNonConfigInstance:Ljava/lang/Object;

.field private mResumedRunning:Z

.field private mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

.field private mSDCardFileStats:Landroid/os/StatFs;

.field private mSortOrder:I

.field mStorageChartLabel:Landroid/widget/TextView;

.field mUsedStorageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 113
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 138
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 140
    iput v1, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 178
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 181
    new-instance v0, Lcom/android/settings/applications/ManageApplications$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$1;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private selectView(I)V
    .locals 7
    .parameter "which"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 812
    if-ne p1, v5, :cond_3

    .line 813
    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    if-eqz v1, :cond_0

    .line 814
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    .line 815
    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    .line 817
    :cond_0
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    if-eq v1, p1, :cond_1

    .line 818
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v1, v6}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 819
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 820
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 822
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v1, :cond_2

    .line 823
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->resume(II)V

    .line 845
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    .line 846
    return-void

    .line 825
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 826
    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mCreatedRunning:Z

    if-nez v1, :cond_4

    .line 827
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mNonConfigInstance:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 828
    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mCreatedRunning:Z

    .line 830
    :cond_4
    const/4 v0, 0x1

    .line 831
    .local v0, haveData:Z
    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    if-nez v1, :cond_5

    .line 832
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningProcessesView;->doResume(Ljava/lang/Runnable;)Z

    move-result v0

    .line 833
    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    .line 835
    :cond_5
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 836
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    if-eq v1, p1, :cond_2

    .line 837
    if-eqz v0, :cond_6

    .line 838
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 842
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 840
    :cond_6
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private startApplicationDetailsActivity()V
    .locals 5

    .prologue
    .line 649
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 652
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startActivityForResult(Landroid/content/Intent;I)V

    .line 653
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method handleRunningProcessesAvail()V
    .locals 2

    .prologue
    .line 849
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 852
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/high16 v1, 0x10a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 854
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 857
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 641
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 644
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->finish()V

    .line 725
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 504
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 506
    new-instance v10, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v11, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {v10, p0, v11}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;)V

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 508
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, action:Ljava/lang/String;
    const-string v2, "Downloaded"

    .line 510
    .local v2, defaultTabTag:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.android.settings.RunningServices"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 512
    const-string v2, "Running"

    .line 524
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 525
    const-string v10, "sortOrder"

    iget v11, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 526
    const-string v10, "filterApps"

    iget v11, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 527
    const-string v10, "defaultTabTag"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 528
    .local v9, tmp:Ljava/lang/String;
    if-eqz v9, :cond_1

    move-object v2, v9

    .line 531
    .end local v9           #tmp:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mNonConfigInstance:Ljava/lang/Object;

    .line 533
    new-instance v10, Landroid/os/StatFs;

    const-string v11, "/data"

    invoke-direct {v10, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    .line 534
    new-instance v10, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    .line 537
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/ManageApplications;->requestWindowFeature(I)Z

    .line 538
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/ManageApplications;->requestWindowFeature(I)Z

    .line 539
    const v10, 0x7f090299

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 540
    const v10, 0x7f090298

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 542
    const-string v10, "layout_inflater"

    invoke-virtual {p0, v10}, Lcom/android/settings/applications/ManageApplications;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 543
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f030032

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 544
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v11, 0x7f0c00c9

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    .line 545
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v11, 0x7f0c00c3

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 547
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v11, 0x102000a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 548
    .local v5, lv:Landroid/widget/ListView;
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v11, 0x1020004

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 549
    .local v3, emptyView:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 550
    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 552
    :cond_2
    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 553
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 554
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 555
    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 556
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 557
    iput-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    .line 558
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 559
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 560
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v11, 0x7f0c00c4

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/LinearColorBar;

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    .line 561
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v11, 0x7f0c00c6

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mStorageChartLabel:Landroid/widget/TextView;

    .line 562
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v11, 0x7f0c00c5

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    .line 563
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v11, 0x7f0c00c7

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    .line 564
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v11, 0x7f0c00c8

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/RunningProcessesView;

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    .line 567
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getTabHost()Landroid/widget/TabHost;

    move-result-object v8

    .line 568
    .local v8, tabHost:Landroid/widget/TabHost;
    const-string v10, "Downloaded"

    invoke-virtual {v8, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    const v11, 0x7f090286

    invoke-virtual {p0, v11}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020075

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 572
    const-string v10, "All"

    invoke-virtual {v8, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    const v11, 0x7f090285

    invoke-virtual {p0, v11}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020074

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 576
    const-string v10, "OnSdCard"

    invoke-virtual {v8, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    const v11, 0x7f090288

    invoke-virtual {p0, v11}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020077

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 580
    const-string v10, "Running"

    invoke-virtual {v8, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    const v11, 0x7f090287

    invoke-virtual {p0, v11}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020076

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 584
    invoke-virtual {v8, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v8, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 591
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 592
    .local v1, curConfig:Landroid/content/res/Configuration;
    iget v6, v1, Landroid/content/res/Configuration;->themeChanged:I

    .line 593
    .local v6, nowThemeChangeTimes:I
    const-string v10, "themeChangeTimes"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 594
    .local v7, preThemeChangeTimes:I
    if-eq v6, v7, :cond_3

    .line 595
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v10}, Lcom/android/settings/applications/ApplicationsState;->clearIconCache()V

    .line 596
    const-string v10, "themeChangeTimes"

    invoke-virtual {v4, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v1           #curConfig:Landroid/content/res/Configuration;
    .end local v6           #nowThemeChangeTimes:I
    .end local v7           #preThemeChangeTimes:I
    :cond_3
    :goto_1
    return-void

    .line 513
    .end local v3           #emptyView:Landroid/view/View;
    .end local v5           #lv:Landroid/widget/ListView;
    .end local v8           #tabHost:Landroid/widget/TabHost;
    .restart local p1
    :cond_4
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.android.settings.applications.StorageUse"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 516
    :cond_5
    const/4 v10, 0x5

    iput v10, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 517
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 518
    const-string v2, "All"

    goto/16 :goto_0

    .line 519
    :cond_6
    const-string v10, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 521
    const-string v2, "All"

    goto/16 :goto_0

    .line 598
    .end local p1
    .restart local v3       #emptyView:Landroid/view/View;
    .restart local v5       #lv:Landroid/widget/ListView;
    .restart local v8       #tabHost:Landroid/widget/TabHost;
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 657
    const/4 v0, 0x4

    const v1, 0x7f09027f

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 659
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f090280

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 661
    const/4 v0, 0x6

    const v1, 0x7f090281

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 662
    const/4 v0, 0x7

    const v1, 0x7f090282

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 663
    return v4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
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
    .line 717
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 718
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 719
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 720
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 705
    const/16 v0, 0x54

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 707
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 710
    :cond_0
    const/4 v0, 0x1

    .line 712
    :goto_0
    return v0

    .restart local p0
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/TabActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 689
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 690
    .local v0, menuId:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 691
    :cond_0
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 692
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 693
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(II)V

    .line 700
    :cond_1
    :goto_0
    return v4

    .line 695
    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 696
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 697
    :cond_3
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 698
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 629
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 630
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 631
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 632
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    .line 634
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    .line 636
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 672
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 673
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 674
    .local v0, showingBackground:Z
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 675
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 676
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 677
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v0, :cond_0

    move v2, v4

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 684
    .end local v0           #showingBackground:Z
    :goto_1
    return v4

    .restart local v0       #showingBackground:Z
    :cond_0
    move v2, v3

    .line 677
    goto :goto_0

    .line 679
    .end local v0           #showingBackground:Z
    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v2, v5, :cond_2

    move v2, v4

    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 680
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v2, v6, :cond_3

    move v2, v4

    :goto_3
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 681
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 682
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v2, v3

    .line 679
    goto :goto_2

    :cond_3
    move v2, v3

    .line 680
    goto :goto_3
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 609
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->showCurrentTab()V

    .line 612
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->doRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 616
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 617
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 618
    const-string v0, "filterApps"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 619
    const-string v0, "defautTabTag"

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 604
    invoke-super {p0}, Landroid/app/TabActivity;->onStart()V

    .line 605
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "tabId"

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->showCurrentTab()V

    .line 885
    return-void
.end method

.method public showCurrentTab()V
    .locals 5

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 862
    .local v1, tabId:Ljava/lang/String;
    const-string v2, "Downloaded"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 863
    const/4 v0, 0x1

    .line 878
    .local v0, newOption:I
    :goto_0
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 879
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/applications/ManageApplications;->selectView(I)V

    .line 880
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateStorageUsage()V

    .line 881
    .end local v0           #newOption:I
    :cond_0
    :goto_1
    return-void

    .line 864
    :cond_1
    const-string v2, "All"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 865
    const/4 v0, 0x0

    .restart local v0       #newOption:I
    goto :goto_0

    .line 866
    .end local v0           #newOption:I
    :cond_2
    const-string v2, "OnSdCard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 867
    const/4 v0, 0x2

    .restart local v0       #newOption:I
    goto :goto_0

    .line 868
    .end local v0           #newOption:I
    :cond_3
    const-string v2, "Running"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 869
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplications;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 871
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/applications/ManageApplications;->selectView(I)V

    goto :goto_1
.end method

.method updateStorageUsage()V
    .locals 21

    .prologue
    .line 736
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    const-wide/16 v7, 0x0

    .line 741
    .local v7, freeStorage:J
    const-wide/16 v5, 0x0

    .line 742
    .local v5, appStorage:J
    const-wide/16 v12, 0x0

    .line 743
    .local v12, totalStorage:J
    const/4 v10, 0x0

    .line 745
    .local v10, newLabel:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 746
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 747
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 749
    :cond_2
    const v16, 0x7f09028c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v16, v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 752
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockCount()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v12, v16, v18

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v7, v16, v18

    .line 779
    :goto_1
    if-eqz v10, :cond_3

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mStorageChartLabel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    :cond_3
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-lez v16, :cond_8

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    move-object/from16 v16, v0

    sub-long v17, v12, v7

    sub-long v17, v17, v5

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    move-wide v0, v12

    long-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move-wide v0, v5

    long-to-float v0, v0

    move/from16 v18, v0

    move-wide v0, v12

    long-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move-wide v0, v7

    long-to-float v0, v0

    move/from16 v19, v0

    move-wide v0, v12

    long-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-virtual/range {v16 .. v19}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 785
    sub-long v14, v12, v7

    .line 786
    .local v14, usedStorage:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    move-wide/from16 v16, v0

    cmp-long v16, v16, v14

    if-eqz v16, :cond_4

    .line 787
    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    .line 788
    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 789
    .local v11, sizeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0902b3

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v11, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    .end local v11           #sizeStr:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    move-wide/from16 v16, v0

    cmp-long v16, v16, v7

    if-eqz v16, :cond_0

    .line 793
    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    .line 794
    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 795
    .restart local v11       #sizeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0902b2

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v11, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 760
    .end local v11           #sizeStr:Ljava/lang/String;
    .end local v14           #usedStorage:J
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    .line 761
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 763
    :cond_6
    const v16, 0x7f09028b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v16, v0

    const-string v17, "/data"

    invoke-virtual/range {v16 .. v17}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 766
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockCount()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v12, v16, v18

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v7, v16, v18

    .line 772
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v3

    .line 773
    .local v3, N:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    if-ge v9, v3, :cond_7

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    .line 775
    .local v4, ae:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    move-object v0, v4

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    move-wide/from16 v16, v0

    move-object v0, v4

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    add-long v5, v5, v16

    .line 773
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 777
    .end local v4           #ae:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v16

    add-long v7, v7, v16

    goto/16 :goto_1

    .line 799
    .end local v3           #N:I
    .end local v9           #i:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 800
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    cmp-long v16, v16, v18

    if-eqz v16, :cond_9

    .line 801
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    cmp-long v16, v16, v18

    if-eqz v16, :cond_0

    .line 805
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 770
    :catch_0
    move-exception v16

    goto/16 :goto_2

    .line 756
    :catch_1
    move-exception v16

    goto/16 :goto_1
.end method
