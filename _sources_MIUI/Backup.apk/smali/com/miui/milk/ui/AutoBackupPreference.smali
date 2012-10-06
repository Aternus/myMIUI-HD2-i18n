.class public Lcom/miui/milk/ui/AutoBackupPreference;
.super Landroid/preference/PreferenceActivity;
.source "AutoBackupPreference.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mAutoBackup:Landroid/preference/CheckBoxPreference;

.field private mAutoBackupChoose:Landroid/preference/Preference;

.field private mAutoBackupOnlyWifi:Landroid/preference/CheckBoxPreference;

.field private mAutoBackupTime:Landroid/preference/Preference;

.field private mDefaultSharedPref:Landroid/content/SharedPreferences;

.field private mHours:I

.field private mMinutes:I

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/miui/milk/ui/AutoBackupPreference;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private refreshUI()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "auto_backup_time_hour"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mHours:I

    .line 113
    iget-object v0, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "auto_backup_time_minute"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mMinutes:I

    .line 114
    invoke-direct {p0}, Lcom/miui/milk/ui/AutoBackupPreference;->updateTimeUI()V

    .line 115
    invoke-direct {p0}, Lcom/miui/milk/ui/AutoBackupPreference;->updateChooseUI()V

    .line 116
    return-void
.end method

.method private setNextBackup()V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/miui/milk/ui/AutoBackupPreference;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/milk/ui/AutoBackupPreference$1;

    invoke-direct {v1, p0}, Lcom/miui/milk/ui/AutoBackupPreference$1;-><init>(Lcom/miui/milk/ui/AutoBackupPreference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method private showTimePicker()V
    .locals 6

    .prologue
    .line 119
    new-instance v0, Landroid/app/TimePickerDialog;

    iget v3, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mHours:I

    iget v4, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mMinutes:I

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 121
    return-void
.end method

.method private updateChooseUI()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, ","

    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v0, summary:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "auto_backup_choose_addressbook"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f06003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "auto_backup_choose_calllog"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f06003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "auto_backup_choose_sms"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f06003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "auto_backup_choose_wifi"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f06003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "auto_backup_choose_note"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 162
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f06003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 167
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 168
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mAutoBackupChoose:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_6
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mAutoBackupChoose:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f060081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateTimeUI()V
    .locals 4

    .prologue
    .line 139
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "kk:mm"

    move-object v1, v2

    .line 140
    .local v1, format:Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 141
    .local v0, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 142
    const/16 v2, 0xb

    iget v3, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mHours:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 143
    const/16 v2, 0xc

    iget v3, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mMinutes:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 144
    iget-object v2, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mAutoBackupTime:Landroid/preference/Preference;

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    return-void

    .line 139
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #format:Ljava/lang/String;
    :cond_0
    const-string v2, " aa h:mm"

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const-string v4, "auto_backup_time_minute"

    const-string v3, "auto_backup_time_hour"

    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/AutoBackupPreference;->addPreferencesFromResource(I)V

    .line 46
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mRes:Landroid/content/res/Resources;

    .line 47
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    .line 49
    const-string v1, "auto_backup"

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/AutoBackupPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mAutoBackup:Landroid/preference/CheckBoxPreference;

    .line 50
    const-string v1, "auto_backup_only_wifi"

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/AutoBackupPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mAutoBackupOnlyWifi:Landroid/preference/CheckBoxPreference;

    .line 51
    const-string v1, "auto_backup_time"

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/AutoBackupPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mAutoBackupTime:Landroid/preference/Preference;

    .line 52
    const-string v1, "auto_backup_choose"

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/AutoBackupPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mAutoBackupChoose:Landroid/preference/Preference;

    .line 54
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mAutoBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "auto_backup_time_hour"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    .local v0, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "auto_backup_time_hour"

    const/4 v1, 0x2

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    .end local v0           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "auto_backup_time_minute"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .restart local v0       #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "auto_backup_time_minute"

    const/16 v1, 0x1e

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    .end local v0           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mAutoBackup:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/miui/milk/ui/AutoBackupPreference;->setNextBackup()V

    .line 95
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mAutoBackupTime:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/miui/milk/ui/AutoBackupPreference;->showTimePicker()V

    .line 85
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mAutoBackupChoose:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/ui/AutoBackupChooseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/AutoBackupPreference;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 72
    invoke-direct {p0}, Lcom/miui/milk/ui/AutoBackupPreference;->refreshUI()V

    .line 73
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 126
    iput p2, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mHours:I

    .line 127
    iput p3, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mMinutes:I

    .line 128
    iget-object v1, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    .local v0, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "auto_backup_time_hour"

    iget v2, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mHours:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    const-string v1, "auto_backup_time_minute"

    iget v2, p0, Lcom/miui/milk/ui/AutoBackupPreference;->mMinutes:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    invoke-direct {p0}, Lcom/miui/milk/ui/AutoBackupPreference;->updateTimeUI()V

    .line 135
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/miui/milk/common/AutoBackup;->setNextBackup(Landroid/content/Context;Z)V

    .line 136
    return-void
.end method
