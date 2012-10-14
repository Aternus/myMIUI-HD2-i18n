.class public Lcom/android/contacts/DialtactsActivity;
.super Landroid/app/TabActivity;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/DialtactsActivity$TabVisibilityManager;
    }
.end annotation


# instance fields
.field private mActionFooter:Landroid/view/View;

.field private mFilterText:Ljava/lang/String;

.field private mLastManuallySelectedTab:I

.field private mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabWidget:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 274
    return-void
.end method

.method private createIntent(Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .parameter "action"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 140
    return-object v0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 269
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 271
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 272
    return-void
.end method

.method private setCurrentTab(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 169
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 172
    instance-of v1, v0, Lcom/android/contacts/DialtactsActivity$TabVisibilityManager;

    if-eqz v1, :cond_0

    .line 173
    check-cast v0, Lcom/android/contacts/DialtactsActivity$TabVisibilityManager;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0}, Lcom/android/contacts/DialtactsActivity$TabVisibilityManager;->cancelAllModifications()V

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    iget v2, p0, Lcom/android/contacts/DialtactsActivity;->mLastManuallySelectedTab:I

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 178
    return-void
.end method

.method private setupContactsTab()V
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "contacts"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b0049

    invoke-virtual {p0, v2}, Lcom/android/contacts/DialtactsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "com.android.contacts.action.LIST_DEFAULT"

    const-class v3, Lcom/android/contacts/ContactsListActivity;

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/DialtactsActivity;->createIntent(Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 152
    return-void
.end method

.method private setupFavoritesTab()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "favorites"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b004a

    invoke-virtual {p0, v2}, Lcom/android/contacts/DialtactsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "com.android.contacts.action.LIST_STARRED"

    const-class v3, Lcom/android/contacts/ContactsListActivity;

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/DialtactsActivity;->createIntent(Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 158
    return-void
.end method

.method private setupFilterText(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const-string v1, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, filter:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 217
    iput-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mFilterText:Ljava/lang/String;

    goto :goto_0
.end method

.method private setupGroupTab()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "groups"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b0106

    invoke-virtual {p0, v2}, Lcom/android/contacts/DialtactsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "com.android.contacts.action.LIST_DEFAULT"

    const-class v3, Lcom/android/contacts/ui/GroupsBrowserActivity;

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/DialtactsActivity;->createIntent(Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 147
    return-void
.end method


# virtual methods
.method public getFooterView()Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mActionFooter:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mActionFooter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mActionFooter:Landroid/view/View;

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhotoLoader()Lcom/android/contacts/ContactPhotoLoader;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0, v1}, Lcom/android/contacts/DialtactsActivity;->moveTaskToBack(Z)Z

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    sput-boolean v1, Lcom/android/contacts/TwelveKeyDialer;->IS_SLIDE_DOWN:Z

    .line 231
    invoke-super {p0}, Landroid/app/TabActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->loadFontSizeConfiguration(Landroid/content/Context;)V

    .line 76
    const v2, 0x7f030013

    invoke-virtual {p0, v2}, Lcom/android/contacts/DialtactsActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    .line 79
    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 80
    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    const v3, 0x1020013

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabWidget:Landroid/view/View;

    .line 81
    new-instance v2, Lcom/android/contacts/ContactPhotoLoader;

    const v3, 0x10803b6

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/ContactPhotoLoader;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    .line 83
    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    const v3, 0x7f0700a2

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mActionFooter:Landroid/view/View;

    .line 84
    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mActionFooter:Landroid/view/View;

    new-instance v3, Lcom/android/contacts/DialtactsActivity$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/DialtactsActivity$1;-><init>(Lcom/android/contacts/DialtactsActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-direct {p0}, Lcom/android/contacts/DialtactsActivity;->setupContactsTab()V

    .line 95
    invoke-direct {p0}, Lcom/android/contacts/DialtactsActivity;->setupGroupTab()V

    .line 96
    invoke-direct {p0}, Lcom/android/contacts/DialtactsActivity;->setupFavoritesTab()V

    .line 99
    const-string v2, "dialtacts"

    invoke-virtual {p0, v2, v4}, Lcom/android/contacts/DialtactsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 100
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "last_manually_selected_tab"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/DialtactsActivity;->mLastManuallySelectedTab:I

    .line 103
    invoke-direct {p0, v0}, Lcom/android/contacts/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 105
    if-nez p1, :cond_0

    const-string v2, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-direct {p0, v0}, Lcom/android/contacts/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 108
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/android/contacts/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/android/contacts/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 185
    const-string v0, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, p1}, Lcom/android/contacts/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 188
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 114
    const-string v1, "dialtacts"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/DialtactsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_manually_selected_tab"

    iget v2, p0, Lcom/android/contacts/DialtactsActivity;->mLastManuallySelectedTab:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "tabId"

    .prologue
    const/4 v3, 0x1

    .line 238
    invoke-direct {p0}, Lcom/android/contacts/DialtactsActivity;->hideSoftKeyboard()V

    .line 243
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 244
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0, v3}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 247
    instance-of v1, v0, Lcom/android/contacts/DialtactsActivity$TabVisibilityManager;

    if-eqz v1, :cond_0

    .line 248
    check-cast v0, Lcom/android/contacts/DialtactsActivity$TabVisibilityManager;

    .end local v0           #activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabWidget:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/DialtactsActivity;->mActionFooter:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/DialtactsActivity$TabVisibilityManager;->setTabView(Landroid/view/View;Landroid/view/View;)V

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    if-ne v3, v1, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/DialtactsActivity;->mLastManuallySelectedTab:I

    .line 265
    return-void

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/DialtactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 259
    iget-object v1, p0, Lcom/android/contacts/DialtactsActivity;->mActionFooter:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setActionFooterVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/contacts/DialtactsActivity;->mActionFooter:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    return-void

    .line 122
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method
