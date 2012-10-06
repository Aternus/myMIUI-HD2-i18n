.class public Lcom/android/settings/AddAccountSettings;
.super Lcom/android/settings/AccountPreferenceBase;
.source "AddAccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AddAccountSettings$ProviderEntry;
    }
.end annotation


# static fields
.field private static final LDEBUG:Z


# instance fields
.field private mAddAccountGroup:Landroid/preference/PreferenceGroup;

.field private mAuthorities:[Ljava/lang/String;

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/AddAccountSettings$ProviderEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "AccountSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/AddAccountSettings;->LDEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/AccountPreferenceBase;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AddAccountSettings;->mProviderList:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Lcom/android/settings/AddAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AddAccountSettings$1;-><init>(Lcom/android/settings/AddAccountSettings;)V

    iput-object v0, p0, Lcom/android/settings/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/settings/AddAccountSettings;->LDEBUG:Z

    return v0
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 8
    .parameter "accountType"

    .prologue
    const/4 v2, 0x0

    .line 148
    const/4 v4, 0x0

    .line 149
    .local v4, bundle:Landroid/os/Bundle;
    const-string v0, "com.miui.auth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v4, Landroid/os/Bundle;

    .end local v4           #bundle:Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 151
    .restart local v4       #bundle:Landroid/os/Bundle;
    const-string v0, "showDetail"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v1, p1

    move-object v3, v2

    move-object v5, p0

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 161
    return-void
.end method


# virtual methods
.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/AccountPreferenceBase;->onAccountsUpdated([Landroid/accounts/Account;)V

    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 24

    .prologue
    .line 67
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccountPreferenceBase;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccountPreferenceBase;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    move-object/from16 v21, v0

    aget-object v21, v21, v14

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object v7, v0

    .line 69
    .local v7, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/settings/AddAccountSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 73
    .local v20, providerName:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/settings/AddAccountSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 74
    .local v6, accountAuths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 75
    .local v9, addAccountPref:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AddAccountSettings;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AddAccountSettings;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_0

    if-eqz v6, :cond_0

    .line 76
    const/4 v9, 0x0

    .line 77
    const/16 v16, 0x0

    .local v16, k:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AddAccountSettings;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AddAccountSettings;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v16

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 79
    const/4 v9, 0x1

    .line 84
    .end local v16           #k:I
    :cond_0
    if-eqz v9, :cond_5

    .line 85
    const-string v21, "com.miui.auth"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 86
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v21

    const-string v22, "com.miui.auth"

    invoke-virtual/range {v21 .. v22}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 87
    .local v8, accts:[Landroid/accounts/Account;
    move-object v0, v8

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_3

    const/16 v21, 0x1

    move/from16 v13, v21

    .line 88
    .local v13, hasAccount:Z
    :goto_2
    if-nez v13, :cond_1

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AddAccountSettings;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/settings/AddAccountSettings$ProviderEntry;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/AddAccountSettings$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v8           #accts:[Landroid/accounts/Account;
    .end local v13           #hasAccount:Z
    :cond_1
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 77
    .restart local v16       #k:I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 87
    .end local v16           #k:I
    .restart local v8       #accts:[Landroid/accounts/Account;
    :cond_3
    const/16 v21, 0x0

    move/from16 v13, v21

    goto :goto_2

    .line 92
    .end local v8           #accts:[Landroid/accounts/Account;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AddAccountSettings;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/settings/AddAccountSettings$ProviderEntry;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/AddAccountSettings$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 95
    :cond_5
    sget-boolean v21, Lcom/android/settings/AddAccountSettings;->LDEBUG:Z

    if-eqz v21, :cond_1

    const-string v21, "AccountSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Skipped pref "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ": has no authority we need"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 99
    .end local v6           #accountAuths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #accountType:Ljava/lang/String;
    .end local v9           #addAccountPref:Z
    .end local v20           #providerName:Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AddAccountSettings;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AddAccountSettings;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/AddAccountSettings$ProviderEntry;

    #getter for: Lcom/android/settings/AddAccountSettings$ProviderEntry;->type:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/AddAccountSettings$ProviderEntry;->access$000(Lcom/android/settings/AddAccountSettings$ProviderEntry;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/AddAccountSettings;->addAccount(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/AddAccountSettings;->finish()V

    .line 115
    :cond_7
    :goto_4
    return-void

    .line 103
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AddAccountSettings;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_9

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AddAccountSettings;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AddAccountSettings;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/AddAccountSettings$ProviderEntry;

    .line 106
    .local v19, pref:Lcom/android/settings/AddAccountSettings$ProviderEntry;
    #getter for: Lcom/android/settings/AddAccountSettings$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/AddAccountSettings$ProviderEntry;->access$000(Lcom/android/settings/AddAccountSettings$ProviderEntry;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/AddAccountSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 107
    .local v12, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v18, Lcom/android/settings/ProviderPreference;

    #getter for: Lcom/android/settings/AddAccountSettings$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/AddAccountSettings$ProviderEntry;->access$000(Lcom/android/settings/AddAccountSettings$ProviderEntry;)Ljava/lang/String;

    move-result-object v21

    #getter for: Lcom/android/settings/AddAccountSettings$ProviderEntry;->name:Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/AddAccountSettings$ProviderEntry;->access$100(Lcom/android/settings/AddAccountSettings$ProviderEntry;)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object v3, v12

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 108
    .local v18, p:Lcom/android/settings/ProviderPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AddAccountSettings;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 111
    .end local v12           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v18           #p:Lcom/android/settings/ProviderPreference;
    .end local v19           #pref:Lcom/android/settings/AddAccountSettings$ProviderEntry;
    :cond_9
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    .line 112
    .local v11, auths:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AddAccountSettings;->mAuthorities:[Ljava/lang/String;

    move-object v10, v0

    .local v10, arr$:[Ljava/lang/String;
    move-object v0, v10

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_6
    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    aget-object v5, v10, v15

    .local v5, a:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 113
    .end local v5           #a:Ljava/lang/String;
    :cond_a
    const-string v21, "AccountSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "No providers found for authorities: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/android/settings/AddAccountSettings;->setContentView(I)V

    .line 58
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/android/settings/AddAccountSettings;->addPreferencesFromResource(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authorities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AddAccountSettings;->mAuthorities:[Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/AddAccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AddAccountSettings;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/AddAccountSettings;->updateAuthDescriptions()V

    .line 62
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 139
    instance-of v2, p2, Lcom/android/settings/ProviderPreference;

    if-eqz v2, :cond_1

    .line 140
    move-object v0, p2

    check-cast v0, Lcom/android/settings/ProviderPreference;

    move-object v1, v0

    .line 141
    .local v1, pref:Lcom/android/settings/ProviderPreference;
    sget-boolean v2, Lcom/android/settings/AddAccountSettings;->LDEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to add account of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/settings/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-virtual {v1}, Lcom/android/settings/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/AddAccountSettings;->addAccount(Ljava/lang/String;)V

    .line 144
    .end local v1           #pref:Lcom/android/settings/ProviderPreference;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method
