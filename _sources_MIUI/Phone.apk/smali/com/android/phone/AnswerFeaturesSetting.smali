.class public Lcom/android/phone/AnswerFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "AnswerFeaturesSetting.java"


# instance fields
.field private mHandonRinger:Landroid/preference/CheckBoxPreference;

.field private mTurnoverMute:Landroid/preference/CheckBoxPreference;


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
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "turnover_mute"

    const-string v5, "handon_ringer"

    .line 29
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/android/phone/AnswerFeaturesSetting;->addPreferencesFromResource(I)V

    .line 34
    invoke-virtual {p0}, Lcom/android/phone/AnswerFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 35
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "turnover_mute"

    invoke-virtual {p0, v6}, Lcom/android/phone/AnswerFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/AnswerFeaturesSetting;->mTurnoverMute:Landroid/preference/CheckBoxPreference;

    .line 36
    iget-object v1, p0, Lcom/android/phone/AnswerFeaturesSetting;->mTurnoverMute:Landroid/preference/CheckBoxPreference;

    const-string v2, "turnover_mute"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 38
    const-string v1, "handon_ringer"

    invoke-virtual {p0, v5}, Lcom/android/phone/AnswerFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/AnswerFeaturesSetting;->mHandonRinger:Landroid/preference/CheckBoxPreference;

    .line 39
    iget-object v1, p0, Lcom/android/phone/AnswerFeaturesSetting;->mHandonRinger:Landroid/preference/CheckBoxPreference;

    const-string v2, "handon_ringer"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 41
    return-void

    :cond_0
    move v2, v3

    .line 36
    goto :goto_0

    :cond_1
    move v2, v3

    .line 39
    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    iget-object v0, p0, Lcom/android/phone/AnswerFeaturesSetting;->mTurnoverMute:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/android/phone/AnswerFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "turnover_mute"

    iget-object v2, p0, Lcom/android/phone/AnswerFeaturesSetting;->mTurnoverMute:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 53
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v2, v3

    .line 46
    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/android/phone/AnswerFeaturesSetting;->mHandonRinger:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/android/phone/AnswerFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "handon_ringer"

    iget-object v2, p0, Lcom/android/phone/AnswerFeaturesSetting;->mHandonRinger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method
