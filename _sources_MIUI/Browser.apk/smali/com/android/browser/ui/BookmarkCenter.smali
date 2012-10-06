.class public Lcom/android/browser/ui/BookmarkCenter;
.super Landroid/app/TabActivity;
.source "BookmarkCenter.java"


# static fields
.field public static final DEFAULT_TAB_FAVORITE:I = 0x0

.field public static final DEFAULT_TAB_HISTORY:I = 0x2

.field public static final DEFAULT_TAB_MOST_VISITED:I = 0x1

.field public static final INTENT_EXTRA_DEFAULT_TAB:Ljava/lang/String; = "com.android.browser/BookmarkCenter/DefaultTab"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/BookmarkCenter;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenter;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    .line 23
    .local v1, tabHost:Landroid/widget/TabHost;
    const-string v2, "favorite"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f090028

    invoke-virtual {p0, v3}, Lcom/android/browser/ui/BookmarkCenter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/android/browser/ui/BookmarkCenterFavoriteActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 27
    const-string v2, "most_visited"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f09002a

    invoke-virtual {p0, v3}, Lcom/android/browser/ui/BookmarkCenter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 31
    const-string v2, "history"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f090029

    invoke-virtual {p0, v3}, Lcom/android/browser/ui/BookmarkCenter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/android/browser/ui/BookmarkCenterHistoryActivity;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenter;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.browser/BookmarkCenter/DefaultTab"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 36
    .local v0, defaultId:I
    invoke-virtual {p0}, Lcom/android/browser/ui/BookmarkCenter;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 37
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 42
    invoke-static {p0}, Lcom/android/browser/util/SystemSettingsUtil;->applyDayOrNightModeSetting(Landroid/app/Activity;)V

    .line 43
    return-void
.end method
