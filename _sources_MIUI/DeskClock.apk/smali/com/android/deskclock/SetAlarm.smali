.class public Lcom/android/deskclock/SetAlarm;
.super Landroid/preference/PreferenceActivity;
.source "SetAlarm.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mAlarmPref:Lcom/android/deskclock/AlarmPreference;

.field private mEnabledPref:Landroid/preference/CheckBoxPreference;

.field private mHour:I

.field private mId:I

.field private mLabel:Landroid/preference/EditTextPreference;

.field private mMinutes:I

.field private mOriginalAlarm:Lcom/android/deskclock/Alarm;

.field private mRepeatPref:Lcom/android/deskclock/RepeatPreference;

.field private mTimePickerCancelled:Z

.field private mTimePref:Landroid/preference/Preference;

.field private mVibratePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/deskclock/SetAlarm;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/SetAlarm;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/SetAlarm;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/deskclock/SetAlarm;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->saveAlarmAndEnableRevert()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/SetAlarm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/SetAlarm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/deskclock/SetAlarm;->mMinutes:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/SetAlarm;)Lcom/android/deskclock/RepeatPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/deskclock/SetAlarm;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->saveAlarm()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/deskclock/SetAlarm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/deskclock/SetAlarm;)Lcom/android/deskclock/Alarm;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/deskclock/SetAlarm;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/deskclock/SetAlarm;->updatePrefs(Lcom/android/deskclock/Alarm;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/deskclock/SetAlarm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->deleteAlarm()V

    return-void
.end method

.method private deleteAlarm()V
    .locals 3

    .prologue
    .line 294
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/android/deskclock/SetAlarm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {p0, v1}, Lcom/android/deskclock/SetAlarm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/deskclock/SetAlarm$7;

    invoke-direct {v2, p0}, Lcom/android/deskclock/SetAlarm$7;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 306
    return-void
.end method

.method static formatToast(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "timeInMillis"

    .prologue
    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 332
    .local p1, delta:J
    const-wide/32 v0, 0x36ee80

    div-long v2, p1, v0

    .line 333
    .local v2, hours:J
    const-wide/32 v0, 0xea60

    div-long/2addr p1, v0

    .end local p1           #delta:J
    const-wide/16 v0, 0x3c

    rem-long v6, p1, v0

    .line 334
    .local v6, minutes:J
    const-wide/16 p1, 0x18

    div-long v0, v2, p1

    .line 335
    .local v0, days:J
    const-wide/16 p1, 0x18

    rem-long v3, v2, p1

    .line 337
    .end local v2           #hours:J
    .local v3, hours:J
    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 341
    .local p1, daySeq:Ljava/lang/String;
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long p2, v6, v8

    if-nez p2, :cond_2

    const-string p2, ""

    move-object v5, p2

    .line 345
    .local v5, minSeq:Ljava/lang/String;
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long p2, v3, v8

    if-nez p2, :cond_4

    const-string p2, ""

    move-object v2, p2

    .line 349
    .local v2, hourSeq:Ljava/lang/String;
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long p2, v0, v8

    if-lez p2, :cond_6

    const/4 p2, 0x1

    .line 350
    .local p2, dispDays:Z
    :goto_3
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-lez v0, :cond_7

    .end local v0           #days:J
    const/4 v0, 0x1

    .line 351
    .local v0, dispHour:Z
    :goto_4
    const-wide/16 v3, 0x0

    cmp-long v1, v6, v3

    if-lez v1, :cond_8

    .end local v3           #hours:J
    const/4 v1, 0x1

    .line 353
    .local v1, dispMinute:Z
    :goto_5
    if-eqz p2, :cond_9

    const/4 p2, 0x1

    .end local p2           #dispDays:Z
    :goto_6
    if-eqz v0, :cond_a

    const/4 v0, 0x2

    .end local v0           #dispHour:Z
    :goto_7
    or-int/2addr p2, v0

    if-eqz v1, :cond_b

    const/4 v0, 0x4

    :goto_8
    or-int/2addr p2, v0

    .line 357
    .local p2, index:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 358
    .local p0, formats:[Ljava/lang/String;
    aget-object p0, p0, p2

    .end local p0           #formats:[Ljava/lang/String;
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    .end local p2           #index:I
    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x1

    aput-object v2, p2, p1

    .end local p1           #daySeq:Ljava/lang/String;
    const/4 p1, 0x2

    aput-object v5, p2, p1

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 337
    .end local v1           #dispMinute:Z
    .end local v2           #hourSeq:Ljava/lang/String;
    .end local v5           #minSeq:Ljava/lang/String;
    .local v0, days:J
    .restart local v3       #hours:J
    .local p0, context:Landroid/content/Context;
    :cond_0
    const-wide/16 p1, 0x1

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    const p1, 0x7f070015

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p1, 0x7f070016

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p2, v2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 341
    .restart local p1       #daySeq:Ljava/lang/String;
    :cond_2
    const-wide/16 v8, 0x1

    cmp-long p2, v6, v8

    if-nez p2, :cond_3

    const p2, 0x7f070019

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v5, p2

    goto :goto_1

    :cond_3
    const p2, 0x7f07001a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v5, p2

    goto/16 :goto_1

    .line 345
    .restart local v5       #minSeq:Ljava/lang/String;
    :cond_4
    const-wide/16 v8, 0x1

    cmp-long p2, v3, v8

    if-nez p2, :cond_5

    const p2, 0x7f070017

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto/16 :goto_2

    :cond_5
    const p2, 0x7f070018

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto/16 :goto_2

    .line 349
    .restart local v2       #hourSeq:Ljava/lang/String;
    :cond_6
    const/4 p2, 0x0

    goto/16 :goto_3

    .line 350
    .end local v0           #days:J
    .local p2, dispDays:Z
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 351
    .end local v3           #hours:J
    .local v0, dispHour:Z
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 353
    .restart local v1       #dispMinute:Z
    :cond_9
    const/4 p2, 0x0

    goto/16 :goto_6

    .end local p2           #dispDays:Z
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_7

    .end local v0           #dispHour:Z
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_8
.end method

.method static popAlarmSetToast(Landroid/content/Context;IILcom/android/deskclock/Alarm$DaysOfWeek;)V
    .locals 2
    .parameter "context"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    .line 314
    invoke-static {p1, p2, p3}, Lcom/android/deskclock/Alarms;->calculateAlarm(IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/deskclock/SetAlarm;->popAlarmSetToast(Landroid/content/Context;J)V

    .line 317
    return-void
.end method

.method static popAlarmSetToast(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "timeInMillis"

    .prologue
    .line 320
    invoke-static {p0, p1, p2}, Lcom/android/deskclock/SetAlarm;->formatToast(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, toastText:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 322
    .local v0, toast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/deskclock/ToastMaster;->setToast(Landroid/widget/Toast;)V

    .line 323
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 324
    return-void
.end method

.method private saveAlarm()J
    .locals 5

    .prologue
    .line 271
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0}, Lcom/android/deskclock/Alarm;-><init>()V

    .line 272
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    iget v3, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    iput v3, v0, Lcom/android/deskclock/Alarm;->id:I

    .line 273
    iget-object v3, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/deskclock/Alarm;->enabled:Z

    .line 274
    iget v3, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    iput v3, v0, Lcom/android/deskclock/Alarm;->hour:I

    .line 275
    iget v3, p0, Lcom/android/deskclock/SetAlarm;->mMinutes:I

    iput v3, v0, Lcom/android/deskclock/Alarm;->minutes:I

    .line 276
    iget-object v3, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    invoke-virtual {v3}, Lcom/android/deskclock/RepeatPreference;->getDaysOfWeek()Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v3

    iput-object v3, v0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    .line 277
    iget-object v3, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/deskclock/Alarm;->vibrate:Z

    .line 278
    iget-object v3, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    .line 279
    iget-object v3, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v3}, Lcom/android/deskclock/AlarmPreference;->getAlert()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 282
    iget v3, v0, Lcom/android/deskclock/Alarm;->id:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 283
    invoke-static {p0, v0}, Lcom/android/deskclock/Alarms;->addAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J

    move-result-wide v1

    .line 286
    .local v1, time:J
    iget v3, v0, Lcom/android/deskclock/Alarm;->id:I

    iput v3, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    .line 290
    :goto_0
    return-wide v1

    .line 288
    .end local v1           #time:J
    :cond_0
    invoke-static {p0, v0}, Lcom/android/deskclock/Alarms;->setAlarm(Landroid/content/Context;Lcom/android/deskclock/Alarm;)J

    move-result-wide v1

    .restart local v1       #time:J
    goto :goto_0
.end method

.method private saveAlarmAndEnableRevert()J
    .locals 3

    .prologue
    .line 265
    const v1, 0x7f0b002c

    invoke-virtual {p0, v1}, Lcom/android/deskclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 266
    .local v0, revert:Landroid/widget/Button;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 267
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->saveAlarm()J

    move-result-wide v1

    return-wide v1
.end method

.method private showTimePicker()V
    .locals 6

    .prologue
    .line 239
    new-instance v0, Landroid/app/TimePickerDialog;

    iget v3, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    iget v4, p0, Lcom/android/deskclock/SetAlarm;->mMinutes:I

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 241
    return-void
.end method

.method private updatePrefs(Lcom/android/deskclock/Alarm;)V
    .locals 2
    .parameter "alarm"

    .prologue
    .line 204
    iget v0, p1, Lcom/android/deskclock/Alarm;->id:I

    iput v0, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    .line 205
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p1, Lcom/android/deskclock/Alarm;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    iget-object v1, p1, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    iget-object v1, p1, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    iget v0, p1, Lcom/android/deskclock/Alarm;->hour:I

    iput v0, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    .line 209
    iget v0, p1, Lcom/android/deskclock/Alarm;->minutes:I

    iput v0, p0, Lcom/android/deskclock/SetAlarm;->mMinutes:I

    .line 210
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    iget-object v1, p1, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/RepeatPreference;->setDaysOfWeek(Lcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 211
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p1, Lcom/android/deskclock/Alarm;->vibrate:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    iget-object v1, p1, Lcom/android/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/AlarmPreference;->setAlert(Landroid/net/Uri;)V

    .line 214
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->updateTime()V

    .line 215
    return-void
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePref:Landroid/preference/Preference;

    iget v1, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    iget v2, p0, Lcom/android/deskclock/SetAlarm;->mMinutes:I

    iget-object v3, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    invoke-virtual {v3}, Lcom/android/deskclock/RepeatPreference;->getDaysOfWeek()Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/android/deskclock/Alarms;->formatTime(Landroid/content/Context;IILcom/android/deskclock/Alarm$DaysOfWeek;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerCancelled:Z

    if-nez v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->saveAlarm()J

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->finish()V

    .line 236
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 71
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v4, 0x7f03000b

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SetAlarm;->setContentView(I)V

    .line 76
    const/high16 v4, 0x7f05

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SetAlarm;->addPreferencesFromResource(I)V

    .line 79
    const-string v4, "label"

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    .line 80
    iget-object v4, p0, Lcom/android/deskclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    new-instance v5, Lcom/android/deskclock/SetAlarm$1;

    invoke-direct {v5, p0}, Lcom/android/deskclock/SetAlarm$1;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    const-string v4, "enabled"

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    .line 96
    iget-object v4, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    new-instance v5, Lcom/android/deskclock/SetAlarm$2;

    invoke-direct {v5, p0}, Lcom/android/deskclock/SetAlarm$2;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    const-string v4, "time"

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/SetAlarm;->mTimePref:Landroid/preference/Preference;

    .line 109
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/AlarmPreference;

    iput-object v4, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    .line 110
    iget-object v4, p0, Lcom/android/deskclock/SetAlarm;->mAlarmPref:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v4, p0}, Lcom/android/deskclock/AlarmPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    const-string v4, "vibrate"

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    .line 112
    iget-object v4, p0, Lcom/android/deskclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    const-string v4, "setRepeat"

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/RepeatPreference;

    iput-object v4, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    .line 114
    iget-object v4, p0, Lcom/android/deskclock/SetAlarm;->mRepeatPref:Lcom/android/deskclock/RepeatPreference;

    invoke-virtual {v4, p0}, Lcom/android/deskclock/RepeatPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 117
    .local v2, i:Landroid/content/Intent;
    const-string v4, "alarm_id"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    iget v4, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    if-ne v4, v6, :cond_2

    .line 125
    new-instance v0, Lcom/android/deskclock/Alarm;

    .end local v0           #alarm:Lcom/android/deskclock/Alarm;
    invoke-direct {v0}, Lcom/android/deskclock/Alarm;-><init>()V

    .line 135
    .restart local v0       #alarm:Lcom/android/deskclock/Alarm;
    :cond_0
    iput-object v0, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    .line 137
    iget-object v4, p0, Lcom/android/deskclock/SetAlarm;->mOriginalAlarm:Lcom/android/deskclock/Alarm;

    invoke-direct {p0, v4}, Lcom/android/deskclock/SetAlarm;->updatePrefs(Lcom/android/deskclock/Alarm;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 144
    const v4, 0x7f0b002b

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 145
    .local v1, b:Landroid/widget/Button;
    new-instance v4, Lcom/android/deskclock/SetAlarm$3;

    invoke-direct {v4, p0}, Lcom/android/deskclock/SetAlarm$3;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v4, 0x7f0b002c

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 152
    .local v3, revert:Landroid/widget/Button;
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    new-instance v4, Lcom/android/deskclock/SetAlarm$4;

    invoke-direct {v4, p0, v3}, Lcom/android/deskclock/SetAlarm$4;-><init>(Lcom/android/deskclock/SetAlarm;Landroid/widget/Button;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v4, 0x7f0b002d

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SetAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #b:Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 167
    .restart local v1       #b:Landroid/widget/Button;
    iget v4, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    if-ne v4, v6, :cond_3

    .line 168
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    :goto_0
    iget v4, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    if-ne v4, v6, :cond_1

    .line 180
    iput-boolean v8, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerCancelled:Z

    .line 181
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->showTimePicker()V

    .line 183
    .end local v1           #b:Landroid/widget/Button;
    .end local v3           #revert:Landroid/widget/Button;
    :cond_1
    :goto_1
    return-void

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, p0, Lcom/android/deskclock/SetAlarm;->mId:I

    invoke-static {v4, v5}, Lcom/android/deskclock/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/deskclock/Alarm;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/deskclock/SetAlarm;->finish()V

    goto :goto_1

    .line 170
    .restart local v1       #b:Landroid/widget/Button;
    .restart local v3       #revert:Landroid/widget/Button;
    :cond_3
    new-instance v4, Lcom/android/deskclock/SetAlarm$5;

    invoke-direct {v4, p0}, Lcom/android/deskclock/SetAlarm$5;-><init>(Lcom/android/deskclock/SetAlarm;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "p"
    .parameter "newValue"

    .prologue
    .line 191
    sget-object v0, Lcom/android/deskclock/SetAlarm;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/deskclock/SetAlarm$6;

    invoke-direct {v1, p0, p1}, Lcom/android/deskclock/SetAlarm$6;-><init>(Lcom/android/deskclock/SetAlarm;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->showTimePicker()V

    .line 224
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/SetAlarm;->mTimePickerCancelled:Z

    .line 246
    iput p2, p0, Lcom/android/deskclock/SetAlarm;->mHour:I

    .line 247
    iput p3, p0, Lcom/android/deskclock/SetAlarm;->mMinutes:I

    .line 248
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->updateTime()V

    .line 250
    iget-object v0, p0, Lcom/android/deskclock/SetAlarm;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 252
    invoke-direct {p0}, Lcom/android/deskclock/SetAlarm;->saveAlarmAndEnableRevert()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/deskclock/SetAlarm;->popAlarmSetToast(Landroid/content/Context;J)V

    .line 253
    return-void
.end method
