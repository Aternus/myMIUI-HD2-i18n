.class public Lcom/android/settings/ChooseLockGeneric;
.super Landroid/preference/PreferenceActivity;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mPasswordConfirmed:Z

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    return-void
.end method

.method private disableUnusablePreferences(II)V
    .locals 10
    .parameter "quality"
    .parameter "activeQuality"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "security_picker_category"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 197
    .local v5, picker:Landroid/preference/Preference;
    move-object v0, v5

    check-cast v0, Landroid/preference/PreferenceCategory;

    move-object v1, v0

    .line 198
    .local v1, cat:Landroid/preference/PreferenceCategory;
    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v7

    .line 199
    .local v7, preferenceCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_e

    .line 200
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .line 201
    .local v6, pref:Landroid/preference/Preference;
    instance-of v8, v6, Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_1

    .line 202
    move-object v0, v6

    check-cast v0, Landroid/preference/PreferenceScreen;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, key:Ljava/lang/String;
    const/4 v2, 0x1

    .line 204
    .local v2, enabled:Z
    const-string v8, "unlock_set_none"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 205
    if-gtz p1, :cond_2

    const/4 v8, 0x1

    move v2, v8

    .line 206
    :goto_1
    if-nez p2, :cond_3

    .line 207
    const v8, 0x7f020026

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setImageResource(I)V

    .line 234
    :cond_0
    :goto_2
    if-nez v2, :cond_1

    .line 235
    const v8, 0x7f0900dc

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 236
    const v8, 0x7f020038

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setImageResource(I)V

    .line 237
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 199
    .end local v2           #enabled:Z
    .end local v4           #key:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    .restart local v2       #enabled:Z
    .restart local v4       #key:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    move v2, v8

    goto :goto_1

    .line 209
    :cond_3
    const v8, 0x7f020038

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setImageResource(I)V

    goto :goto_2

    .line 211
    :cond_4
    const-string v8, "unlock_set_pattern"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 212
    const/high16 v8, 0x1

    if-gt p1, v8, :cond_5

    const/4 v8, 0x1

    move v2, v8

    .line 213
    :goto_3
    const/high16 v8, 0x1

    if-ne p2, v8, :cond_6

    .line 214
    const v8, 0x7f020026

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setImageResource(I)V

    goto :goto_2

    .line 212
    :cond_5
    const/4 v8, 0x0

    move v2, v8

    goto :goto_3

    .line 216
    :cond_6
    const v8, 0x7f020038

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setImageResource(I)V

    goto :goto_2

    .line 218
    :cond_7
    const-string v8, "unlock_set_pin"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 219
    const/high16 v8, 0x2

    if-gt p1, v8, :cond_8

    const/4 v8, 0x1

    move v2, v8

    .line 220
    :goto_4
    const/high16 v8, 0x2

    if-ne p2, v8, :cond_9

    .line 221
    const v8, 0x7f020026

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setImageResource(I)V

    goto :goto_2

    .line 219
    :cond_8
    const/4 v8, 0x0

    move v2, v8

    goto :goto_4

    .line 223
    :cond_9
    const v8, 0x7f020038

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setImageResource(I)V

    goto :goto_2

    .line 225
    :cond_a
    const-string v8, "unlock_set_password"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 226
    const/high16 v8, 0x5

    if-gt p1, v8, :cond_c

    const/4 v8, 0x1

    move v2, v8

    .line 227
    :goto_5
    const/high16 v8, 0x5

    if-eq p2, v8, :cond_b

    const/high16 v8, 0x4

    if-ne p2, v8, :cond_d

    .line 229
    :cond_b
    const v8, 0x7f020026

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setImageResource(I)V

    goto/16 :goto_2

    .line 226
    :cond_c
    const/4 v8, 0x0

    move v2, v8

    goto :goto_5

    .line 231
    :cond_d
    const v8, 0x7f020038

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setImageResource(I)V

    goto/16 :goto_2

    .line 241
    .end local v2           #enabled:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #pref:Landroid/preference/Preference;
    :cond_e
    return-void
.end method

.method public static getPasswordSettingsSummary(I)I
    .locals 4
    .parameter "quality"

    .prologue
    .line 175
    if-nez p0, :cond_0

    .line 176
    const v0, 0x7f0900d4

    .line 187
    .local v0, str:I
    :goto_0
    return v0

    .line 177
    .end local v0           #str:I
    :cond_0
    const/high16 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 178
    const v0, 0x7f0900d6

    .restart local v0       #str:I
    goto :goto_0

    .line 179
    .end local v0           #str:I
    :cond_1
    const/high16 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 180
    const v0, 0x7f0900d8

    .restart local v0       #str:I
    goto :goto_0

    .line 181
    .end local v0           #str:I
    :cond_2
    const/high16 v1, 0x5

    if-eq p0, v1, :cond_3

    const/high16 v1, 0x4

    if-ne p0, v1, :cond_4

    .line 183
    :cond_3
    const v0, 0x7f0900da

    .restart local v0       #str:I
    goto :goto_0

    .line 185
    .end local v0           #str:I
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported password quality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private onCreateUpdatePreference(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 75
    if-nez p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v1, "lockscreen.password_type"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, quality:I
    if-ne v0, v2, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric;->updatePreferences()V

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethod(I)V

    goto :goto_0
.end method

.method private updatePreferences()V
    .locals 5

    .prologue
    .line 133
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 134
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v2

    .line 135
    .local v2, quality:I
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 136
    .local v1, prefScreen:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 139
    :cond_0
    const v3, 0x7f04002d

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric;->addPreferencesFromResource(I)V

    .line 141
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/android/settings/ChooseLockGeneric;->disableUnusablePreferences(II)V

    .line 143
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 157
    :goto_0
    const-string v3, "visiblepattern"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/ChooseLockGeneric;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 159
    const-string v3, "unlock_tactile_feedback"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/ChooseLockGeneric;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 161
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    :cond_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 167
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    :cond_2
    return-void

    .line 146
    :sswitch_0
    const v3, 0x7f04002c

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 149
    :sswitch_1
    const v3, 0x7f04002e

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 153
    :sswitch_2
    const v3, 0x7f04002b

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 111
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric;->updatePreferences()V

    .line 123
    :goto_0
    return-void

    .line 113
    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 114
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    .line 116
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric;->updatePreferences()V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    goto :goto_0

    .line 121
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric;->setResult(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 57
    new-instance v1, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    .line 59
    if-eqz p1, :cond_0

    .line 60
    const-string v1, "password_confirmed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    .line 63
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    if-nez v1, :cond_2

    .line 64
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 65
    .local v0, helper:Landroid/security/ChooseLockSettingsHelper;
    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v2}, Landroid/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric;->onCreateUpdatePreference(Landroid/content/Intent;)V

    .line 72
    .end local v0           #helper:Landroid/security/ChooseLockSettingsHelper;
    :cond_1
    :goto_0
    return-void

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockGeneric;->onCreateUpdatePreference(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 293
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 299
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 294
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 296
    .restart local v0       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 92
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, key:Ljava/lang/String;
    const/4 v0, 0x1

    .line 94
    .local v0, handled:Z
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethod(I)V

    .line 105
    :goto_0
    return v0

    .line 96
    :cond_0
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    const/high16 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethod(I)V

    goto :goto_0

    .line 98
    :cond_1
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    const/high16 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethod(I)V

    goto :goto_0

    .line 100
    :cond_2
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethod(I)V

    goto :goto_0

    .line 103
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    return-void
.end method

.method updateUnlockMethod(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x7b

    const/4 v2, 0x4

    const/4 v5, 0x0

    const-string v7, "confirm_credentials"

    .line 252
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to update password without confirming first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 258
    if-ge p1, v0, :cond_7

    .line 261
    :goto_0
    const/high16 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 262
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    .line 263
    if-ge v1, v2, :cond_1

    move v1, v2

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v2

    .line 267
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 268
    const-string v4, "lockscreen.password_type"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    const-string v0, "lockscreen.password_min"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    const-string v0, "lockscreen.password_max"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    const-string v0, "confirm_credentials"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0, v3, v6}, Lcom/android/settings/ChooseLockGeneric;->startActivityForResult(Landroid/content/Intent;I)V

    .line 287
    :cond_2
    :goto_1
    return-void

    .line 273
    :cond_3
    const/high16 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 274
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 275
    :goto_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 276
    if-eqz v0, :cond_5

    const-class v0, Lcom/android/settings/ChooseLockPatternTutorial;

    :goto_3
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 279
    const-string v0, "key_lock_method"

    const-string v2, "pattern"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v0, "confirm_credentials"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v1, v6}, Lcom/android/settings/ChooseLockGeneric;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_4
    move v0, v5

    .line 274
    goto :goto_2

    .line 276
    :cond_5
    const-class v0, Lcom/android/settings/ChooseLockPattern;

    goto :goto_3

    .line 282
    :cond_6
    if-nez v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    .line 284
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric;->setResult(I)V

    .line 285
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric;->updatePreferences()V

    goto :goto_1

    :cond_7
    move v0, p1

    goto :goto_0
.end method
