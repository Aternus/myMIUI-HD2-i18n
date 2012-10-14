.class public Lcom/android/gallery/ui/MainActivity;
.super Landroid/app/TabActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private addTab(Ljava/lang/String;Landroid/content/Intent;IIZ)V
    .locals 6
    .parameter "tabId"
    .parameter "intent"
    .parameter "resIcon"
    .parameter "resText"
    .parameter "hideStar"

    .prologue
    .line 64
    iget-object v2, p0, Lcom/android/gallery/ui/MainActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030017

    iget-object v4, p0, Lcom/android/gallery/ui/MainActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0c0063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(I)V

    .line 66
    if-eqz p5, :cond_0

    .line 67
    const v2, 0x7f0c0062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_0
    invoke-virtual {v1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    iget-object v2, p0, Lcom/android/gallery/ui/MainActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 72
    .local v0, tabSpec:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 73
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 74
    iget-object v2, p0, Lcom/android/gallery/ui/MainActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 75
    return-void
.end method

.method private setupAllFolderTab()V
    .locals 6

    .prologue
    .line 52
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/gallery/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 53
    const-class v0, Lcom/android/gallery/ui/TabAllFoldersActivity;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    const-string v1, "tab_id_all_folders"

    const v3, 0x7f020037

    const v4, 0x7f09001b

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery/ui/MainActivity;->addTab(Ljava/lang/String;Landroid/content/Intent;IIZ)V

    .line 55
    return-void
.end method

.method private setupFavoriteTab()V
    .locals 6

    .prologue
    .line 46
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/gallery/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 47
    const-class v0, Lcom/android/gallery/ui/TabFavoriteActivity;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    const-string v1, "tab_id_favorite"

    const v3, 0x7f020034

    const v4, 0x7f09001a

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery/ui/MainActivity;->addTab(Ljava/lang/String;Landroid/content/Intent;IIZ)V

    .line 49
    return-void
.end method

.method private setupFolderTreeTab()V
    .locals 6

    .prologue
    .line 58
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/gallery/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 59
    .local v2, intent:Landroid/content/Intent;
    const-class v0, Lcom/android/gallery/ui/TabFolderTreeActivity;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    const-string v1, "tab_id_folder_tree"

    const v3, 0x7f02003a

    const v4, 0x7f09001c

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery/ui/MainActivity;->addTab(Ljava/lang/String;Landroid/content/Intent;IIZ)V

    .line 61
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lcom/android/gallery/ui/MainActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/gallery/ui/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery/ui/MainActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 34
    invoke-virtual {p0}, Lcom/android/gallery/ui/MainActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery/ui/MainActivity;->mTabHost:Landroid/widget/TabHost;

    .line 35
    iget-object v1, p0, Lcom/android/gallery/ui/MainActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 37
    invoke-static {p0}, Lcom/android/gallery/util/PreferenceHelper;->getLastVisitedTabId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, lastVisitedTabId:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/gallery/ui/MainActivity;->setupFavoriteTab()V

    .line 39
    invoke-direct {p0}, Lcom/android/gallery/ui/MainActivity;->setupAllFolderTab()V

    .line 40
    invoke-direct {p0}, Lcom/android/gallery/ui/MainActivity;->setupFolderTreeTab()V

    .line 42
    iget-object v1, p0, Lcom/android/gallery/ui/MainActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/gallery/app/AppHelper;->sSingleTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-virtual {v0}, Lcom/android/gallery/util/AsyncLoadTaskStack;->stop()Z

    .line 97
    sget-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-virtual {v0}, Lcom/android/gallery/util/AsyncLoadTaskStack;->stop()Z

    .line 98
    sget-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sFullThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-virtual {v0}, Lcom/android/gallery/util/AsyncLoadTaskStack;->stop()Z

    .line 99
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 100
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 86
    invoke-static {}, Lcom/android/gallery/data/BucketExt;->commit()V

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/gallery/util/PreferenceHelper;->updateShowHiddenValue(Landroid/content/Context;)V

    .line 80
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 81
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "tabId"

    .prologue
    .line 91
    invoke-static {}, Lcom/android/gallery/data/BucketExt;->commit()V

    .line 92
    invoke-static {p0, p1}, Lcom/android/gallery/util/PreferenceHelper;->setLastVisitedTabId(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    return-void
.end method
