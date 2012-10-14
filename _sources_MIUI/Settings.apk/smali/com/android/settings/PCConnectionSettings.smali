.class public Lcom/android/settings/PCConnectionSettings;
.super Landroid/preference/PreferenceActivity;
.source "PCConnectionSettings.java"


# instance fields
.field private mAskUser:Landroid/preference/CheckBoxPreference;

.field private mMountStorage:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mUsbMode:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/android/settings/PCConnectionSettings;->addPreferencesFromResource(I)V

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/PCConnectionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PCConnectionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 29
    const-string v0, "usb_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/PCConnectionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/PCConnectionSettings;->mUsbMode:Landroid/preference/PreferenceCategory;

    .line 30
    const-string v0, "ask_user"

    invoke-virtual {p0, v0}, Lcom/android/settings/PCConnectionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PCConnectionSettings;->mAskUser:Landroid/preference/CheckBoxPreference;

    .line 31
    const-string v0, "mount_storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/PCConnectionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PCConnectionSettings;->mMountStorage:Landroid/preference/CheckBoxPreference;

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/PCConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/PCConnectionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PCConnectionSettings;->mUsbMode:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 36
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "usb_mode"

    const-string v5, "ask_user_usb_mode"

    .line 54
    iget-object v0, p0, Lcom/android/settings/PCConnectionSettings;->mMountStorage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/android/settings/PCConnectionSettings;->mMountStorage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/settings/PCConnectionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "usb_mode"

    const/4 v1, 0x3

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 57
    iget-object v0, p0, Lcom/android/settings/PCConnectionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "ask_user_usb_mode"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    iget-object v0, p0, Lcom/android/settings/PCConnectionSettings;->mUsbMode:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/PCConnectionSettings;->mAskUser:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 67
    :cond_0
    :goto_0
    return v3

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/settings/PCConnectionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "usb_mode"

    const/4 v1, 0x2

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    iget-object v0, p0, Lcom/android/settings/PCConnectionSettings;->mUsbMode:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/PCConnectionSettings;->mAskUser:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 62
    iget-object v0, p0, Lcom/android/settings/PCConnectionSettings;->mAskUser:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/PCConnectionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "ask_user_usb_mode"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/android/settings/PCConnectionSettings;->mAskUser:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/settings/PCConnectionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "ask_user_usb_mode"

    iget-object v1, p0, Lcom/android/settings/PCConnectionSettings;->mAskUser:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    :goto_2
    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 40
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 41
    iget-object v1, p0, Lcom/android/settings/PCConnectionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "usb_mode"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 42
    .local v0, mode:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/settings/PCConnectionSettings;->mUsbMode:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/PCConnectionSettings;->mAskUser:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 44
    iget-object v1, p0, Lcom/android/settings/PCConnectionSettings;->mMountStorage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 50
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/settings/PCConnectionSettings;->mUsbMode:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/PCConnectionSettings;->mAskUser:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 47
    iget-object v1, p0, Lcom/android/settings/PCConnectionSettings;->mMountStorage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 48
    iget-object v1, p0, Lcom/android/settings/PCConnectionSettings;->mAskUser:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/PCConnectionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "ask_user_usb_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1
.end method
