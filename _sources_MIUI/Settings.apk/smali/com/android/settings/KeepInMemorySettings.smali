.class public Lcom/android/settings/KeepInMemorySettings;
.super Landroid/preference/PreferenceActivity;
.source "KeepInMemorySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContactsKeptInMem:Landroid/preference/CheckBoxPreference;

.field private mLauncherKeptInMem:Landroid/preference/CheckBoxPreference;

.field private mMmsKeptInMem:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/android/settings/KeepInMemorySettings;->addPreferencesFromResource(I)V

    .line 25
    const-string v0, "mms_kept_in_memory"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeepInMemorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeepInMemorySettings;->mMmsKeptInMem:Landroid/preference/CheckBoxPreference;

    .line 26
    iget-object v0, p0, Lcom/android/settings/KeepInMemorySettings;->mMmsKeptInMem:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 27
    const-string v0, "contacts_kept_in_memory"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeepInMemorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeepInMemorySettings;->mContactsKeptInMem:Landroid/preference/CheckBoxPreference;

    .line 28
    iget-object v0, p0, Lcom/android/settings/KeepInMemorySettings;->mContactsKeptInMem:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 29
    const-string v0, "launcher_kept_in_memory"

    invoke-virtual {p0, v0}, Lcom/android/settings/KeepInMemorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/KeepInMemorySettings;->mLauncherKeptInMem:Landroid/preference/CheckBoxPreference;

    .line 30
    iget-object v0, p0, Lcom/android/settings/KeepInMemorySettings;->mLauncherKeptInMem:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 31
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 51
    iget-object v1, p0, Lcom/android/settings/KeepInMemorySettings;->mMmsKeptInMem:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_2

    .line 52
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 53
    .local v0, isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeepInMemorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keep_mms_in_memory"

    if-eqz v0, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    .end local v0           #isChecked:Z
    :cond_1
    :goto_0
    return v4

    .line 56
    .restart local p2
    :cond_2
    iget-object v1, p0, Lcom/android/settings/KeepInMemorySettings;->mContactsKeptInMem:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_4

    .line 57
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 58
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeepInMemorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keep_contacts_in_memory"

    if-eqz v0, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 61
    .end local v0           #isChecked:Z
    .restart local p2
    :cond_4
    iget-object v1, p0, Lcom/android/settings/KeepInMemorySettings;->mLauncherKeptInMem:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    .line 62
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 63
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeepInMemorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keep_launcher_in_memory"

    if-eqz v0, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 35
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 36
    iget-object v0, p0, Lcom/android/settings/KeepInMemorySettings;->mMmsKeptInMem:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeepInMemorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keep_mms_in_memory"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 40
    iget-object v0, p0, Lcom/android/settings/KeepInMemorySettings;->mContactsKeptInMem:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeepInMemorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keep_contacts_in_memory"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/settings/KeepInMemorySettings;->mLauncherKeptInMem:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeepInMemorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keep_launcher_in_memory"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 47
    return-void

    :cond_0
    move v1, v4

    .line 36
    goto :goto_0

    :cond_1
    move v1, v4

    .line 40
    goto :goto_1

    :cond_2
    move v1, v4

    .line 44
    goto :goto_2
.end method
