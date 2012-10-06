.class public Lcom/android/settings/VibrateItemsSettings;
.super Landroid/preference/PreferenceActivity;
.source "VibrateItemsSettings.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mInComingCall:Landroid/preference/CheckBoxPreference;

.field private mMms:Landroid/preference/CheckBoxPreference;

.field private mNotification:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getVibrateSetting(Z)I
    .locals 7
    .parameter "isChecked"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/VibrateItemsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "vibrate_in_normal"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_1

    move v1, v5

    .line 95
    .local v1, vibrateInNormal:Z
    :goto_0
    const-string v4, "vibrate_in_silent"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    move v2, v5

    .line 96
    .local v2, vibrateInSilent:Z
    :goto_1
    const/4 v3, 0x0

    .line 97
    .local v3, vibrateSetting:I
    if-eqz p1, :cond_0

    .line 98
    if-eqz v1, :cond_3

    .line 99
    const/4 v3, 0x1

    .line 105
    :cond_0
    :goto_2
    return v3

    .end local v1           #vibrateInNormal:Z
    .end local v2           #vibrateInSilent:Z
    .end local v3           #vibrateSetting:I
    :cond_1
    move v1, v6

    .line 94
    goto :goto_0

    .restart local v1       #vibrateInNormal:Z
    :cond_2
    move v2, v6

    .line 95
    goto :goto_1

    .line 100
    .restart local v2       #vibrateInSilent:Z
    .restart local v3       #vibrateSetting:I
    :cond_3
    if-eqz v2, :cond_0

    .line 101
    const/4 v3, 0x2

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f04003a

    invoke-virtual {p0, v0}, Lcom/android/settings/VibrateItemsSettings;->addPreferencesFromResource(I)V

    .line 53
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/VibrateItemsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/VibrateItemsSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    const-string v0, "incoming_call_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/settings/VibrateItemsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/VibrateItemsSettings;->mInComingCall:Landroid/preference/CheckBoxPreference;

    .line 55
    const-string v0, "notification_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/settings/VibrateItemsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/VibrateItemsSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    .line 56
    const-string v0, "mms_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/settings/VibrateItemsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/VibrateItemsSettings;->mMms:Landroid/preference/CheckBoxPreference;

    .line 57
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/VibrateItemsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 71
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings/VibrateItemsSettings;->mInComingCall:Landroid/preference/CheckBoxPreference;

    if-ne v3, p2, :cond_2

    .line 72
    iget-object v3, p0, Lcom/android/settings/VibrateItemsSettings;->mInComingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 73
    .local v2, isChecked:Z
    const-string v3, "vibrate_ringer"

    if-eqz v2, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    iget-object v3, p0, Lcom/android/settings/VibrateItemsSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v2}, Lcom/android/settings/VibrateItemsSettings;->getVibrateSetting(Z)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 89
    .end local v2           #isChecked:Z
    :cond_0
    :goto_1
    return v5

    .restart local v2       #isChecked:Z
    :cond_1
    move v4, v6

    .line 73
    goto :goto_0

    .line 75
    .end local v2           #isChecked:Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/VibrateItemsSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    if-ne v3, p2, :cond_4

    .line 76
    iget-object v3, p0, Lcom/android/settings/VibrateItemsSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 77
    .restart local v2       #isChecked:Z
    const-string v3, "vibrate_notification"

    if-eqz v2, :cond_3

    move v4, v5

    :goto_2
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    iget-object v3, p0, Lcom/android/settings/VibrateItemsSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v2}, Lcom/android/settings/VibrateItemsSettings;->getVibrateSetting(Z)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_1

    :cond_3
    move v4, v6

    .line 77
    goto :goto_2

    .line 79
    .end local v2           #isChecked:Z
    :cond_4
    iget-object v3, p0, Lcom/android/settings/VibrateItemsSettings;->mMms:Landroid/preference/CheckBoxPreference;

    if-ne v3, p2, :cond_0

    .line 80
    const-string v3, "vibrate_mms"

    iget-object v4, p0, Lcom/android/settings/VibrateItemsSettings;->mMms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_3
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, broadcast:Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v3, "android.media.EXTRA_VIBRATE_SETTING"

    iget-object v4, p0, Lcom/android/settings/VibrateItemsSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/settings/VibrateItemsSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_5
    move v4, v6

    .line 80
    goto :goto_3
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 63
    iget-object v0, p0, Lcom/android/settings/VibrateItemsSettings;->mInComingCall:Landroid/preference/CheckBoxPreference;

    const-string v1, "vibrate_ringer"

    invoke-static {p0, v1}, Landroid/provider/Settings;->isVibratePrefOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/VibrateItemsSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    const-string v1, "vibrate_notification"

    invoke-static {p0, v1}, Landroid/provider/Settings;->isVibratePrefOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/VibrateItemsSettings;->mMms:Landroid/preference/CheckBoxPreference;

    const-string v1, "vibrate_mms"

    invoke-static {p0, v1}, Landroid/provider/Settings;->isVibratePrefOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 66
    return-void
.end method
