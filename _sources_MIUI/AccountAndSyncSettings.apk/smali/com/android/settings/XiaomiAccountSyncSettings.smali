.class public Lcom/android/settings/XiaomiAccountSyncSettings;
.super Lcom/android/settings/AccountSyncSettings;
.source "XiaomiAccountSyncSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;
    }
.end annotation


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mUserAccountCategory:Landroid/preference/PreferenceCategory;

.field private mUserContactCategory:Landroid/preference/PreferenceCategory;

.field private mUserDetailPref:Landroid/preference/Preference;

.field private mUserIdPref:Landroid/preference/Preference;

.field private mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;

.field private mUserNicknamePref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/AccountSyncSettings;-><init>()V

    .line 360
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/XiaomiAccountSyncSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/XiaomiAccountSyncSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/XiaomiAccountSyncSettings;->reload()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/XiaomiAccountSyncSettings;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/XiaomiAccountSyncSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/XiaomiAccountSyncSettings;->showErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/XiaomiAccountSyncSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/XiaomiAccountSyncSettings;->initValueAndContact()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/XiaomiAccountSyncSettings;)Landroid/accounts/AccountManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method private initValueAndContact()V
    .locals 20

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v18, v0

    const-string v19, "mid"

    invoke-virtual/range {v17 .. v19}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 129
    .local v11, mid:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserIdPref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserIdPref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 136
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v18, v0

    const-string v19, "nickname"

    invoke-virtual/range {v17 .. v19}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 137
    .local v12, nickname:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserNicknamePref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserNicknamePref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserNicknamePref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserNicknamePref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setRightIndicatorVisibility(I)V

    .line 149
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserContactCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v18, v0

    const-string v19, "EM"

    invoke-virtual/range {v17 .. v19}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, emailString:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 152
    new-instance v3, Landroid/preference/Preference;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 153
    .local v3, defaultEmailPref:Landroid/preference/Preference;
    const v17, 0x7f060034

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 154
    const-string v17, "pref_key_user_email"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 155
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 156
    const/16 v17, 0x0

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setRightIndicatorVisibility(I)V

    .line 157
    const/16 v17, 0x1

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 158
    const v17, 0x7f060042

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/XiaomiAccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserContactCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 173
    .end local v3           #defaultEmailPref:Landroid/preference/Preference;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v18, v0

    const-string v19, "PH"

    invoke-virtual/range {v17 .. v19}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 174
    .local v15, phoneString:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 175
    new-instance v4, Landroid/preference/Preference;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 176
    .local v4, defaultPhonePref:Landroid/preference/Preference;
    const v17, 0x7f06003a

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 177
    const-string v17, "pref_key_user_phone"

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 178
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 179
    const/16 v17, 0x0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setRightIndicatorVisibility(I)V

    .line 180
    const/16 v17, 0x1

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 181
    const v17, 0x7f060042

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/XiaomiAccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserContactCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 195
    .end local v4           #defaultPhonePref:Landroid/preference/Preference;
    :cond_1
    return-void

    .line 133
    .end local v7           #emailString:Ljava/lang/String;
    .end local v12           #nickname:Ljava/lang/String;
    .end local v15           #phoneString:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserIdPref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    goto/16 :goto_0

    .line 143
    .restart local v12       #nickname:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserNicknamePref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserNicknamePref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const v18, 0x7f060042

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/XiaomiAccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserNicknamePref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserNicknamePref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setRightIndicatorVisibility(I)V

    goto/16 :goto_1

    .line 161
    .restart local v7       #emailString:Ljava/lang/String;
    :cond_4
    const-string v17, ";"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, emails:[Ljava/lang/String;
    move-object v2, v8

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v10, :cond_0

    aget-object v5, v2, v9

    .line 163
    .local v5, email:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 164
    new-instance v6, Landroid/preference/Preference;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 165
    .local v6, emailPref:Landroid/preference/Preference;
    const v17, 0x7f060034

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 166
    const/16 v17, 0x1

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 167
    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserContactCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 162
    .end local v6           #emailPref:Landroid/preference/Preference;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 184
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #email:Ljava/lang/String;
    .end local v8           #emails:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .restart local v15       #phoneString:Ljava/lang/String;
    :cond_6
    const-string v17, ";"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 185
    .local v16, phones:[Ljava/lang/String;
    move-object/from16 v2, v16

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v10, v2

    .restart local v10       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_3
    if-ge v9, v10, :cond_1

    aget-object v13, v2, v9

    .line 186
    .local v13, phone:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 187
    new-instance v14, Landroid/preference/Preference;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 188
    .local v14, phonePref:Landroid/preference/Preference;
    const v17, 0x7f06003a

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 189
    const/16 v17, 0x1

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 190
    invoke-virtual {v14, v13}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserContactCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 185
    .end local v14           #phonePref:Landroid/preference/Preference;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method private initWhenCreate()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/settings/XiaomiAccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 91
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->addPreferencesFromResource(I)V

    .line 93
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    .line 94
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mProgress:Landroid/widget/ProgressBar;

    .line 96
    const-string v0, "pref_key_user_id"

    invoke-virtual {p0, v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserIdPref:Landroid/preference/Preference;

    .line 97
    const-string v0, "pref_key_user_detail"

    invoke-virtual {p0, v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserDetailPref:Landroid/preference/Preference;

    .line 98
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserDetailPref:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserDetailPref:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setRightIndicatorVisibility(I)V

    .line 100
    const-string v0, "pref_key_user_nickname"

    invoke-virtual {p0, v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserNicknamePref:Landroid/preference/Preference;

    .line 101
    const-string v0, "pref_key_user_mitalk_sync"

    invoke-virtual {p0, v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;

    .line 102
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 104
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageTextButton;

    invoke-virtual {v0}, Landroid/widget/ImageTextButton;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f06005e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 106
    const-string v0, "pref_category_user_account"

    invoke-virtual {p0, v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserAccountCategory:Landroid/preference/PreferenceCategory;

    .line 107
    const-string v0, "pref_category_user_contact"

    invoke-virtual {p0, v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserContactCategory:Landroid/preference/PreferenceCategory;

    .line 109
    invoke-direct {p0}, Lcom/android/settings/XiaomiAccountSyncSettings;->initValueAndContact()V

    .line 110
    return-void
.end method

.method private initWhenStart()V
    .locals 3

    .prologue
    .line 113
    new-instance v1, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;

    invoke-direct {v1, p0}, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;-><init>(Lcom/android/settings/XiaomiAccountSyncSettings;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/XiaomiAccountSyncSettings$AccountInfoCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 114
    invoke-direct {p0}, Lcom/android/settings/XiaomiAccountSyncSettings;->isMitalkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserAccountCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserDetailPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 116
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    :cond_0
    const-string v1, "persist.sys.mitalk.enable"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 121
    .local v0, isMitalkSync:Z
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 122
    if-nez v0, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserAccountCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserDetailPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 125
    :cond_1
    return-void
.end method

.method private isMitalkAvailable()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/XiaomiAccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 200
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.xiaomi.channel"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 201
    .local v1, pckInfo:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .local v3, version:I
    const/16 v4, 0xe6

    if-lt v3, v4, :cond_0

    const/4 v4, 0x1

    .line 209
    .end local v1           #pckInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #version:I
    :goto_0
    return v4

    .restart local v1       #pckInfo:Landroid/content/pm/PackageInfo;
    .restart local v3       #version:I
    :cond_0
    move v4, v6

    .line 206
    goto :goto_0

    .line 207
    .end local v1           #pckInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #version:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 208
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v4, v6

    .line 209
    goto :goto_0
.end method

.method private reload()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/XiaomiAccountSyncSettings;->initWhenCreate()V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/XiaomiAccountSyncSettings;->initWhenStart()V

    .line 87
    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "errMessage"

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/settings/XiaomiAccountSyncSettings;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 474
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 476
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 311
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/XiaomiAccountSyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/XiaomiAccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/AccountSyncSettings;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/XiaomiAccountSyncSettings;->initWhenCreate()V

    .line 76
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/high16 v4, 0x104

    const/16 v3, 0xc8

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, dialog:Landroid/app/Dialog;
    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 217
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060043

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060044

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06005e

    new-instance v4, Lcom/android/settings/XiaomiAccountSyncSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/XiaomiAccountSyncSettings$1;-><init>(Lcom/android/settings/XiaomiAccountSyncSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move-object v2, v0

    .line 295
    :goto_0
    return-object v2

    .line 259
    :cond_0
    if-eq p1, v3, :cond_1

    const/16 v2, 0xc9

    if-ne p1, v2, :cond_5

    .line 260
    :cond_1
    if-ne p1, v3, :cond_2

    const/4 v2, 0x1

    move v1, v2

    .line 262
    .local v1, isEnable:Z
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_3

    const v3, 0x7f06005a

    :goto_2
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v1, :cond_4

    const v3, 0x7f06005b

    :goto_3
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/XiaomiAccountSyncSettings$3;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/XiaomiAccountSyncSettings$3;-><init>(Lcom/android/settings/XiaomiAccountSyncSettings;Z)V

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/XiaomiAccountSyncSettings$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/XiaomiAccountSyncSettings$2;-><init>(Lcom/android/settings/XiaomiAccountSyncSettings;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move-object v2, v0

    .line 293
    goto :goto_0

    .line 260
    .end local v1           #isEnable:Z
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_1

    .line 262
    .restart local v1       #isEnable:Z
    :cond_3
    const v3, 0x7f06005c

    goto :goto_2

    :cond_4
    const v3, 0x7f06005d

    goto :goto_3

    .line 295
    .end local v1           #isEnable:Z
    :cond_5
    invoke-super {p0, p1}, Lcom/android/settings/AccountSyncSettings;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const-class v2, Lcom/android/settings/XiaomiAccountBind;

    const-string v6, "token"

    const-string v5, "extra_token"

    const-string v4, "extra_bind_type"

    .line 321
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserDetailPref:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 323
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.channel.NAME_CARD_XT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    const-string v1, "account"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0, v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_0
    :goto_0
    return v7

    .line 326
    :catch_0
    move-exception v0

    .line 327
    const-string v1, "XiaomiAccountSyncSettings"

    const-string v2, "miliao not handle this intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v1, "XiaomiAccountSyncSettings"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mUserMitalkSyncPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc8

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->showDialog(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xc9

    goto :goto_1

    .line 332
    :cond_3
    const-string v0, "pref_key_user_email"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/XiaomiAccountBind;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v3, "token"

    invoke-virtual {v1, v2, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 336
    const-string v2, "extra_token"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    :cond_4
    const-string v1, "extra_bind_type"

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    invoke-virtual {p0, v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 340
    :cond_5
    const-string v0, "pref_key_user_phone"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/XiaomiAccountBind;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v3, "token"

    invoke-virtual {v1, v2, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 344
    const-string v2, "extra_token"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    :cond_6
    const-string v1, "extra_bind_type"

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0, v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 348
    :cond_7
    const-string v0, "pref_key_user_nickname"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/XiaomiAccountBind;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountSyncSettings;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    const-string v3, "token"

    invoke-virtual {v1, v2, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 352
    const-string v2, "extra_token"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    :cond_8
    const-string v1, "extra_bind_type"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/settings/XiaomiAccountSyncSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/settings/AccountSyncSettings;->onStart()V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/XiaomiAccountSyncSettings;->initWhenStart()V

    .line 82
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method
