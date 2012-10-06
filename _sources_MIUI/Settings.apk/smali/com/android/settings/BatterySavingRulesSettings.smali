.class public Lcom/android/settings/BatterySavingRulesSettings;
.super Landroid/preference/PreferenceActivity;
.source "BatterySavingRulesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;
    }
.end annotation


# static fields
.field private static final mRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoSaving:Landroid/preference/CheckBoxPreference;

.field private mLowLevel:Landroid/preference/RangeBarPreference;

.field private mQuickEntry:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/BatterySavingRulesSettings;->mRules:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 45
    return-void
.end method

.method private updateState(Z)V
    .locals 9
    .parameter "force"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 105
    iget-object v4, p0, Lcom/android/settings/BatterySavingRulesSettings;->mAutoSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/BatterySavingRulesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "battery_auto_saving"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    :goto_0
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 108
    iget-object v4, p0, Lcom/android/settings/BatterySavingRulesSettings;->mQuickEntry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/BatterySavingRulesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "battery_setting_quick_entry"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    :goto_1
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/BatterySavingRulesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "battery_auto_saving_rules"

    const/16 v6, 0xc19

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 116
    .local v0, allSetting:I
    sget-object v4, Lcom/android/settings/BatterySavingRulesSettings;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v7

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_4

    .line 117
    sget-object v4, Lcom/android/settings/BatterySavingRulesSettings;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;

    .line 118
    .local v3, ruleSetting:Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;
    iget-object v4, v3, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;->zCheckBox:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 119
    iget-object v4, v3, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;->zCheckBox:Landroid/preference/CheckBoxPreference;

    iget v5, v3, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;->zBitmask:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_3

    move v5, v7

    :goto_3
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 116
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v0           #allSetting:I
    .end local v1           #i:I
    .end local v3           #ruleSetting:Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;
    :cond_1
    move v5, v8

    .line 105
    goto :goto_0

    :cond_2
    move v5, v8

    .line 108
    goto :goto_1

    .restart local v0       #allSetting:I
    .restart local v1       #i:I
    .restart local v3       #ruleSetting:Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;
    :cond_3
    move v5, v8

    .line 119
    goto :goto_3

    .line 123
    .end local v3           #ruleSetting:Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/BatterySavingRulesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "battery_level_low_customized"

    const/16 v6, 0x14

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    sub-int v2, v4, v7

    .line 125
    .local v2, lowLevel:I
    iget-object v4, p0, Lcom/android/settings/BatterySavingRulesSettings;->mLowLevel:Landroid/preference/RangeBarPreference;

    const/4 v5, 0x4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/RangeBarPreference;->setValueIndex(I)V

    .line 126
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/android/settings/BatterySavingRulesSettings;->addPreferencesFromResource(I)V

    .line 66
    const-string v0, "auto_saving"

    invoke-virtual {p0, v0}, Lcom/android/settings/BatterySavingRulesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/BatterySavingRulesSettings;->mAutoSaving:Landroid/preference/CheckBoxPreference;

    .line 67
    iget-object v0, p0, Lcom/android/settings/BatterySavingRulesSettings;->mAutoSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 68
    const-string v0, "quick_entry"

    invoke-virtual {p0, v0}, Lcom/android/settings/BatterySavingRulesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/BatterySavingRulesSettings;->mQuickEntry:Landroid/preference/CheckBoxPreference;

    .line 69
    iget-object v0, p0, Lcom/android/settings/BatterySavingRulesSettings;->mQuickEntry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 70
    const-string v0, "low_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/BatterySavingRulesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/RangeBarPreference;

    iput-object v0, p0, Lcom/android/settings/BatterySavingRulesSettings;->mLowLevel:Landroid/preference/RangeBarPreference;

    .line 71
    iget-object v0, p0, Lcom/android/settings/BatterySavingRulesSettings;->mLowLevel:Landroid/preference/RangeBarPreference;

    invoke-virtual {v0, p0}, Landroid/preference/RangeBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    sget-object v1, Lcom/android/settings/BatterySavingRulesSettings;->mRules:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;

    const/4 v3, 0x1

    const-string v0, "battery_auto_saving_rule_brightness"

    invoke-virtual {p0, v0}, Lcom/android/settings/BatterySavingRulesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;-><init>(Lcom/android/settings/BatterySavingRulesSettings;ILandroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v1, Lcom/android/settings/BatterySavingRulesSettings;->mRules:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;

    const/4 v3, 0x2

    const-string v0, "battery_auto_saving_rule_background_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/BatterySavingRulesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;-><init>(Lcom/android/settings/BatterySavingRulesSettings;ILandroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v1, Lcom/android/settings/BatterySavingRulesSettings;->mRules:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;

    const/4 v3, 0x4

    const-string v0, "battery_auto_saving_rule_auto_sync"

    invoke-virtual {p0, v0}, Lcom/android/settings/BatterySavingRulesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;-><init>(Lcom/android/settings/BatterySavingRulesSettings;ILandroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v1, Lcom/android/settings/BatterySavingRulesSettings;->mRules:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;

    const/16 v3, 0x800

    const-string v0, "battery_auto_saving_rule_apn"

    invoke-virtual {p0, v0}, Lcom/android/settings/BatterySavingRulesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;-><init>(Lcom/android/settings/BatterySavingRulesSettings;ILandroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v1, Lcom/android/settings/BatterySavingRulesSettings;->mRules:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;

    const/16 v3, 0x8

    const-string v0, "battery_auto_saving_rule_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/BatterySavingRulesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;-><init>(Lcom/android/settings/BatterySavingRulesSettings;ILandroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v1, Lcom/android/settings/BatterySavingRulesSettings;->mRules:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;

    const/16 v3, 0x10

    const-string v0, "battery_auto_saving_rule_bluetooth"

    invoke-virtual {p0, v0}, Lcom/android/settings/BatterySavingRulesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;-><init>(Lcom/android/settings/BatterySavingRulesSettings;ILandroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v1, Lcom/android/settings/BatterySavingRulesSettings;->mRules:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;

    const/16 v3, 0x20

    const-string v0, "battery_auto_saving_rule_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/settings/BatterySavingRulesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;-><init>(Lcom/android/settings/BatterySavingRulesSettings;ILandroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v1, Lcom/android/settings/BatterySavingRulesSettings;->mRules:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;

    const/16 v3, 0x40

    const-string v0, "battery_auto_saving_rule_haptic"

    invoke-virtual {p0, v0}, Lcom/android/settings/BatterySavingRulesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;-><init>(Lcom/android/settings/BatterySavingRulesSettings;ILandroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v1, Lcom/android/settings/BatterySavingRulesSettings;->mRules:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;

    const/16 v3, 0x80

    const-string v0, "battery_auto_saving_rule_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/settings/BatterySavingRulesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;-><init>(Lcom/android/settings/BatterySavingRulesSettings;ILandroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v1, Lcom/android/settings/BatterySavingRulesSettings;->mRules:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;

    const/16 v3, 0x100

    const-string v0, "battery_auto_saving_rule_screen_time_out"

    invoke-virtual {p0, v0}, Lcom/android/settings/BatterySavingRulesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;-><init>(Lcom/android/settings/BatterySavingRulesSettings;ILandroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v1, Lcom/android/settings/BatterySavingRulesSettings;->mRules:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;

    const/16 v3, 0x400

    const-string v0, "battery_auto_saving_rule_gps"

    invoke-virtual {p0, v0}, Lcom/android/settings/BatterySavingRulesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;-><init>(Lcom/android/settings/BatterySavingRulesSettings;ILandroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 180
    iget-object v2, p0, Lcom/android/settings/BatterySavingRulesSettings;->mLowLevel:Landroid/preference/RangeBarPreference;

    if-ne p1, v2, :cond_0

    .line 182
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 183
    .local v1, value:I
    invoke-virtual {p0}, Lcom/android/settings/BatterySavingRulesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_level_low_customized"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    iget-object v2, p0, Lcom/android/settings/BatterySavingRulesSettings;->mLowLevel:Landroid/preference/RangeBarPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/RangeBarPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1           #value:I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 186
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 187
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "BatterySavingRuleSettings"

    const-string v3, "could not persist battery low level setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v8, "battery_auto_saving_rules"

    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, handled:Z
    iget-object v6, p0, Lcom/android/settings/BatterySavingRulesSettings;->mAutoSaving:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/BatterySavingRulesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_auto_saving"

    iget-object v8, p0, Lcom/android/settings/BatterySavingRulesSettings;->mAutoSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v9

    :goto_0
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    const/4 v1, 0x1

    .line 175
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v8, v10

    .line 133
    goto :goto_0

    .line 138
    :cond_2
    iget-object v6, p0, Lcom/android/settings/BatterySavingRulesSettings;->mQuickEntry:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_4

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/BatterySavingRulesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_setting_quick_entry"

    iget-object v8, p0, Lcom/android/settings/BatterySavingRulesSettings;->mQuickEntry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_2
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    move v8, v10

    .line 139
    goto :goto_2

    .line 144
    :cond_4
    const-string v6, "battery_auto_saving_practise_more"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 145
    const-string v6, "http://www.miui.cn/viewthread.php?tid=323&highlight=%CA%A1%B5%E7"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 146
    .local v5, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/settings/BatterySavingRulesSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 151
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_5
    sget-object v6, Lcom/android/settings/BatterySavingRulesSettings;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v2, v6, v9

    .local v2, i:I
    :goto_3
    if-ltz v2, :cond_0

    .line 152
    sget-object v6, Lcom/android/settings/BatterySavingRulesSettings;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;

    .line 153
    .local v4, ruleSetting:Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;
    iget-object v6, v4, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;->zCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_7

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/BatterySavingRulesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_auto_saving_rules"

    const/16 v7, 0xc19

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 158
    .local v0, allSetting:I
    iget-object v6, v4, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;->zCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/BatterySavingRulesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_auto_saving_rules"

    iget v7, v4, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;->zBitmask:I

    or-int/2addr v7, v0

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    :goto_4
    const/4 v1, 0x1

    .line 170
    goto :goto_1

    .line 164
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/BatterySavingRulesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_auto_saving_rules"

    iget v7, v4, Lcom/android/settings/BatterySavingRulesSettings$RuleSetting;->zBitmask:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v7, v0

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 151
    .end local v0           #allSetting:I
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_3
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 101
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/BatterySavingRulesSettings;->updateState(Z)V

    .line 102
    return-void
.end method
