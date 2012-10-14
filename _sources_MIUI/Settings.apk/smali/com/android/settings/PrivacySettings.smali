.class public Lcom/android/settings/PrivacySettings;
.super Landroid/preference/PreferenceActivity;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAutoRestore:Landroid/preference/CheckBoxPreference;

.field private mBackup:Landroid/preference/CheckBoxPreference;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDialogType:I

.field private mUploadLog:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setBackupEnabled(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 176
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 178
    .local v0, bm:Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 188
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 189
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 183
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_2

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v3, v4

    .line 182
    goto :goto_1

    :cond_2
    move v3, v4

    .line 183
    goto :goto_2
.end method

.method private showEraseBackupDialog()V
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 130
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090401

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 132
    .local v0, msg:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090400

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 138
    return-void
.end method

.method private updateToggles()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 146
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "backup_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    move v0, v4

    .line 148
    .local v0, backupEnabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 150
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    const-string v3, "backup_auto_restore"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 153
    return-void

    .end local v0           #backupEnabled:Z
    :cond_0
    move v0, v5

    .line 146
    goto :goto_0

    .restart local v0       #backupEnabled:Z
    :cond_1
    move v3, v5

    .line 150
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 156
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 158
    iget v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    if-ne v0, v3, :cond_0

    .line 159
    invoke-direct {p0, v1}, Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    .line 167
    :cond_0
    :goto_0
    iput v1, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    .line 168
    return-void

    .line 162
    :cond_1
    iget v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    if-ne v0, v3, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v1, 0x7f040025

    invoke-virtual {p0, v1}, Lcom/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 64
    .local v0, screen:Landroid/preference/PreferenceScreen;
    const-string v1, "backup_data"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    .line 65
    const-string v1, "auto_restore"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    .line 66
    const-string v1, "upload_debug_log"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mUploadLog:Landroid/preference/CheckBoxPreference;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 70
    const-string v1, "backup_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 73
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 98
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_2

    .line 99
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->showEraseBackupDialog()V

    :cond_0
    :goto_0
    move v4, v7

    .line 124
    :goto_1
    return v4

    .line 102
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_4

    .line 105
    const-string v4, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 107
    .local v1, bm:Landroid/app/backup/IBackupManager;
    if-eqz v1, :cond_0

    .line 109
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 111
    .local v2, curState:Z
    :try_start_0
    invoke-interface {v1, v2}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v3

    .line 113
    .local v3, e:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_2

    .line 116
    .end local v1           #bm:Landroid/app/backup/IBackupManager;
    .end local v2           #curState:Z
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mUploadLog:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_0

    .line 117
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mUploadLog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v6

    .line 119
    .local v0, allow:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "upload_log_pref"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v4, v6

    .line 121
    goto :goto_1

    .end local v0           #allow:I
    :cond_5
    move v0, v7

    .line 117
    goto :goto_3
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 78
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 79
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mUploadLog:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "upload_log_pref"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, allow:I
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mUploadLog:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 83
    .end local v0           #allow:I
    :cond_0
    return-void

    .line 81
    .restart local v0       #allow:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    .line 92
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 93
    return-void
.end method
