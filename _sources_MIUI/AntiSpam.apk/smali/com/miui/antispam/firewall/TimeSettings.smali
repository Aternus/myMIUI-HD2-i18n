.class public Lcom/miui/antispam/firewall/TimeSettings;
.super Landroid/preference/PreferenceActivity;
.source "TimeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAllDay:Landroid/preference/RadioButtonPreference;

.field private mEndTime:Landroid/preference/Preference;

.field private mEndTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mPeriod:Landroid/preference/RadioButtonPreference;

.field private mStartTime:Landroid/preference/Preference;

.field private mStartTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 33
    new-instance v0, Lcom/miui/antispam/firewall/TimeSettings$1;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/TimeSettings$1;-><init>(Lcom/miui/antispam/firewall/TimeSettings;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mStartTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 42
    new-instance v0, Lcom/miui/antispam/firewall/TimeSettings$2;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/TimeSettings$2;-><init>(Lcom/miui/antispam/firewall/TimeSettings;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mEndTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000(II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/miui/antispam/firewall/TimeSettings;->formatTime(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/antispam/firewall/TimeSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mStartTime:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/antispam/firewall/TimeSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mEndTime:Landroid/preference/Preference;

    return-object v0
.end method

.method private static formatTime(I)Ljava/lang/String;
    .locals 2
    .parameter "totalMinute"

    .prologue
    .line 91
    div-int/lit8 v0, p0, 0x3c

    rem-int/lit8 v1, p0, 0x3c

    invoke-static {v0, v1}, Lcom/miui/antispam/firewall/TimeSettings;->formatTime(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatTime(II)Ljava/lang/String;
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 82
    .local v0, builder:Ljava/lang/StringBuilder;
    div-int/lit8 v1, p0, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    rem-int/lit8 v1, p0, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    div-int/lit8 v1, p1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    rem-int/lit8 v1, p1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 95
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getStartTime(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/miui/antispam/firewall/TimeSettings;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, startTime:Ljava/lang/String;
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getEndTime(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/miui/antispam/firewall/TimeSettings;->formatTime(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, endTime:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getTimeLimitEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p0}, Lcom/miui/antispam/firewall/TimeSettings;->formatTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updatePreference()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getTimeLimitEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mPeriod:Landroid/preference/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroid/preference/RadioButtonPreference;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mAllDay:Landroid/preference/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/RadioButtonPreference;->setChecked(Z)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mPeriod:Landroid/preference/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/RadioButtonPreference;->setChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mAllDay:Landroid/preference/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroid/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/TimeSettings;->addPreferencesFromResource(I)V

    .line 57
    const-string v0, "fw_all_day"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/TimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mAllDay:Landroid/preference/RadioButtonPreference;

    .line 58
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mAllDay:Landroid/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroid/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    const-string v0, "fw_period"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/TimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mPeriod:Landroid/preference/RadioButtonPreference;

    .line 61
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mPeriod:Landroid/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroid/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    const-string v0, "fw_start_time"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/TimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mStartTime:Landroid/preference/Preference;

    .line 64
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mStartTime:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 65
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mStartTime:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setRightIndicatorVisibility(I)V

    .line 67
    const-string v0, "fw_end_time"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/TimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mEndTime:Landroid/preference/Preference;

    .line 68
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mEndTime:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mEndTime:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setRightIndicatorVisibility(I)V

    .line 70
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 151
    new-instance v0, Landroid/app/TimePickerDialog;

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/miui/antispam/firewall/TimeSettings;->mStartTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-object v2, v1

    :goto_0
    const/16 v3, 0xb

    const/16 v4, 0xc

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 158
    .local v0, d:Landroid/app/Dialog;
    return-object v0

    .line 151
    .end local v0           #d:Landroid/app/Dialog;
    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/firewall/TimeSettings;->mEndTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-object v2, v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    iget-object v2, p0, Lcom/miui/antispam/firewall/TimeSettings;->mPeriod:Landroid/preference/RadioButtonPreference;

    if-ne v2, p1, :cond_2

    .line 128
    move-object v0, p1

    check-cast v0, Landroid/preference/RadioButtonPreference;

    move-object v1, v0

    .line 129
    .local v1, radio:Landroid/preference/RadioButtonPreference;
    invoke-virtual {v1}, Landroid/preference/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 144
    .end local v1           #radio:Landroid/preference/RadioButtonPreference;
    .end local p2
    :goto_0
    return v2

    .line 131
    .restart local v1       #radio:Landroid/preference/RadioButtonPreference;
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-static {p0, p2}, Lcom/miui/antispam/firewall/FirewallHelper;->setTimeLimitEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 132
    invoke-direct {p0}, Lcom/miui/antispam/firewall/TimeSettings;->updatePreference()V

    .line 133
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->updateOnNotification(Landroid/content/Context;)V

    .end local v1           #radio:Landroid/preference/RadioButtonPreference;
    :cond_1
    :goto_1
    move v2, v4

    .line 144
    goto :goto_0

    .line 135
    .restart local p2
    :cond_2
    iget-object v2, p0, Lcom/miui/antispam/firewall/TimeSettings;->mAllDay:Landroid/preference/RadioButtonPreference;

    if-ne v2, p1, :cond_1

    .line 136
    move-object v0, p1

    check-cast v0, Landroid/preference/RadioButtonPreference;

    move-object v1, v0

    .line 137
    .restart local v1       #radio:Landroid/preference/RadioButtonPreference;
    invoke-virtual {v1}, Landroid/preference/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_0

    .line 139
    :cond_3
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/antispam/firewall/FirewallHelper;->setTimeLimitEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 140
    invoke-direct {p0}, Lcom/miui/antispam/firewall/TimeSettings;->updatePreference()V

    .line 141
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->updateOnNotification(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    move v2, v3

    .line 139
    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mStartTime:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 186
    invoke-virtual {p0, v1}, Lcom/miui/antispam/firewall/TimeSettings;->showDialog(I)V

    .line 192
    :cond_0
    :goto_0
    return v1

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/TimeSettings;->mEndTime:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/TimeSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .parameter "id"
    .parameter "d"

    .prologue
    .line 163
    packed-switch p1, :pswitch_data_0

    .line 181
    .end local p2
    :goto_0
    return-void

    .line 165
    .restart local p2
    :pswitch_0
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getStartTime(Landroid/content/Context;)I

    move-result v1

    .line 166
    .local v1, startTime:I
    check-cast p2, Landroid/app/TimePickerDialog;

    .end local p2
    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v3, v1, 0x3c

    invoke-virtual {p2, v2, v3}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 172
    .end local v1           #startTime:I
    .restart local p2
    :pswitch_1
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getEndTime(Landroid/content/Context;)I

    move-result v0

    .line 173
    .local v0, endTime:I
    check-cast p2, Landroid/app/TimePickerDialog;

    .end local p2
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v3, v0, 0x3c

    invoke-virtual {p2, v2, v3}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 114
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 116
    invoke-direct {p0}, Lcom/miui/antispam/firewall/TimeSettings;->updatePreference()V

    .line 118
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getStartTime(Landroid/content/Context;)I

    move-result v1

    .line 119
    .local v1, startTime:I
    iget-object v2, p0, Lcom/miui/antispam/firewall/TimeSettings;->mStartTime:Landroid/preference/Preference;

    invoke-static {v1}, Lcom/miui/antispam/firewall/TimeSettings;->formatTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 121
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getEndTime(Landroid/content/Context;)I

    move-result v0

    .line 122
    .local v0, endTime:I
    iget-object v2, p0, Lcom/miui/antispam/firewall/TimeSettings;->mEndTime:Landroid/preference/Preference;

    invoke-static {v0}, Lcom/miui/antispam/firewall/TimeSettings;->formatTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method
