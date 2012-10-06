.class public Lcom/android/settings/AccountSyncSettings;
.super Lcom/android/settings/AccountPreferenceBase;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LDEBUG:Z


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field private mAccounts:[Landroid/accounts/Account;

.field private mCheckBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/SyncStateCheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDateFormat:Ljava/text/DateFormat;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mProviderIcon:Landroid/widget/ImageView;

.field protected mProviderId:Landroid/widget/TextView;

.field protected mRemoveAccountArea:Landroid/view/View;

.field private mRemoveAccountButton:Landroid/widget/LinearLayout;

.field private mTimeFormat:Ljava/text/DateFormat;

.field protected mUserId:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "AccountSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/AccountSyncSettings;->LDEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/AccountPreferenceBase;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    .line 84
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method private addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 8
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v7, 0x0

    .line 185
    new-instance v0, Lcom/android/settings/SyncStateCheckBoxPreference;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/SyncStateCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 187
    .local v0, item:Lcom/android/settings/SyncStateCheckBoxPreference;
    invoke-virtual {v0, v7}, Lcom/android/settings/SyncStateCheckBoxPreference;->setPersistent(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 189
    .local v1, providerInfo:Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v2, v4

    .line 191
    .local v2, providerLabel:Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider needs a label for authority \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    move-object v2, p2

    .line 195
    :cond_0
    const v4, 0x7f060029

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/settings/SyncStateCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v0, p2}, Lcom/android/settings/SyncStateCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 199
    iget-object v4, p0, Lcom/android/settings/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    return-void

    .line 189
    .end local v2           #providerLabel:Ljava/lang/CharSequence;
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    move-object v2, v4

    goto :goto_0
.end method

.method private cancelSyncForEnabledProviders()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 269
    return-void
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .parameter "account"
    .parameter "authority"
    .parameter "flag"

    .prologue
    .line 294
    if-eqz p3, :cond_0

    .line 295
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 296
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 297
    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 301
    .end local v0           #extras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 9
    .parameter "startSync"

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/settings/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 274
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 276
    .local v5, pref:Landroid/preference/Preference;
    instance-of v7, v5, Lcom/android/settings/SyncStateCheckBoxPreference;

    if-nez v7, :cond_1

    .line 274
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    :cond_1
    move-object v0, v5

    check-cast v0, Lcom/android/settings/SyncStateCheckBoxPreference;

    move-object v6, v0

    .line 280
    .local v6, syncPref:Lcom/android/settings/SyncStateCheckBoxPreference;
    invoke-virtual {v6}, Lcom/android/settings/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 283
    invoke-virtual {v6}, Lcom/android/settings/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/settings/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p1}, Lcom/android/settings/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 286
    .end local v5           #pref:Landroid/preference/Preference;
    .end local v6           #syncPref:Lcom/android/settings/SyncStateCheckBoxPreference;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v7, :cond_3

    .line 287
    iget-object v7, p0, Lcom/android/settings/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    .local v1, authority:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v7, v1, p1}, Lcom/android/settings/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_2

    .line 291
    .end local v1           #authority:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private startSyncForEnabledProviders()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 265
    return-void
.end method

.method private updateAccountCheckboxes([Landroid/accounts/Account;)V
    .locals 14
    .parameter "accounts"

    .prologue
    const-string v13, "AccountSettings"

    .line 381
    iget-object v11, p0, Lcom/android/settings/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 383
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v9

    .line 384
    .local v9, syncAdapters:[Landroid/content/SyncAdapterType;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 386
    .local v1, accountTypeToAuthorities:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .local v4, i:I
    array-length v7, v9

    .local v7, n:I
    :goto_0
    if-ge v4, v7, :cond_3

    .line 387
    aget-object v8, v9, v4

    .line 388
    .local v8, sa:Landroid/content/SyncAdapterType;
    invoke-virtual {v8}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 389
    iget-object v11, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 390
    .local v2, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 391
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .restart local v2       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_0
    sget-boolean v11, Lcom/android/settings/AccountSyncSettings;->LDEBUG:Z

    if-eqz v11, :cond_1

    .line 395
    const-string v11, "AccountSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onAccountUpdated: added authority "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to accountType "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_1
    iget-object v11, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 402
    :cond_2
    iget-object v11, p0, Lcom/android/settings/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    iget-object v12, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 406
    .end local v8           #sa:Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v4, 0x0

    iget-object v11, p0, Lcom/android/settings/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_2
    if-ge v4, v7, :cond_4

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v11, p0, Lcom/android/settings/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/Preference;

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 406
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 409
    :cond_4
    iget-object v11, p0, Lcom/android/settings/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 411
    const/4 v4, 0x0

    array-length v7, p1

    :goto_3
    if-ge v4, v7, :cond_a

    .line 412
    aget-object v0, p1, v4

    .line 413
    .local v0, account:Landroid/accounts/Account;
    sget-boolean v11, Lcom/android/settings/AccountSyncSettings;->LDEBUG:Z

    if-eqz v11, :cond_5

    const-string v11, "AccountSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "looking for sync adapters that match account "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_5
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 415
    .restart local v2       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_9

    iget-object v11, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v11, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 416
    :cond_6
    const/4 v5, 0x0

    .local v5, j:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, m:I
    :goto_4
    if-ge v5, v6, :cond_9

    .line 417
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 419
    .local v3, authority:Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v10

    .line 420
    .local v10, syncState:I
    sget-boolean v11, Lcom/android/settings/AccountSyncSettings;->LDEBUG:Z

    if-eqz v11, :cond_7

    const-string v11, "AccountSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  found authority "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_7
    if-lez v10, :cond_8

    .line 422
    invoke-direct {p0, v0, v3}, Lcom/android/settings/AccountSyncSettings;->addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 416
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 411
    .end local v3           #authority:Ljava/lang/String;
    .end local v5           #j:I
    .end local v6           #m:I
    .end local v10           #syncState:I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 427
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    return-void
.end method

.method private updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter "prefs"

    .prologue
    .line 446
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 447
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 448
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 449
    const-string v2, "account"

    iget-object v3, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 454
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 446
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 374
    invoke-super {p0, p1}, Lcom/android/settings/AccountPreferenceBase;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 375
    iput-object p1, p0, Lcom/android/settings/AccountSyncSettings;->mAccounts:[Landroid/accounts/Account;

    .line 376
    invoke-direct {p0, p1}, Lcom/android/settings/AccountSyncSettings;->updateAccountCheckboxes([Landroid/accounts/Account;)V

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/AccountSyncSettings;->onSyncStateUpdated()V

    .line 378
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 3

    .prologue
    .line 434
    invoke-super {p0}, Lcom/android/settings/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 436
    iget-object v1, p0, Lcom/android/settings/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/AccountSyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    iget-object v1, p0, Lcom/android/settings/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/AccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v1, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/AccountSyncSettings;->addPreferencesForType(Ljava/lang/String;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 439
    .local v0, prefs:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0, v0}, Lcom/android/settings/AccountSyncSettings;->updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V

    .line 442
    :cond_0
    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Lcom/android/settings/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 443
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mRemoveAccountButton:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    .line 88
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountSyncSettings;->showDialog(I)V

    .line 90
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-super {p0, p1}, Lcom/android/settings/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 148
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountSyncSettings;->setContentView(I)V

    .line 149
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 151
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountSyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/AccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 156
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountSyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountSyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountSyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountSyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mRemoveAccountArea:Landroid/view/View;

    .line 160
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountSyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mRemoveAccountButton:Landroid/widget/LinearLayout;

    .line 161
    iget-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mRemoveAccountButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mDateFormat:Ljava/text/DateFormat;

    .line 165
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mTimeFormat:Ljava/text/DateFormat;

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/AccountSyncSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 168
    iget-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    .line 169
    sget-boolean v0, Lcom/android/settings/AccountSyncSettings;->LDEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AccountSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v3, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/AccountSyncSettings;->updateAuthDescriptions()V

    .line 175
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountSyncSettings;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 176
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v2, 0x7f060025

    const v4, 0x104000a

    const/4 v3, 0x0

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, dialog:Landroid/app/Dialog;
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 96
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060022

    new-instance v3, Lcom/android/settings/AccountSyncSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/AccountSyncSettings$1;-><init>(Lcom/android/settings/AccountSyncSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    .line 129
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_2
    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 135
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f06002a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06002b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    invoke-super {p0, p1}, Lcom/android/settings/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 205
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080414

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 207
    const/4 v0, 0x2

    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/android/settings/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 209
    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lcom/android/settings/AccountPreferenceBase;->onDestroy()V

    .line 181
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 182
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 223
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 231
    invoke-super {p0, p1}, Lcom/android/settings/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 225
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/AccountSyncSettings;->startSyncForEnabledProviders()V

    move v0, v1

    .line 226
    goto :goto_0

    .line 228
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    move v0, v1

    .line 229
    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferences"
    .parameter "preference"

    .prologue
    const/4 v8, 0x1

    .line 236
    instance-of v7, p2, Lcom/android/settings/SyncStateCheckBoxPreference;

    if-eqz v7, :cond_3

    .line 237
    move-object v0, p2

    check-cast v0, Lcom/android/settings/SyncStateCheckBoxPreference;

    move-object v6, v0

    .line 238
    .local v6, syncPref:Lcom/android/settings/SyncStateCheckBoxPreference;
    invoke-virtual {v6}, Lcom/android/settings/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, authority:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/settings/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 240
    .local v1, account:Landroid/accounts/Account;
    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 241
    .local v4, syncAutomatically:Z
    invoke-virtual {v6}, Lcom/android/settings/SyncStateCheckBoxPreference;->isOneTimeSyncMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 242
    invoke-direct {p0, v1, v2, v8}, Lcom/android/settings/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    move v7, v8

    .line 259
    .end local v1           #account:Landroid/accounts/Account;
    .end local v2           #authority:Ljava/lang/String;
    .end local v4           #syncAutomatically:Z
    .end local v6           #syncPref:Lcom/android/settings/SyncStateCheckBoxPreference;
    :goto_1
    return v7

    .line 244
    .restart local v1       #account:Landroid/accounts/Account;
    .restart local v2       #authority:Ljava/lang/String;
    .restart local v4       #syncAutomatically:Z
    .restart local v6       #syncPref:Lcom/android/settings/SyncStateCheckBoxPreference;
    :cond_1
    invoke-virtual {v6}, Lcom/android/settings/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v5

    .line 245
    .local v5, syncOn:Z
    move v3, v4

    .line 246
    .local v3, oldSyncState:Z
    if-eq v5, v3, :cond_0

    .line 248
    invoke-static {v1, v2, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 252
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v5, :cond_0

    .line 253
    :cond_2
    invoke-direct {p0, v1, v2, v5}, Lcom/android/settings/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 259
    .end local v1           #account:Landroid/accounts/Account;
    .end local v2           #authority:Ljava/lang/String;
    .end local v3           #oldSyncState:Z
    .end local v4           #syncAutomatically:Z
    .end local v5           #syncOn:Z
    .end local v6           #syncPref:Lcom/android/settings/SyncStateCheckBoxPreference;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/AccountPreferenceBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 214
    invoke-super {p0, p1}, Lcom/android/settings/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 215
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    move v0, v3

    .line 216
    .local v0, syncActive:Z
    :goto_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v0, :cond_0

    move v2, v3

    :cond_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 217
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 218
    return v3

    .end local v0           #syncActive:Z
    :cond_1
    move v0, v2

    .line 215
    goto :goto_0
.end method

.method protected onSyncStateUpdated()V
    .locals 30

    .prologue
    .line 306
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 307
    .local v11, date:Ljava/util/Date;
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v10

    .line 308
    .local v10, currentSync:Landroid/content/SyncInfo;
    const/16 v22, 0x0

    .line 311
    .local v22, syncIsFailing:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccountSyncSettings;->mAccounts:[Landroid/accounts/Account;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/AccountSyncSettings;->updateAccountCheckboxes([Landroid/accounts/Account;)V

    .line 313
    const/4 v12, 0x0

    .local v12, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    .local v9, count:I
    :goto_0
    if-ge v12, v9, :cond_10

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v17

    .line 315
    .local v17, pref:Landroid/preference/Preference;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/settings/SyncStateCheckBoxPreference;

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 313
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 318
    :cond_0
    move-object/from16 v0, v17

    check-cast v0, Lcom/android/settings/SyncStateCheckBoxPreference;

    move-object/from16 v23, v0

    .line 320
    .local v23, syncPref:Lcom/android/settings/SyncStateCheckBoxPreference;
    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, authority:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 323
    .local v3, account:Landroid/accounts/Account;
    invoke-static {v3, v5}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v18

    .line 324
    .local v18, status:Landroid/content/SyncStatusInfo;
    invoke-static {v3, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v21

    .line 325
    .local v21, syncEnabled:Z
    if-nez v18, :cond_6

    const/16 v26, 0x0

    move/from16 v6, v26

    .line 326
    .local v6, authorityIsPending:Z
    :goto_2
    if-nez v18, :cond_7

    const/16 v26, 0x0

    move/from16 v13, v26

    .line 328
    .local v13, initialSync:Z
    :goto_3
    if-eqz v10, :cond_8

    new-instance v26, Landroid/accounts/Account;

    move-object v0, v10

    iget-object v0, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object v0, v10

    iget-object v0, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    move-object v0, v10

    iget-object v0, v0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    const/16 v26, 0x1

    move/from16 v4, v26

    .line 331
    .local v4, activelySyncing:Z
    :goto_4
    if-eqz v18, :cond_9

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_9

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    const/16 v26, 0x1

    move/from16 v14, v26

    .line 335
    .local v14, lastSyncFailed:Z
    :goto_5
    if-nez v21, :cond_1

    const/4 v14, 0x0

    .line 336
    :cond_1
    if-eqz v14, :cond_2

    if-nez v4, :cond_2

    if-nez v6, :cond_2

    .line 337
    const/16 v22, 0x1

    .line 339
    :cond_2
    sget-boolean v26, Lcom/android/settings/AccountSyncSettings;->LDEBUG:Z

    if-eqz v26, :cond_3

    .line 340
    const-string v26, "AccountSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Update sync status: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " active = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " pend ="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_3
    if-nez v18, :cond_a

    const-wide/16 v26, 0x0

    move-wide/from16 v19, v26

    .line 345
    .local v19, successEndTime:J
    :goto_6
    const-wide/16 v26, 0x0

    cmp-long v26, v19, v26

    if-eqz v26, :cond_b

    .line 346
    move-object v0, v11

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 347
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccountSyncSettings;->mDateFormat:Ljava/text/DateFormat;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccountSyncSettings;->mTimeFormat:Ljava/text/DateFormat;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 349
    .local v25, timeString:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 353
    .end local v25           #timeString:Ljava/lang/String;
    :goto_7
    invoke-static {v3, v5}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v24

    .line 355
    .local v24, syncState:I
    if-eqz v4, :cond_c

    if-ltz v24, :cond_c

    if-nez v13, :cond_c

    const/16 v26, 0x1

    :goto_8
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/SyncStateCheckBoxPreference;->setActive(Z)V

    .line 357
    if-eqz v6, :cond_d

    if-ltz v24, :cond_d

    if-nez v13, :cond_d

    const/16 v26, 0x1

    :goto_9
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/SyncStateCheckBoxPreference;->setPending(Z)V

    .line 360
    move-object/from16 v0, v23

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/settings/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 361
    const-string v26, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 363
    .local v8, connManager:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v15

    .line 364
    .local v15, masterSyncAutomatically:Z
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v7

    .line 365
    .local v7, backgroundDataEnabled:Z
    if-eqz v15, :cond_4

    if-nez v7, :cond_e

    :cond_4
    const/16 v26, 0x1

    move/from16 v16, v26

    .line 366
    .local v16, oneTimeSyncMode:Z
    :goto_a
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/SyncStateCheckBoxPreference;->setOneTimeSyncMode(Z)V

    .line 367
    if-nez v16, :cond_5

    if-eqz v21, :cond_f

    :cond_5
    const/16 v26, 0x1

    :goto_b
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/SyncStateCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 325
    .end local v4           #activelySyncing:Z
    .end local v6           #authorityIsPending:Z
    .end local v7           #backgroundDataEnabled:Z
    .end local v8           #connManager:Landroid/net/ConnectivityManager;
    .end local v13           #initialSync:Z
    .end local v14           #lastSyncFailed:Z
    .end local v15           #masterSyncAutomatically:Z
    .end local v16           #oneTimeSyncMode:Z
    .end local v19           #successEndTime:J
    .end local v24           #syncState:I
    :cond_6
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/content/SyncStatusInfo;->pending:Z

    move/from16 v26, v0

    move/from16 v6, v26

    goto/16 :goto_2

    .line 326
    .restart local v6       #authorityIsPending:Z
    :cond_7
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/content/SyncStatusInfo;->initialize:Z

    move/from16 v26, v0

    move/from16 v13, v26

    goto/16 :goto_3

    .line 328
    .restart local v13       #initialSync:Z
    :cond_8
    const/16 v26, 0x0

    move/from16 v4, v26

    goto/16 :goto_4

    .line 331
    .restart local v4       #activelySyncing:Z
    :cond_9
    const/16 v26, 0x0

    move/from16 v14, v26

    goto/16 :goto_5

    .line 344
    .restart local v14       #lastSyncFailed:Z
    :cond_a
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v26, v0

    move-wide/from16 v19, v26

    goto/16 :goto_6

    .line 351
    .restart local v19       #successEndTime:J
    :cond_b
    const-string v26, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 355
    .restart local v24       #syncState:I
    :cond_c
    const/16 v26, 0x0

    goto/16 :goto_8

    .line 357
    :cond_d
    const/16 v26, 0x0

    goto :goto_9

    .line 365
    .restart local v7       #backgroundDataEnabled:Z
    .restart local v8       #connManager:Landroid/net/ConnectivityManager;
    .restart local v15       #masterSyncAutomatically:Z
    :cond_e
    const/16 v26, 0x0

    move/from16 v16, v26

    goto :goto_a

    .line 367
    .restart local v16       #oneTimeSyncMode:Z
    :cond_f
    const/16 v26, 0x0

    goto :goto_b

    .line 369
    .end local v3           #account:Landroid/accounts/Account;
    .end local v4           #activelySyncing:Z
    .end local v5           #authority:Ljava/lang/String;
    .end local v6           #authorityIsPending:Z
    .end local v7           #backgroundDataEnabled:Z
    .end local v8           #connManager:Landroid/net/ConnectivityManager;
    .end local v13           #initialSync:Z
    .end local v14           #lastSyncFailed:Z
    .end local v15           #masterSyncAutomatically:Z
    .end local v16           #oneTimeSyncMode:Z
    .end local v17           #pref:Landroid/preference/Preference;
    .end local v18           #status:Landroid/content/SyncStatusInfo;
    .end local v19           #successEndTime:J
    .end local v21           #syncEnabled:Z
    .end local v23           #syncPref:Lcom/android/settings/SyncStateCheckBoxPreference;
    .end local v24           #syncState:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    if-eqz v22, :cond_11

    const/16 v27, 0x0

    :goto_c
    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    return-void

    .line 369
    :cond_11
    const/16 v27, 0x8

    goto :goto_c
.end method
