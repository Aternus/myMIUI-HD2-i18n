.class public Lcom/android/sidekick/SideKickActivity;
.super Landroid/app/Activity;
.source "SideKickActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/android/sidekick/GroupSearchView$OnLaunchSuggestionListener;


# instance fields
.field private mInputHistoryAdapter:Lcom/android/sidekick/InputHistoryAdapter;

.field private mInputHistoryDialog:Lcom/android/sidekick/InputHistoryDialog;

.field private mOpeningSetting:Z

.field private mWorkingScreenView:Lcom/android/sidekick/WorkingScreenView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sidekick/SideKickActivity;->mOpeningSetting:Z

    return-void
.end method

.method private launchIntent(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 139
    if-nez p1, :cond_0

    .line 146
    :goto_0
    return v1

    .line 143
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/sidekick/SideKickActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    const/4 v1, 0x1

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, ex:Ljava/lang/RuntimeException;
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x10100

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/sidekick/SideKickActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 32
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 37
    new-instance v3, Lcom/android/sidekick/WorkingScreenView;

    invoke-direct {v3, p0}, Lcom/android/sidekick/WorkingScreenView;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/sidekick/SideKickActivity;->mWorkingScreenView:Lcom/android/sidekick/WorkingScreenView;

    .line 38
    iget-object v3, p0, Lcom/android/sidekick/SideKickActivity;->mWorkingScreenView:Lcom/android/sidekick/WorkingScreenView;

    invoke-virtual {v3, v5}, Lcom/android/sidekick/WorkingScreenView;->setOvershootTension(F)V

    .line 39
    iget-object v3, p0, Lcom/android/sidekick/SideKickActivity;->mWorkingScreenView:Lcom/android/sidekick/WorkingScreenView;

    invoke-virtual {v3, v5}, Lcom/android/sidekick/WorkingScreenView;->setOverScrollRatio(F)V

    .line 41
    iget-object v3, p0, Lcom/android/sidekick/SideKickActivity;->mWorkingScreenView:Lcom/android/sidekick/WorkingScreenView;

    invoke-virtual {v3}, Lcom/android/sidekick/WorkingScreenView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 42
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 48
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    iget-object v3, p0, Lcom/android/sidekick/SideKickActivity;->mWorkingScreenView:Lcom/android/sidekick/WorkingScreenView;

    invoke-virtual {v3, v0}, Lcom/android/sidekick/WorkingScreenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v3, p0, Lcom/android/sidekick/SideKickActivity;->mWorkingScreenView:Lcom/android/sidekick/WorkingScreenView;

    invoke-virtual {p0, v3}, Lcom/android/sidekick/SideKickActivity;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 52
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 53
    invoke-virtual {p0}, Lcom/android/sidekick/SideKickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/android/sidekick/SideKickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    const/16 v3, 0x50

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 56
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 58
    new-instance v3, Lcom/android/sidekick/InputHistoryAdapter;

    invoke-direct {v3, p0}, Lcom/android/sidekick/InputHistoryAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/sidekick/SideKickActivity;->mInputHistoryAdapter:Lcom/android/sidekick/InputHistoryAdapter;

    .line 59
    new-instance v3, Lcom/android/sidekick/InputHistoryDialog;

    iget-object v4, p0, Lcom/android/sidekick/SideKickActivity;->mInputHistoryAdapter:Lcom/android/sidekick/InputHistoryAdapter;

    invoke-direct {v3, p0, v4}, Lcom/android/sidekick/InputHistoryDialog;-><init>(Landroid/content/Context;Lcom/android/sidekick/InputHistoryAdapter;)V

    iput-object v3, p0, Lcom/android/sidekick/SideKickActivity;->mInputHistoryDialog:Lcom/android/sidekick/InputHistoryDialog;

    .line 60
    iget-object v3, p0, Lcom/android/sidekick/SideKickActivity;->mInputHistoryDialog:Lcom/android/sidekick/InputHistoryDialog;

    invoke-virtual {v3, p0}, Lcom/android/sidekick/InputHistoryDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 62
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 64
    return-void

    .line 45
    .end local v1           #params:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 46
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 107
    const v0, 0x7f070001

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x53

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 110
    const v0, 0x7f070002

    invoke-interface {p1, v4, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x48

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 113
    return v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 99
    iget-object v0, p0, Lcom/android/sidekick/SideKickActivity;->mWorkingScreenView:Lcom/android/sidekick/WorkingScreenView;

    invoke-virtual {v0}, Lcom/android/sidekick/WorkingScreenView;->onDestory()V

    .line 100
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/sidekick/SideKickActivity;->mWorkingScreenView:Lcom/android/sidekick/WorkingScreenView;

    invoke-virtual {v0}, Lcom/android/sidekick/WorkingScreenView;->getSearchView()Lcom/android/sidekick/GroupSearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sidekick/SideKickActivity;->mInputHistoryDialog:Lcom/android/sidekick/InputHistoryDialog;

    invoke-virtual {v1}, Lcom/android/sidekick/InputHistoryDialog;->getSelectQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/sidekick/GroupSearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/android/sidekick/SideKickActivity;->mWorkingScreenView:Lcom/android/sidekick/WorkingScreenView;

    invoke-virtual {v0}, Lcom/android/sidekick/WorkingScreenView;->showSearch()V

    .line 161
    return-void
.end method

.method public onLaunchSuggestion(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/sidekick/SideKickActivity;->mInputHistoryAdapter:Lcom/android/sidekick/InputHistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/android/sidekick/InputHistoryAdapter;->addHistory(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/android/sidekick/SideKickActivity;->mInputHistoryDialog:Lcom/android/sidekick/InputHistoryDialog;

    invoke-virtual {v0}, Lcom/android/sidekick/InputHistoryDialog;->show()V

    move v0, v1

    .line 129
    goto :goto_0

    .line 131
    :pswitch_1
    invoke-static {p0}, Lcom/android/sidekick/GroupSearchView;->createSearchSettingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/sidekick/SideKickActivity;->launchIntent(Landroid/content/Intent;)Z

    .line 132
    iput-boolean v1, p0, Lcom/android/sidekick/SideKickActivity;->mOpeningSetting:Z

    move v0, v1

    .line 133
    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 93
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/sidekick/SideKickActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/StatusBarManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 94
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/sidekick/SideKickActivity;->mWorkingScreenView:Lcom/android/sidekick/WorkingScreenView;

    invoke-virtual {v0}, Lcom/android/sidekick/WorkingScreenView;->isSearchViewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    iget-object v0, p0, Lcom/android/sidekick/SideKickActivity;->mWorkingScreenView:Lcom/android/sidekick/WorkingScreenView;

    invoke-virtual {v0}, Lcom/android/sidekick/WorkingScreenView;->onResume()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sidekick/SideKickActivity;->mOpeningSetting:Z

    .line 87
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/sidekick/SideKickActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/StatusBarManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 88
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/sidekick/SideKickActivity;->mWorkingScreenView:Lcom/android/sidekick/WorkingScreenView;

    invoke-virtual {v0}, Lcom/android/sidekick/WorkingScreenView;->getSearchView()Lcom/android/sidekick/GroupSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/sidekick/GroupSearchView;->reloadSearchSettings()V

    .line 167
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 69
    iget-object v1, p0, Lcom/android/sidekick/SideKickActivity;->mWorkingScreenView:Lcom/android/sidekick/WorkingScreenView;

    invoke-virtual {v1}, Lcom/android/sidekick/WorkingScreenView;->onStart()V

    .line 71
    invoke-virtual {p0}, Lcom/android/sidekick/SideKickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.search.action.GLOBAL_SEARCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/sidekick/SideKickActivity;->mWorkingScreenView:Lcom/android/sidekick/WorkingScreenView;

    invoke-virtual {v1}, Lcom/android/sidekick/WorkingScreenView;->showSearch()V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/android/sidekick/SideKickActivity;->mWorkingScreenView:Lcom/android/sidekick/WorkingScreenView;

    invoke-virtual {v1}, Lcom/android/sidekick/WorkingScreenView;->showRecent()V

    goto :goto_0
.end method
