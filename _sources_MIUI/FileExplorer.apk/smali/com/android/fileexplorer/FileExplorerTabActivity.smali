.class public Lcom/android/fileexplorer/FileExplorerTabActivity;
.super Landroid/app/TabActivity;
.source "FileExplorerTabActivity.java"


# instance fields
.field private tabHost:Landroid/widget/TabHost;

.field private tabNames:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->tabNames:[I

    return-void

    :array_0
    .array-data 0x4
        0x4dt 0x0t 0x6t 0x7ft
        0x4ft 0x0t 0x6t 0x7ft
        0x4et 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method private getTabIndex(Landroid/content/Intent;)I
    .locals 4
    .parameter "intent"

    .prologue
    const-string v3, "TAB"

    .line 52
    const-string v1, "TAB"

    const/4 v1, -0x1

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 53
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->tabNames:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    move v1, v0

    .line 56
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "TAB"

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private setTabHostAppearance(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    const-class v1, Lcom/android/fileexplorer/FileCategoryActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 73
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 74
    const-class v2, Lcom/android/fileexplorer/FileViewActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 76
    const-class v3, Lcom/android/fileexplorer/ServerControlActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/content/Intent;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    const/4 v0, 0x2

    aput-object v2, v3, v0

    move v0, v4

    .line 82
    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->tabNames:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    iget-object v4, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->tabNames:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 91
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 92
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->requestWindowFeature(I)Z

    .line 25
    invoke-static {}, Lcom/android/fileexplorer/ActivitiesManager;->getInstance()Lcom/android/fileexplorer/ActivitiesManager;

    move-result-object v0

    const-string v1, "FileExplorerTab"

    invoke-virtual {v0, v1, p0}, Lcom/android/fileexplorer/ActivitiesManager;->registerActivity(Ljava/lang/String;Landroid/app/Activity;)V

    .line 27
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->tabHost:Landroid/widget/TabHost;

    .line 30
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getTabIndex(Landroid/content/Intent;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->setTabHostAppearance(I)V

    .line 31
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->getTabIndex(Landroid/content/Intent;)I

    move-result v0

    .line 38
    .local v0, tab:I
    iget-object v1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->tabHost:Landroid/widget/TabHost;

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->setCurrentTab(I)V

    .line 41
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 45
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "TAB"

    iget-object v2, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 49
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 61
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->tabNames:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method public showTabWidget(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 68
    return-void
.end method
