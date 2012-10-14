.class public Lcom/android/settings/DisplaySettings;
.super Landroid/preference/PreferenceActivity;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAdvancedMode:Landroid/preference/Preference;

.field private mAnimationScales:[F

.field private mAnimations:Landroid/preference/RangeBarPreference;

.field private mAutomatic:Z

.field private mAutomaticBrightness:Landroid/preference/CheckBoxPreference;

.field private mBrightness:Lcom/android/settings/SeekBarPreference;

.field private mBrightnessCategory:Landroid/preference/PreferenceCategory;

.field private mElectronBeamAnimationOff:Landroid/preference/CheckBoxPreference;

.field private mElectronBeamAnimationOn:Landroid/preference/CheckBoxPreference;

.field private mLightSensorValue:I

.field private mRotate180Pref:Landroid/preference/CheckBoxPreference;

.field private mScreenTimeout:Landroid/preference/RangeBarPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mLightSensorValue:I

    return-void
.end method

.method private loadBrightness()V
    .locals 5

    .prologue
    .line 240
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 241
    .local v2, power:Landroid/os/IPowerManager;
    invoke-interface {v2}, Landroid/os/IPowerManager;->getLcdBacklightBrightness()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 245
    .end local v2           #power:Landroid/os/IPowerManager;
    .local v0, brightness:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v3}, Lcom/android/settings/SeekBarPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->setBrightness(I)V

    .line 248
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/SeekBarPreference;

    const/4 v4, 0x5

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 249
    return-void

    .line 242
    .end local v0           #brightness:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 243
    .local v1, e:Landroid/os/RemoteException;
    const/16 v0, 0xff

    .restart local v0       #brightness:I
    goto :goto_0
.end method

.method private setBrightness(I)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 267
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 269
    .local v0, power:Landroid/os/IPowerManager;
    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mAutomatic:Z

    if-nez v1, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 280
    .end local v0           #power:Landroid/os/IPowerManager;
    :goto_0
    return-void

    .line 273
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_0
    iget v1, p0, Lcom/android/settings/DisplaySettings;->mLightSensorValue:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 274
    invoke-interface {v0}, Landroid/os/IPowerManager;->getLightSensorValue()I

    move-result v1

    iput v1, p0, Lcom/android/settings/DisplaySettings;->mLightSensorValue:I

    .line 276
    :cond_1
    iget v1, p0, Lcom/android/settings/DisplaySettings;->mLightSensorValue:I

    invoke-interface {v0, v1, p1}, Landroid/os/IPowerManager;->setAutomaticBrightness(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    .end local v0           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateAutomaticSummary()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mAutomatic:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutomaticBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAdvancedMode:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 255
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/SeekBarPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SeekBarPreference;->setEnabled(Z)V

    .line 263
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutomaticBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAdvancedMode:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 261
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/SeekBarPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SeekBarPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateState(Z)V
    .locals 11
    .parameter "force"

    .prologue
    const/high16 v8, 0x3f00

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 142
    const/4 v1, 0x0

    .line 144
    .local v1, animations:I
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v6}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    if-eqz v6, :cond_1

    .line 148
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v6, v6

    if-lt v6, v10, :cond_0

    .line 149
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    aget v6, v6, v9

    add-float/2addr v6, v8

    float-to-int v6, v6

    rem-int/lit8 v1, v6, 0xa

    .line 151
    :cond_0
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v6, v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 152
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    aget v6, v6, v10

    add-float/2addr v6, v8

    float-to-int v6, v6

    and-int/lit8 v6, v6, 0x7

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v1, v6

    .line 155
    :cond_1
    const/4 v4, 0x0

    .line 156
    .local v4, idx:I
    const/4 v2, 0x0

    .line 157
    .local v2, best:I
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/RangeBarPreference;

    invoke-virtual {v6}, Landroid/preference/RangeBarPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 158
    .local v0, aents:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_3

    .line 159
    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 160
    .local v5, val:I
    if-gt v5, v1, :cond_2

    if-le v5, v2, :cond_2

    .line 161
    move v2, v5

    .line 162
    move v4, v3

    .line 158
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 165
    .end local v5           #val:I
    :cond_3
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/RangeBarPreference;

    invoke-virtual {v6, v4}, Landroid/preference/RangeBarPreference;->setValueIndex(I)V

    .line 167
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accelerometer_rotation"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v7, v10

    :goto_2
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_5

    move v6, v10

    :goto_3
    iput-boolean v6, p0, Lcom/android/settings/DisplaySettings;->mAutomatic:Z

    .line 173
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAutomaticBrightness:Landroid/preference/CheckBoxPreference;

    iget-boolean v7, p0, Lcom/android/settings/DisplaySettings;->mAutomatic:Z

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAutomaticSummary()V

    .line 175
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/SeekBarPreference;

    const/16 v7, 0xfa

    invoke-virtual {v6, v7}, Lcom/android/settings/SeekBarPreference;->setMax(I)V

    .line 176
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->loadBrightness()V

    .line 177
    return-void

    :cond_4
    move v7, v9

    .line 167
    goto :goto_2

    :cond_5
    move v6, v9

    .line 171
    goto :goto_3

    .line 145
    .end local v0           #aents:[Ljava/lang/CharSequence;
    .end local v2           #best:I
    .end local v3           #i:I
    .end local v4           #idx:I
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v9, "gpu"

    const-string v8, "electron_beam_animation_on"

    const-string v7, "electron_beam_animation_off"

    .line 79
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 83
    const v1, 0x7f040018

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 85
    const-string v1, "brightness_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightnessCategory:Landroid/preference/PreferenceCategory;

    .line 86
    const-string v1, "advanced_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAdvancedMode:Landroid/preference/Preference;

    .line 87
    const-string v1, "accelerometer"

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 88
    const-string v1, "automatic_brightness"

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAutomaticBrightness:Landroid/preference/CheckBoxPreference;

    .line 89
    const-string v1, "brightness"

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SeekBarPreference;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/SeekBarPreference;

    .line 90
    const-string v1, "screen_timeout"

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/RangeBarPreference;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeout:Landroid/preference/RangeBarPreference;

    .line 91
    const-string v1, "animations"

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/RangeBarPreference;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/RangeBarPreference;

    .line 93
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAutomaticBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeout:Landroid/preference/RangeBarPreference;

    invoke-virtual {v1, p0}, Landroid/preference/RangeBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/RangeBarPreference;

    invoke-virtual {v1, p0}, Landroid/preference/RangeBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeout:Landroid/preference/RangeBarPreference;

    const-string v2, "screen_off_timeout"

    const/16 v3, 0x7530

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/RangeBarPreference;->setValue(Ljava/lang/String;)V

    .line 102
    const-string v1, "rotate_180"

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotate180Pref:Landroid/preference/CheckBoxPreference;

    .line 103
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotate180Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotate180Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotate_180"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 108
    const-string v1, "electron_beam_animation_on"

    invoke-virtual {p0, v8}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mElectronBeamAnimationOn:Landroid/preference/CheckBoxPreference;

    .line 109
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mElectronBeamAnimationOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mElectronBeamAnimationOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "electron_beam_animation_on"

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10d0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    :goto_1
    invoke-static {v2, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_3

    move v2, v5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    const-string v1, "electron_beam_animation_off"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mElectronBeamAnimationOff:Landroid/preference/CheckBoxPreference;

    .line 114
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mElectronBeamAnimationOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mElectronBeamAnimationOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "electron_beam_animation_off"

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10d0018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    :goto_3
    invoke-static {v2, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_5

    move v2, v5

    :goto_4
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 119
    sget-boolean v1, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v1, :cond_0

    const-string v1, "gpu"

    const-string v1, "persist.sys.composition.type"

    const-string v2, "gpu"

    invoke-static {v1, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mElectronBeamAnimationOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mElectronBeamAnimationOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mElectronBeamAnimationOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mElectronBeamAnimationOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 125
    :cond_0
    return-void

    :cond_1
    move v2, v6

    .line 104
    goto/16 :goto_0

    :cond_2
    move v3, v6

    .line 110
    goto :goto_1

    :cond_3
    move v2, v6

    goto :goto_2

    :cond_4
    move v3, v6

    .line 115
    goto :goto_3

    :cond_5
    move v2, v6

    goto :goto_4
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "DisplaySettings"

    .line 180
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_2

    .line 181
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 183
    .local v2, isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    if-eqz v2, :cond_1

    move v6, v7

    :goto_0
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    .end local v2           #isChecked:Z
    :cond_0
    :goto_1
    return v7

    .restart local v2       #isChecked:Z
    :cond_1
    move v6, v8

    .line 183
    goto :goto_0

    .line 185
    .end local v2           #isChecked:Z
    .restart local p2
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAutomaticBrightness:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_4

    .line 186
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/DisplaySettings;->mAutomatic:Z

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    iget-boolean v6, p0, Lcom/android/settings/DisplaySettings;->mAutomatic:Z

    if-eqz v6, :cond_3

    move v6, v7

    :goto_2
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    invoke-direct {p0, v7}, Lcom/android/settings/DisplaySettings;->updateState(Z)V

    goto :goto_1

    :cond_3
    move v6, v8

    .line 188
    goto :goto_2

    .line 193
    .restart local p2
    :cond_4
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/SeekBarPreference;

    if-ne p1, v4, :cond_5

    .line 194
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v0, v4, 0x5

    .line 195
    .local v0, brightness:I
    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->setBrightness(I)V

    goto :goto_1

    .line 196
    .end local v0           #brightness:I
    .restart local p2
    :cond_5
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeout:Landroid/preference/RangeBarPreference;

    if-ne p1, v4, :cond_6

    .line 197
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 199
    .local v3, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 201
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 202
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v9, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 204
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #value:I
    .restart local p2
    :cond_6
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/RangeBarPreference;

    if-ne p1, v4, :cond_9

    .line 206
    :try_start_1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 207
    .restart local v3       #value:I
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v4, v4

    if-lt v4, v7, :cond_7

    .line 208
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    const/4 v5, 0x0

    rem-int/lit8 v6, v3, 0xa

    int-to-float v6, v6

    aput v6, v4, v5

    .line 210
    :cond_7
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v4, v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_8

    .line 211
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    const/4 v5, 0x1

    div-int/lit8 v6, v3, 0xa

    rem-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    aput v6, v4, v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 214
    :cond_8
    :try_start_2
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 215
    :catch_1
    move-exception v4

    goto/16 :goto_1

    .line 217
    .end local v3           #value:I
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 218
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v4, "DisplaySettings"

    const-string v4, "could not persist animation setting"

    invoke-static {v9, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 220
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_9
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mElectronBeamAnimationOn:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_b

    .line 221
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 222
    .restart local v2       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "electron_beam_animation_on"

    if-eqz v2, :cond_a

    move v6, v7

    :goto_3
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    move v6, v8

    goto :goto_3

    .line 224
    .end local v2           #isChecked:Z
    .restart local p2
    :cond_b
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mElectronBeamAnimationOff:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_d

    .line 225
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 226
    .restart local v2       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "electron_beam_animation_off"

    if-eqz v2, :cond_c

    move v6, v7

    :goto_4
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    move v6, v8

    goto :goto_4

    .line 228
    .end local v2           #isChecked:Z
    .restart local p2
    :cond_d
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mRotate180Pref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_0

    .line 229
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 230
    .restart local v2       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotate_180"

    if-eqz v2, :cond_e

    move v6, v7

    :goto_5
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_e
    move v6, v8

    goto :goto_5
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->updateState(Z)V

    .line 131
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onWindowFocusChanged(Z)V

    .line 136
    if-eqz p1, :cond_0

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->updateState(Z)V

    .line 139
    :cond_0
    return-void
.end method
