.class public Lcom/android/settings/TrackballSettings;
.super Landroid/preference/PreferenceActivity;
.source "TrackballSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBreathingLightColor:Landroid/preference/ListPreference;

.field private mBreathingLightFreq:Landroid/preference/ListPreference;

.field private mCallBreathingLightColor:Landroid/preference/ListPreference;

.field private mCallBreathingLightFreq:Landroid/preference/ListPreference;

.field private mMmsBreathingLightColor:Landroid/preference/ListPreference;

.field private mMmsBreathingLightFreq:Landroid/preference/ListPreference;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setColor(Landroid/preference/ListPreference;I)V
    .locals 6
    .parameter "pref"
    .parameter "color"

    .prologue
    .line 119
    const/4 v2, -0x1

    .line 120
    .local v2, i:I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/CharSequence;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 121
    .local v1, colorString:Ljava/lang/CharSequence;
    add-int/lit8 v2, v2, 0x1

    .line 122
    check-cast v1, Ljava/lang/String;

    .end local v1           #colorString:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    if-ne p2, v5, :cond_1

    .line 123
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 127
    :cond_0
    return-void

    .line 120
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f050045

    const v10, 0x7f050044

    const v9, 0x7f050043

    const v7, 0x7f050042

    const/4 v8, 0x1

    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v5, 0x7f040037

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->addPreferencesFromResource(I)V

    .line 41
    const-string v5, "notification_pulse"

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/TrackballSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    .line 42
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 44
    const-string v5, "breathing_light_color"

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    .line 45
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    const-string v5, "breathing_light_freq"

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    .line 47
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    const-string v5, "call_breathing_light_color"

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    .line 50
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    const-string v5, "call_breathing_light_freq"

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightFreq:Landroid/preference/ListPreference;

    .line 52
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 54
    const-string v5, "mms_breathing_light_color"

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    .line 55
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    const-string v5, "mms_breathing_light_freq"

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightFreq:Landroid/preference/ListPreference;

    .line 57
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060074

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 61
    .local v2, defaultColor:I
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "breathing_light_color"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 63
    .local v1, color:I
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_breathing_light_color"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, callColor:I
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mms_breathing_light_color"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 68
    .local v4, mmsColor:I
    sget-boolean v5, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v5, :cond_1

    .line 69
    const v5, 0x7f090461

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->setTitle(I)V

    .line 70
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    const v6, 0x7f090462

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 71
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 72
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v10}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 74
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 75
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v10}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 77
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 78
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v10}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 80
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    const v6, 0x7f090463

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 82
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f090464

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 100
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v1}, Lcom/android/settings/TrackballSettings;->setColor(Landroid/preference/ListPreference;I)V

    .line 101
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v0}, Lcom/android/settings/TrackballSettings;->setColor(Landroid/preference/ListPreference;I)V

    .line 102
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v4}, Lcom/android/settings/TrackballSettings;->setColor(Landroid/preference/ListPreference;I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 106
    .local v3, defaultFreq:I
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "breathing_light_freq"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 108
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "call_breathing_light_freq"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 110
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightFreq:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mms_breathing_light_freq"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 114
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_light_pulse"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_2

    move v6, v8

    :goto_1
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 116
    return-void

    .line 83
    .end local v3           #defaultFreq:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d0015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 84
    const v5, 0x7f090461

    invoke-virtual {p0, v5}, Lcom/android/settings/TrackballSettings;->setTitle(I)V

    .line 85
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    const v6, 0x7f090462

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 86
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 87
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 89
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 90
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mCallBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 92
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 93
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mMmsBreathingLightColor:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 95
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mBreathingLightFreq:Landroid/preference/ListPreference;

    const v6, 0x7f090463

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 97
    iget-object v5, p0, Lcom/android/settings/TrackballSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f090464

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 114
    .restart local v3       #defaultFreq:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/16 v6, 0x1f4

    const-string v10, "notification"

    const-string v9, "could not persist breathing light frequency settings"

    const-string v8, "could not persist breathing light color settings"

    const-string v7, "TrackballSettings"

    .line 130
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, key:Ljava/lang/String;
    const-string v5, "breathing_light_color"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 132
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 133
    .local v4, value:I
    const-string v5, "notification"

    invoke-virtual {p0, v10}, Lcom/android/settings/TrackballSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 135
    .local v3, nm:Landroid/app/NotificationManager;
    invoke-virtual {v3, v4, v6}, Landroid/app/NotificationManager;->pulseNotificationLight(II)V

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "breathing_light_color"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v3           #nm:Landroid/app/NotificationManager;
    .end local v4           #value:I
    :cond_0
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 139
    .restart local v3       #nm:Landroid/app/NotificationManager;
    .restart local v4       #value:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 140
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v5, "could not persist breathing light color settings"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #nm:Landroid/app/NotificationManager;
    .end local v4           #value:I
    .restart local p2
    :cond_1
    const-string v5, "breathing_light_freq"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 145
    .restart local v4       #value:I
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "breathing_light_freq"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 147
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 148
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v5, "could not persist breathing light frequency settings"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 150
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v4           #value:I
    .restart local p2
    :cond_2
    const-string v5, "call_breathing_light_color"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 151
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 152
    .restart local v4       #value:I
    const-string v5, "notification"

    invoke-virtual {p0, v10}, Lcom/android/settings/TrackballSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 154
    .restart local v3       #nm:Landroid/app/NotificationManager;
    invoke-virtual {v3, v4, v6}, Landroid/app/NotificationManager;->pulseNotificationLight(II)V

    .line 156
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_breathing_light_color"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 158
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 159
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v5, "could not persist breathing light color settings"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 161
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #nm:Landroid/app/NotificationManager;
    .end local v4           #value:I
    .restart local p2
    :cond_3
    const-string v5, "call_breathing_light_freq"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 162
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 164
    .restart local v4       #value:I
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_breathing_light_freq"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 166
    :catch_3
    move-exception v5

    move-object v0, v5

    .line 167
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v5, "could not persist breathing light frequency settings"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 169
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v4           #value:I
    .restart local p2
    :cond_4
    const-string v5, "mms_breathing_light_color"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 170
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 171
    .restart local v4       #value:I
    const-string v5, "notification"

    invoke-virtual {p0, v10}, Lcom/android/settings/TrackballSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 173
    .restart local v3       #nm:Landroid/app/NotificationManager;
    invoke-virtual {v3, v4, v6}, Landroid/app/NotificationManager;->pulseNotificationLight(II)V

    .line 175
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mms_breathing_light_color"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 177
    :catch_4
    move-exception v5

    move-object v0, v5

    .line 178
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v5, "could not persist breathing light color settings"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 180
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #nm:Landroid/app/NotificationManager;
    .end local v4           #value:I
    .restart local p2
    :cond_5
    const-string v5, "mms_breathing_light_freq"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 181
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 183
    .restart local v4       #value:I
    :try_start_5
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mms_breathing_light_freq"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 185
    :catch_5
    move-exception v5

    move-object v0, v5

    .line 186
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v5, "TrackballSettings"

    const-string v5, "could not persist breathing light frequency settings"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 188
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v4           #value:I
    .restart local p2
    :cond_6
    const-string v5, "notification_pulse"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 189
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 190
    .local v1, isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/TrackballSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_light_pulse"

    if-eqz v1, :cond_7

    const/4 v7, 0x1

    :goto_1
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    goto :goto_1
.end method
