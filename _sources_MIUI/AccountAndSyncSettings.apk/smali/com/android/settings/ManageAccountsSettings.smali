.class public Lcom/android/settings/ManageAccountsSettings;
.super Lcom/android/settings/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAddAccountButton:Landroid/widget/Button;

.field private mAuthorities:[Ljava/lang/String;

.field private mAutoSyncCheckbox:Landroid/preference/CheckBoxPreference;

.field private mBackgroundDataCheckBox:Landroid/preference/CheckBoxPreference;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContactAccountTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mManageAccountsCategory:Landroid/preference/PreferenceCategory;

.field private mManageDefaultAccountsCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/AccountPreferenceBase;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ManageAccountsSettings;->mContactAccountTypes:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/android/settings/ManageAccountsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ManageAccountsSettings$1;-><init>(Lcom/android/settings/ManageAccountsSettings;)V

    iput-object v0, p0, Lcom/android/settings/ManageAccountsSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ManageAccountsSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/ManageAccountsSettings;->setBackgroundDataInt(Z)V

    return-void
.end method

.method private getSyncTypes()V
    .locals 7

    .prologue
    .line 311
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 312
    .local v4, syncs:[Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/android/settings/ManageAccountsSettings;->mContactAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 314
    move-object v0, v4

    .local v0, arr$:[Landroid/content/SyncAdapterType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 315
    .local v3, sync:Landroid/content/SyncAdapterType;
    const-string v5, "com.android.contacts"

    iget-object v6, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 316
    iget-object v5, p0, Lcom/android/settings/ManageAccountsSettings;->mContactAccountTypes:Ljava/util/ArrayList;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v3           #sync:Landroid/content/SyncAdapterType;
    :cond_1
    return-void
.end method

.method private setBackgroundDataInt(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 167
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/ManageAccountsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 169
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 170
    return-void
.end method


# virtual methods
.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 20
    .parameter "accounts"

    .prologue
    .line 249
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ManageAccountsSettings;->getSyncTypes()V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageAccountsSettings;->mManageDefaultAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 254
    const/4 v13, 0x0

    .local v13, i:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .local v16, n:I
    :goto_0
    move v0, v13

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 255
    aget-object v7, p1, v13

    .line 256
    .local v7, account:Landroid/accounts/Account;
    iget-object v6, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/settings/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 258
    .local v12, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v19, 0x1

    .line 259
    .local v19, showAccount:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_0

    if-eqz v12, :cond_0

    .line 260
    const/16 v19, 0x0

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    move-object v11, v0

    .local v11, arr$:[Ljava/lang/String;
    array-length v15, v11

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_1
    if-ge v14, v15, :cond_0

    aget-object v18, v11, v14

    .line 262
    .local v18, requestedAuthority:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 263
    const/16 v19, 0x1

    .line 269
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v18           #requestedAuthority:Ljava/lang/String;
    :cond_0
    if-eqz v19, :cond_1

    .line 270
    iget-object v6, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/settings/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 272
    .local v8, icon:Landroid/graphics/drawable/Drawable;
    const-string v6, "com.miui.auth"

    iget-object v9, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 273
    new-instance v17, Lcom/android/settings/XiaomiAccountPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/XiaomiAccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V

    .line 277
    .local v17, preference:Lcom/android/settings/AccountPreference;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageAccountsSettings;->mContactAccountTypes:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v9, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 281
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->isAccountDefault(Landroid/accounts/Account;)Z

    move-result v9

    .line 283
    .local v9, isDefault:Z
    new-instance v5, Lcom/android/settings/DefaultAccountPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageAccountsSettings;->mContactAccountTypes:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/DefaultAccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;ZLjava/util/ArrayList;)V

    .line 285
    .local v5, defaultAccountPreference:Lcom/android/settings/DefaultAccountPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageAccountsSettings;->mManageDefaultAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object v6, v0

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 254
    .end local v5           #defaultAccountPreference:Lcom/android/settings/DefaultAccountPreference;
    .end local v8           #icon:Landroid/graphics/drawable/Drawable;
    .end local v9           #isDefault:Z
    .end local v17           #preference:Lcom/android/settings/AccountPreference;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 261
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v18       #requestedAuthority:Ljava/lang/String;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 275
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v18           #requestedAuthority:Ljava/lang/String;
    .restart local v8       #icon:Landroid/graphics/drawable/Drawable;
    :cond_3
    new-instance v17, Lcom/android/settings/AccountPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V

    .restart local v17       #preference:Lcom/android/settings/AccountPreference;
    goto :goto_2

    .line 289
    .end local v7           #account:Landroid/accounts/Account;
    .end local v8           #icon:Landroid/graphics/drawable/Drawable;
    .end local v12           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #preference:Lcom/android/settings/AccountPreference;
    .end local v19           #showAccount:Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 290
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 3

    .prologue
    .line 295
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/android/settings/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AccountPreference;

    .line 297
    .local v1, pref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AccountPreference;->setProviderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 298
    invoke-virtual {v1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    .end local v1           #pref:Lcom/android/settings/AccountPreference;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/settings/ManageAccountsSettings;->mAddAccountButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, v0}, Lcom/android/settings/ManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    .line 308
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/android/settings/ManageAccountsSettings;->setContentView(I)V

    .line 82
    const v1, 0x7f040002

    invoke-virtual {p0, v1}, Lcom/android/settings/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 84
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/android/settings/ManageAccountsSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 85
    iget-object v1, p0, Lcom/android/settings/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v1, p0, Lcom/android/settings/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 89
    const-string v1, "backgroundDataCheckBox"

    invoke-virtual {p0, v1}, Lcom/android/settings/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/ManageAccountsSettings;->mBackgroundDataCheckBox:Landroid/preference/CheckBoxPreference;

    .line 90
    const-string v1, "syncAutomaticallyCheckBox"

    invoke-virtual {p0, v1}, Lcom/android/settings/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/ManageAccountsSettings;->mAutoSyncCheckbox:Landroid/preference/CheckBoxPreference;

    .line 92
    const-string v1, "manageAccountsCategory"

    invoke-virtual {p0, v1}, Lcom/android/settings/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    .line 94
    const-string v1, "manageDefaultAccountsCategory"

    invoke-virtual {p0, v1}, Lcom/android/settings/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/ManageAccountsSettings;->mManageDefaultAccountsCategory:Landroid/preference/PreferenceCategory;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/ManageAccountsSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authorities"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 97
    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Lcom/android/settings/ManageAccountsSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/ManageAccountsSettings;->mAddAccountButton:Landroid/widget/Button;

    .line 98
    iget-object v1, p0, Lcom/android/settings/ManageAccountsSettings;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v4, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/settings/ManageAccountsSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/ManageAccountsSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 143
    packed-switch p1, :pswitch_data_0

    move-object v1, v4

    .line 163
    :goto_0
    return-object v1

    .line 145
    :pswitch_0
    const-string v1, "backgroundDataCheckBox"

    invoke-virtual {p0, v1}, Lcom/android/settings/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 147
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/ManageAccountsSettings$2;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/ManageAccountsSettings$2;-><init>(Lcom/android/settings/ManageAccountsSettings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 110
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/ManageAccountsSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/ManageAccountsSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    invoke-super {p0}, Lcom/android/settings/AccountPreferenceBase;->onDestroy()V

    .line 113
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferences"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 117
    iget-object v3, p0, Lcom/android/settings/ManageAccountsSettings;->mBackgroundDataCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 118
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/ManageAccountsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 120
    .local v1, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v2

    .line 121
    .local v2, oldBackgroundDataSetting:Z
    iget-object v3, p0, Lcom/android/settings/ManageAccountsSettings;->mBackgroundDataCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 122
    .local v0, backgroundDataSetting:Z
    if-eq v2, v0, :cond_0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0, v4}, Lcom/android/settings/ManageAccountsSettings;->setBackgroundDataInt(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/ManageAccountsSettings;->onSyncStateUpdated()V

    .end local v0           #backgroundDataSetting:Z
    .end local v1           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #oldBackgroundDataSetting:Z
    :cond_0
    :goto_0
    move v3, v4

    .line 138
    :goto_1
    return v3

    .line 128
    .restart local v0       #backgroundDataSetting:Z
    .restart local v1       #connManager:Landroid/net/ConnectivityManager;
    .restart local v2       #oldBackgroundDataSetting:Z
    :cond_1
    iget-object v3, p0, Lcom/android/settings/ManageAccountsSettings;->mBackgroundDataCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 129
    invoke-virtual {p0, v4}, Lcom/android/settings/ManageAccountsSettings;->showDialog(I)V

    goto :goto_0

    .line 132
    .end local v0           #backgroundDataSetting:Z
    .end local v1           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #oldBackgroundDataSetting:Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/ManageAccountsSettings;->mAutoSyncCheckbox:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 133
    iget-object v3, p0, Lcom/android/settings/ManageAccountsSettings;->mAutoSyncCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/ManageAccountsSettings;->onSyncStateUpdated()V

    goto :goto_0

    .line 136
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onSyncStateUpdated()V
    .locals 32

    .prologue
    .line 175
    const-string v28, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/ManageAccountsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 177
    .local v10, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v9

    .line 178
    .local v9, backgroundDataSetting:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageAccountsSettings;->mBackgroundDataCheckBox:Landroid/preference/CheckBoxPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 179
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v17

    .line 180
    .local v17, masterSyncAutomatically:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageAccountsSettings;->mAutoSyncCheckbox:Landroid/preference/CheckBoxPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 183
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v12

    .line 185
    .local v12, currentSync:Landroid/content/SyncInfo;
    const/4 v5, 0x0

    .line 188
    .local v5, anySyncFailed:Z
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v22

    .line 189
    .local v22, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 190
    .local v27, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, k:I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v18, v0

    .local v18, n:I
    :goto_0
    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 191
    aget-object v20, v22, v15

    .line 192
    .local v20, sa:Landroid/content/SyncAdapterType;
    invoke-virtual/range {v20 .. v20}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 193
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 196
    .end local v20           #sa:Landroid/content/SyncAdapterType;
    :cond_1
    const/4 v13, 0x0

    .local v13, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v11

    .local v11, count:I
    :goto_1
    if-ge v13, v11, :cond_d

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v19

    .line 198
    .local v19, pref:Landroid/preference/Preference;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/settings/AccountPreference;

    move/from16 v28, v0

    if-nez v28, :cond_2

    .line 196
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 202
    :cond_2
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/settings/AccountPreference;

    move-object v3, v0

    .line 203
    .local v3, accountPref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 204
    .local v2, account:Landroid/accounts/Account;
    const/16 v23, 0x0

    .line 205
    .local v23, syncCount:I
    const/16 v25, 0x0

    .line 206
    .local v25, syncIsFailing:Z
    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v6

    .line 207
    .local v6, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_8

    .line 208
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 209
    .local v7, authority:Ljava/lang/String;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v21

    .line 210
    .local v21, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    if-eqz v17, :cond_4

    if-eqz v9, :cond_4

    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v28

    if-lez v28, :cond_4

    const/16 v28, 0x1

    move/from16 v24, v28

    .line 214
    .local v24, syncEnabled:Z
    :goto_4
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    .line 215
    .local v8, authorityIsPending:Z
    if-eqz v12, :cond_5

    move-object v0, v12

    iget-object v0, v0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    new-instance v28, Landroid/accounts/Account;

    move-object v0, v12

    iget-object v0, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object v0, v12

    iget-object v0, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-direct/range {v28 .. v30}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    const/16 v28, 0x1

    move/from16 v4, v28

    .line 218
    .local v4, activelySyncing:Z
    :goto_5
    if-eqz v21, :cond_6

    if-eqz v24, :cond_6

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_6

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_6

    const/16 v28, 0x1

    move/from16 v16, v28

    .line 223
    .local v16, lastSyncFailed:Z
    :goto_6
    if-eqz v16, :cond_3

    if-nez v4, :cond_3

    if-nez v8, :cond_3

    .line 224
    const/16 v25, 0x1

    .line 225
    const/4 v5, 0x1

    .line 227
    :cond_3
    if-eqz v24, :cond_7

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    const/16 v28, 0x1

    :goto_7
    add-int v23, v23, v28

    .line 228
    goto/16 :goto_3

    .line 210
    .end local v4           #activelySyncing:Z
    .end local v8           #authorityIsPending:Z
    .end local v16           #lastSyncFailed:Z
    .end local v24           #syncEnabled:Z
    :cond_4
    const/16 v28, 0x0

    move/from16 v24, v28

    goto :goto_4

    .line 215
    .restart local v8       #authorityIsPending:Z
    .restart local v24       #syncEnabled:Z
    :cond_5
    const/16 v28, 0x0

    move/from16 v4, v28

    goto :goto_5

    .line 218
    .restart local v4       #activelySyncing:Z
    :cond_6
    const/16 v28, 0x0

    move/from16 v16, v28

    goto :goto_6

    .line 227
    .restart local v16       #lastSyncFailed:Z
    :cond_7
    const/16 v28, 0x0

    goto :goto_7

    .line 230
    .end local v4           #activelySyncing:Z
    .end local v7           #authority:Ljava/lang/String;
    .end local v8           #authorityIsPending:Z
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #lastSyncFailed:Z
    .end local v21           #status:Landroid/content/SyncStatusInfo;
    .end local v24           #syncEnabled:Z
    :cond_8
    const-string v28, "AccountSettings"

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 231
    const-string v28, "AccountSettings"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "no syncadapters found for "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_9
    const/16 v26, 0x1

    .line 235
    .local v26, syncStatus:I
    if-eqz v25, :cond_b

    .line 236
    const/16 v26, 0x2

    .line 242
    :cond_a
    :goto_8
    move-object v0, v3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(I)V

    goto/16 :goto_2

    .line 237
    :cond_b
    if-nez v23, :cond_c

    .line 238
    const/16 v26, 0x1

    goto :goto_8

    .line 239
    :cond_c
    if-lez v23, :cond_a

    .line 240
    const/16 v26, 0x0

    goto :goto_8

    .line 245
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #accountPref:Lcom/android/settings/AccountPreference;
    .end local v6           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #pref:Landroid/preference/Preference;
    .end local v23           #syncCount:I
    .end local v25           #syncIsFailing:Z
    .end local v26           #syncStatus:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v5, :cond_e

    const/16 v29, 0x0

    :goto_9
    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    return-void

    .line 245
    :cond_e
    const/16 v29, 0x8

    goto :goto_9
.end method
