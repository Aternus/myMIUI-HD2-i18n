.class public Lcom/android/settings/DevelopmentSettings;
.super Landroid/preference/PreferenceActivity;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DevelopmentSettings$1;,
        Lcom/android/settings/DevelopmentSettings$AppInstallationDialogTracker;,
        Lcom/android/settings/DevelopmentSettings$EnableAdbDialogTracker;,
        Lcom/android/settings/DevelopmentSettings$KeepScreenOnDialogTracker;,
        Lcom/android/settings/DevelopmentSettings$CheckResetDialogTracker;,
        Lcom/android/settings/DevelopmentSettings$DialogTracker;
    }
.end annotation


# instance fields
.field private mAllowMockLocation:Landroid/preference/CheckBoxPreference;

.field private mDialogTracker:Lcom/android/settings/DevelopmentSettings$DialogTracker;

.field private mEnableAdb:Landroid/preference/CheckBoxPreference;

.field private mKeepScreenOn:Landroid/preference/CheckBoxPreference;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 158
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DevelopmentSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings;->setNonMarketAppsAllowed(Z)V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogTracker:Lcom/android/settings/DevelopmentSettings$DialogTracker;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogTracker:Lcom/android/settings/DevelopmentSettings$DialogTracker;

    invoke-virtual {v0}, Lcom/android/settings/DevelopmentSettings$DialogTracker;->dismiss()V

    .line 249
    :cond_0
    return-void
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    return-void

    .line 259
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings/DevelopmentSettings$DialogTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogTracker:Lcom/android/settings/DevelopmentSettings$DialogTracker;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogTracker:Lcom/android/settings/DevelopmentSettings$DialogTracker;

    invoke-virtual {v0}, Lcom/android/settings/DevelopmentSettings$DialogTracker;->dismiss()V

    .line 242
    :cond_0
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings;->mDialogTracker:Lcom/android/settings/DevelopmentSettings$DialogTracker;

    .line 243
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogTracker:Lcom/android/settings/DevelopmentSettings$DialogTracker;

    invoke-virtual {v0}, Lcom/android/settings/DevelopmentSettings$DialogTracker;->show()V

    .line 244
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 184
    const v0, 0x7f040013

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 186
    const-string v0, "toggle_install_applications"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    .line 187
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->isNonMarketAppsAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 189
    const-string v0, "enable_adb"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 190
    const-string v0, "keep_screen_on"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    .line 191
    const-string v0, "allow_mock_location"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    .line 192
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialog()V

    .line 254
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 255
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 209
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 236
    :goto_0
    return v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    new-instance v0, Lcom/android/settings/DevelopmentSettings$EnableAdbDialogTracker;

    invoke-direct {v0, p0}, Lcom/android/settings/DevelopmentSettings$EnableAdbDialogTracker;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->showDialog(Lcom/android/settings/DevelopmentSettings$DialogTracker;)V

    :cond_1
    :goto_1
    move v0, v3

    .line 236
    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 220
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    new-instance v0, Lcom/android/settings/DevelopmentSettings$KeepScreenOnDialogTracker;

    invoke-direct {v0, p0}, Lcom/android/settings/DevelopmentSettings$KeepScreenOnDialogTracker;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->showDialog(Lcom/android/settings/DevelopmentSettings$DialogTracker;)V

    goto :goto_1

    .line 223
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mock_location"

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2

    .line 228
    :cond_7
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 230
    new-instance v0, Lcom/android/settings/DevelopmentSettings$AppInstallationDialogTracker;

    invoke-direct {v0, p0}, Lcom/android/settings/DevelopmentSettings$AppInstallationDialogTracker;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    invoke-direct {p0, v0}, Lcom/android/settings/DevelopmentSettings;->showDialog(Lcom/android/settings/DevelopmentSettings$DialogTracker;)V

    goto :goto_1

    .line 232
    :cond_8
    invoke-direct {p0, v3}, Lcom/android/settings/DevelopmentSettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 196
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 198
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mock_location"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    return-void

    :cond_0
    move v1, v3

    .line 198
    goto :goto_0

    :cond_1
    move v1, v3

    .line 200
    goto :goto_1

    :cond_2
    move v1, v3

    .line 202
    goto :goto_2
.end method
