.class public Lcom/android/browser/ui/BrowserSettingActivity;
.super Landroid/app/TabActivity;
.source "BrowserSettingActivity.java"


# static fields
.field public static final DEFAULT_TAB_FAVORITE:I = 0x0

.field public static final DEFAULT_TAB_MOST_VISITED:I = 0x1

.field public static final INTENT_EXTRA_DEFAULT_TAB:Ljava/lang/String; = "com.android.browser/BookmarkCenter/DefaultTab"


# instance fields
.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private setupAdvanceTab()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 35
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/browser/ui/BrowserPreferencesAdvancedPage;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/android/browser/ui/BrowserSettingActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/browser/ui/BrowserSettingActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "advance_setting"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0900e6

    invoke-virtual {p0, v3}, Lcom/android/browser/ui/BrowserSettingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 38
    return-void
.end method

.method private setupCommonTab()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 28
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/browser/ui/BrowserPreferencesPage;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 29
    iget-object v1, p0, Lcom/android/browser/ui/BrowserSettingActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/browser/ui/BrowserSettingActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "common_setting"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0900e5

    invoke-virtual {p0, v3}, Lcom/android/browser/ui/BrowserSettingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/BrowserSettingActivity;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserSettingActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ui/BrowserSettingActivity;->mTabHost:Landroid/widget/TabHost;

    .line 22
    invoke-direct {p0}, Lcom/android/browser/ui/BrowserSettingActivity;->setupCommonTab()V

    .line 23
    invoke-direct {p0}, Lcom/android/browser/ui/BrowserSettingActivity;->setupAdvanceTab()V

    .line 24
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 43
    invoke-static {p0}, Lcom/android/browser/util/SystemSettingsUtil;->applyDayOrNightModeSetting(Landroid/app/Activity;)V

    .line 44
    return-void
.end method
