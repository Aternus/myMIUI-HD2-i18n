.class public Lcom/android/calendar/CalendarPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CalendarPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final ALERT_TYPE_ALERTS:Ljava/lang/String; = "0"

.field static final ALERT_TYPE_OFF:Ljava/lang/String; = "2"

.field static final ALERT_TYPE_STATUS_BAR:Ljava/lang/String; = "1"

.field private static final BUILD_VERSION:Ljava/lang/String; = "build_version"

.field static final DEFAULT_DETAILED_VIEW:Ljava/lang/String; = null

.field static final DEFAULT_START_VIEW:Ljava/lang/String; = null

.field static final KEY_ALERTS_RINGTONE:Ljava/lang/String; = "preferences_alerts_ringtone"

.field static final KEY_ALERTS_TYPE:Ljava/lang/String; = "preferences_alerts_type"

.field static final KEY_ALERTS_VIBRATE:Ljava/lang/String; = "preferences_alerts_vibrate"

.field static final KEY_ALERTS_VIBRATE_WHEN:Ljava/lang/String; = "preferences_alerts_vibrateWhen"

.field static final KEY_DEFAULT_CALENDAR:Ljava/lang/String; = "preference_defaultCalendar"

.field static final KEY_DEFAULT_REMINDER:Ljava/lang/String; = "preferences_default_reminder"

.field static final KEY_DETAILED_VIEW:Ljava/lang/String; = "preferredDetailedView"

.field static final KEY_HIDE_DECLINED:Ljava/lang/String; = "preferences_hide_declined"

.field static final KEY_HOME_TZ:Ljava/lang/String; = "preferences_home_tz"

.field static final KEY_HOME_TZ_ENABLED:Ljava/lang/String; = "preferences_home_tz_enabled"

.field static final KEY_START_VIEW:Ljava/lang/String; = "startView"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "com.android.calendar_preferences"

.field private static mTimezones:[[Ljava/lang/CharSequence;


# instance fields
.field mAlertType:Landroid/preference/ListPreference;

.field mHomeTZ:Landroid/preference/ListPreference;

.field mRingtone:Landroid/preference/RingtonePreference;

.field private mTZUpdater:Ljava/lang/Runnable;

.field mUseHomeTZ:Landroid/preference/CheckBoxPreference;

.field mVibrateWhen:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarPreferenceActivity;->DEFAULT_START_VIEW:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarPreferenceActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mTZUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    const-string v0, "com.android.calendar_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultValues(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 87
    const-string v0, "com.android.calendar_preferences"

    const/high16 v1, 0x7f05

    invoke-static {p0, v0, v2, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 89
    return-void
.end method

.method private updateChildPreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mAlertType:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mVibrateWhen:Landroid/preference/ListPreference;

    const v1, 0x7f080076

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v2}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v3}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 98
    .local v2, preferenceManager:Landroid/preference/PreferenceManager;
    invoke-static {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 99
    .local v4, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v8, "com.android.calendar_preferences"

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 102
    const/high16 v8, 0x7f05

    invoke-virtual {p0, v8}, Lcom/android/calendar/CalendarPreferenceActivity;->addPreferencesFromResource(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 105
    .local v3, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 106
    const-string v8, "preferences_alerts_type"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mAlertType:Landroid/preference/ListPreference;

    .line 107
    const-string v8, "preferences_alerts_vibrateWhen"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mVibrateWhen:Landroid/preference/ListPreference;

    .line 108
    const-string v8, "preferences_alerts_ringtone"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/RingtonePreference;

    iput-object p1, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mRingtone:Landroid/preference/RingtonePreference;

    .line 109
    const-string v8, "preferences_home_tz_enabled"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    .line 110
    iget-object v8, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    const-string v8, "preferences_home_tz"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mHomeTZ:Landroid/preference/ListPreference;

    .line 112
    iget-object v8, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, tz:Ljava/lang/String;
    sget-object v8, Lcom/android/calendar/CalendarPreferenceActivity;->mTimezones:[[Ljava/lang/CharSequence;

    if-nez v8, :cond_0

    .line 115
    new-instance v8, Lcom/android/calendar/TimezoneAdapter;

    invoke-direct {v8, p0, v6}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/calendar/TimezoneAdapter;->getAllTimezones()[[Ljava/lang/CharSequence;

    move-result-object v8

    sput-object v8, Lcom/android/calendar/CalendarPreferenceActivity;->mTimezones:[[Ljava/lang/CharSequence;

    .line 117
    :cond_0
    iget-object v8, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mHomeTZ:Landroid/preference/ListPreference;

    sget-object v9, Lcom/android/calendar/CalendarPreferenceActivity;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 118
    iget-object v8, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mHomeTZ:Landroid/preference/ListPreference;

    sget-object v9, Lcom/android/calendar/CalendarPreferenceActivity;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 119
    iget-object v8, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    .line 120
    .local v7, tzName:Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 121
    iget-object v8, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 125
    :goto_0
    iget-object v8, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    const-string v8, "preferences_alerts_vibrateWhen"

    invoke-interface {v4, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "preferences_alerts_vibrate"

    invoke-interface {v4, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 130
    const-string v8, "preferences_alerts_vibrate"

    const/4 v9, 0x0

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x7f080075

    move v5, v8

    .line 133
    .local v5, stringId:I
    :goto_1
    iget-object v8, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {p0, v5}, Lcom/android/calendar/CalendarPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 137
    .end local v5           #stringId:I
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 138
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v8, "build_version"

    invoke-virtual {p0, v8}, Lcom/android/calendar/CalendarPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iget-object v9, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_2
    invoke-direct {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->updateChildPreferences()V

    .line 143
    return-void

    .line 123
    :cond_2
    iget-object v8, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mHomeTZ:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p0, v9}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 130
    :cond_3
    const v8, 0x7f080076

    move v5, v8

    goto :goto_1

    .line 139
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 140
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "build_version"

    invoke-virtual {p0, v8}, Lcom/android/calendar/CalendarPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const-string v9, "?"

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 168
    iget-object v2, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    .line 169
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, tz:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    const/4 v2, 0x1

    .end local v1           #tz:Ljava/lang/String;
    :goto_1
    return v2

    .line 172
    :cond_0
    const-string v1, "auto"

    .restart local v1       #tz:Ljava/lang/String;
    goto :goto_0

    .line 174
    .end local v1           #tz:Ljava/lang/String;
    .restart local p2
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mHomeTZ:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 175
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 176
    .restart local v1       #tz:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mHomeTZ:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/calendar/CalendarPreferenceActivity;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 179
    .end local v1           #tz:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 146
    const-string v0, "preferences_alerts_type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->updateChildPreferences()V

    .line 149
    :cond_0
    return-void
.end method
