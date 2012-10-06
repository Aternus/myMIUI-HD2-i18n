.class public Lcom/android/settings/PersonalSettings;
.super Landroid/preference/PreferenceActivity;
.source "PersonalSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v2, 0x7f040023

    invoke-virtual {p0, v2}, Lcom/android/settings/PersonalSettings;->addPreferencesFromResource(I)V

    .line 23
    const-string v2, "personalization_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/PersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 24
    .local v0, category:Landroid/preference/PreferenceCategory;
    const-string v2, "trackball"

    invoke-virtual {p0, v2}, Lcom/android/settings/PersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 25
    .local v1, trackball:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/PersonalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 26
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/PersonalSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    const v2, 0x7f090461

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 35
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 38
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 39
    .local v5, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v3

    .line 40
    .local v3, quality:I
    invoke-static {v3}, Lcom/android/settings/ChooseLockGeneric;->getPasswordSettingsSummary(I)I

    move-result v6

    .line 41
    .local v6, valueId:I
    invoke-virtual {p0, v6}, Lcom/android/settings/PersonalSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, valueStr:Ljava/lang/String;
    const-string v8, "personal_password"

    invoke-virtual {p0, v8}, Lcom/android/settings/PersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 43
    .local v2, p:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2, v11}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 45
    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 49
    :cond_0
    const-string v8, "access_control"

    invoke-virtual {p0, v8}, Lcom/android/settings/PersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v2, v11}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 52
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isACLockEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 53
    const v8, 0x7f090278

    invoke-virtual {p0, v8}, Lcom/android/settings/PersonalSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 60
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/PersonalSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "status_bar_style"

    invoke-static {}, Landroid/provider/Settings$System;->getDefaultStatusBarStyle()I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 64
    .local v4, style:I
    const-string v8, "status_bar_toggle_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/PersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v11}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 66
    if-nez v4, :cond_3

    const v8, 0x7f090418

    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/settings/PersonalSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 71
    .local v0, config:Landroid/content/res/Configuration;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 73
    iget v8, v0, Landroid/content/res/Configuration;->fontSize:I

    packed-switch v8, :pswitch_data_0

    .line 87
    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/settings/PersonalSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 88
    const-string v8, "font_size_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/PersonalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 89
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 90
    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_3
    return-void

    .line 55
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v4           #style:I
    :cond_2
    const v8, 0x7f090277

    invoke-virtual {p0, v8}, Lcom/android/settings/PersonalSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    .restart local v4       #style:I
    :cond_3
    const v8, 0x7f090419

    goto :goto_1

    .line 75
    .restart local v0       #config:Landroid/content/res/Configuration;
    :pswitch_0
    const v6, 0x7f09001d

    .line 76
    goto :goto_2

    .line 78
    :pswitch_1
    const v6, 0x7f09001e

    .line 79
    goto :goto_2

    .line 81
    :pswitch_2
    const v6, 0x7f09001f

    .line 82
    goto :goto_2

    .line 84
    :pswitch_3
    const v6, 0x7f090020

    goto :goto_2

    .line 91
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 92
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
