.class public Lcom/android/deskclock/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private refresh()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 89
    const-string v3, "alarm_in_silent_mode"

    invoke-virtual {p0, v3}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 91
    .local v0, alarmInSilentModePref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mode_ringer_streams_affected"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 94
    .local v1, silentModeStreams:I
    and-int/lit8 v3, v1, 0x10

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 97
    const-string v3, "snooze_duration"

    invoke-virtual {p0, v3}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 99
    .local v2, snooze:Landroid/preference/ListPreference;
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    return-void

    .end local v2           #snooze:Landroid/preference/ListPreference;
    :cond_0
    move v3, v5

    .line 94
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/android/deskclock/SettingsActivity;->addPreferencesFromResource(I)V

    .line 48
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 82
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    move-object v2, v0

    .line 83
    .local v2, listPref:Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, idx:I
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    const/4 v3, 0x1

    return v3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const-string v5, "mode_ringer_streams_affected"

    .line 59
    const-string v3, "alarm_in_silent_mode"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v1, v0

    .line 61
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mode_ringer_streams_affected"

    const/4 v4, 0x0

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 65
    .local v2, ringerModeStreamTypes:I
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    and-int/lit8 v2, v2, -0x11

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mode_ringer_streams_affected"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    const/4 v3, 0x1

    .line 78
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    .end local v2           #ringerModeStreamTypes:I
    :goto_1
    return v3

    .line 68
    .restart local v1       #pref:Landroid/preference/CheckBoxPreference;
    .restart local v2       #ringerModeStreamTypes:I
    :cond_0
    or-int/lit8 v2, v2, 0x10

    goto :goto_0

    .line 78
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    .end local v2           #ringerModeStreamTypes:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 53
    invoke-direct {p0}, Lcom/android/deskclock/SettingsActivity;->refresh()V

    .line 54
    return-void
.end method
