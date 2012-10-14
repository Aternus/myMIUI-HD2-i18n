.class public Lcom/android/settings/SecuritySettings;
.super Landroid/preference/PreferenceActivity;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecuritySettings$1;,
        Lcom/android/settings/SecuritySettings$CredentialStorage;
    }
.end annotation


# instance fields
.field private mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

.field private mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mUploadLog:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings/SecuritySettings$CredentialStorage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;-><init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    .line 189
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 85
    :cond_0
    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 90
    const v2, 0x7f0901b9

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 92
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.IccLockSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 93
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 94
    const v3, 0x7f0901ba

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 95
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 96
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 99
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 100
    const v2, 0x7f0900c9

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 101
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 103
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 104
    const-string v3, "show_password"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 105
    const v3, 0x7f0902d4

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 106
    const v3, 0x7f0902d5

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 107
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 108
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 111
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 112
    const v2, 0x7f0900ea

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 113
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 115
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 116
    const v3, 0x7f0900eb

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 117
    const v3, 0x7f0900ec

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 118
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 119
    const-class v4, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 120
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 121
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 124
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 125
    const v2, 0x7f0903de

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 126
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 127
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    #calls: Lcom/android/settings/SecuritySettings$CredentialStorage;->createPreferences(Landroid/preference/PreferenceCategory;I)V
    invoke-static {v2, v0, v5}, Lcom/android/settings/SecuritySettings$CredentialStorage;->access$100(Lcom/android/settings/SecuritySettings$CredentialStorage;Landroid/preference/PreferenceCategory;I)V

    .line 129
    const v0, 0x7f040011

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 130
    const-string v0, "upload_debug_log"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mUploadLog:Landroid/preference/CheckBoxPreference;

    .line 131
    return-object v1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 185
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 186
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 75
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 77
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 78
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 159
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    :goto_0
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    move v2, v5

    .line 173
    :goto_1
    return v2

    :cond_1
    move v4, v5

    .line 162
    goto :goto_0

    .line 164
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mUploadLog:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mUploadLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v6

    .line 167
    .local v0, allow:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "upload_log_pref"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v6

    .line 169
    goto :goto_1

    .end local v0           #allow:I
    :cond_3
    move v0, v5

    .line 165
    goto :goto_2
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 136
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 138
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "show_password"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    :goto_0
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 141
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    invoke-virtual {v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->resume()V

    .line 143
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mUploadLog:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, default_value:I
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 147
    .local v3, systemVersion:Ljava/lang/String;
    const-string v2, "\\d+.\\d+.\\d+"

    .line 148
    .local v2, regularExpression:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    const/4 v1, 0x1

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "upload_log_pref"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 152
    .local v0, allow:I
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mUploadLog:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    move v5, v7

    :goto_1
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 154
    .end local v0           #allow:I
    .end local v1           #default_value:I
    .end local v2           #regularExpression:Ljava/lang/String;
    .end local v3           #systemVersion:Ljava/lang/String;
    :cond_1
    return-void

    :cond_2
    move v5, v8

    .line 138
    goto :goto_0

    .restart local v0       #allow:I
    .restart local v1       #default_value:I
    .restart local v2       #regularExpression:Ljava/lang/String;
    .restart local v3       #systemVersion:Ljava/lang/String;
    :cond_3
    move v5, v8

    .line 152
    goto :goto_1
.end method
