.class public Lcom/android/settings/KeySettings;
.super Landroid/preference/PreferenceActivity;
.source "KeySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

.field private mBackLongPressTimeout:Lcom/android/settings/SeekBarPreference;

.field private mCameraKeyAction:Landroid/preference/Preference;

.field private mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

.field private mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

.field private mPreferredMediaApp:Landroid/preference/ListPreference;

.field private mTimeout:I

.field private mTrackballWake:Landroid/preference/CheckBoxPreference;

.field private mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updatePreferredMediaApp()V
    .locals 13

    .prologue
    .line 167
    const/4 v7, -0x1

    .line 168
    .local v7, preferredIndex:I
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "media_button_preferred_app"

    const-string v11, "com.miui.player"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, preferred:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 176
    .local v8, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 178
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 179
    .local v0, count:I
    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 180
    .local v1, entries:[Ljava/lang/CharSequence;
    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 181
    .local v2, entryValues:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .end local v4           #intent:Landroid/content/Intent;
    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 182
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v1, v3

    .line 183
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v9, v2, v3

    .line 184
    aget-object v9, v2, v3

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 185
    move v7, v3

    .line 181
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_1
    iget-object v9, p0, Lcom/android/settings/KeySettings;->mPreferredMediaApp:Landroid/preference/ListPreference;

    invoke-virtual {v9, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 189
    iget-object v9, p0, Lcom/android/settings/KeySettings;->mPreferredMediaApp:Landroid/preference/ListPreference;

    invoke-virtual {v9, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 197
    .end local v0           #count:I
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #entryValues:[Ljava/lang/CharSequence;
    .end local v3           #i:I
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :goto_1
    if-gez v7, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "media_button_preferred_app"

    const-string v11, "com.miui.player"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 202
    iget-object v9, p0, Lcom/android/settings/KeySettings;->mPreferredMediaApp:Landroid/preference/ListPreference;

    const-string v10, "com.miui.player"

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 207
    :goto_2
    return-void

    .line 192
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_2
    iget-object v9, p0, Lcom/android/settings/KeySettings;->mPreferredMediaApp:Landroid/preference/ListPreference;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const v12, 0x7f090443

    invoke-virtual {p0, v12}, Lcom/android/settings/KeySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 193
    iget-object v9, p0, Lcom/android/settings/KeySettings;->mPreferredMediaApp:Landroid/preference/ListPreference;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const-string v12, ""

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 205
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v9, p0, Lcom/android/settings/KeySettings;->mPreferredMediaApp:Landroid/preference/ListPreference;

    invoke-virtual {v9, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2
.end method

.method private updateState(Z)V
    .locals 9
    .parameter "force"

    .prologue
    const/16 v8, 0x1f4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "trackball_wake_screen"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 113
    const-string v2, "persist.sys.multitouch"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 114
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "back_key_long_press_timeout"

    const/16 v4, -0x7d0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/KeySettings;->mTimeout:I

    .line 124
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mBackLongPressTimeout:Lcom/android/settings/SeekBarPreference;

    iget v3, p0, Lcom/android/settings/KeySettings;->mTimeout:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v2, v3}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 125
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mBackLongPressTimeout:Lcom/android/settings/SeekBarPreference;

    const/16 v3, 0x5dc

    invoke-virtual {v2, v3}, Lcom/android/settings/SeekBarPreference;->setMax(I)V

    .line 127
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

    iget v3, p0, Lcom/android/settings/KeySettings;->mTimeout:I

    if-lt v3, v8, :cond_4

    move v3, v6

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 129
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "keyguard_disable_power_key_long_press"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_5

    move v3, v6

    :goto_3
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volumekey_wake_screen"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_6

    move v3, v6

    :goto_4
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "camera_key_preferred_action_type"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 141
    .local v0, actionType:I
    const v1, 0x7f090448

    .line 142
    .local v1, lableId:I
    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_5
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mCameraKeyAction:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 160
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mCameraKeyAction:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 162
    invoke-direct {p0}, Lcom/android/settings/KeySettings;->updatePreferredMediaApp()V

    .line 163
    return-void

    .end local v0           #actionType:I
    .end local v1           #lableId:I
    :cond_2
    move v3, v5

    .line 108
    goto/16 :goto_0

    .line 116
    :cond_3
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    move v3, v5

    .line 127
    goto :goto_2

    :cond_5
    move v3, v5

    .line 129
    goto :goto_3

    :cond_6
    move v3, v5

    .line 134
    goto :goto_4

    .line 144
    .restart local v0       #actionType:I
    .restart local v1       #lableId:I
    :pswitch_0
    const v1, 0x7f090447

    .line 145
    goto :goto_5

    .line 148
    :pswitch_1
    const v1, 0x7f090448

    .line 149
    goto :goto_5

    .line 152
    :pswitch_2
    const v1, 0x7f090449

    .line 153
    goto :goto_5

    .line 156
    :pswitch_3
    const v1, 0x7f09044a

    goto :goto_5

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f09043e

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v1, 0x7f04001d

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->addPreferencesFromResource(I)V

    .line 60
    const-string v1, "enable_back_long_press"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/KeySettings;->mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

    .line 61
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    const-string v1, "back_long_press_timeout"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SeekBarPreference;

    iput-object v1, p0, Lcom/android/settings/KeySettings;->mBackLongPressTimeout:Lcom/android/settings/SeekBarPreference;

    .line 64
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mBackLongPressTimeout:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mBackLongPressTimeout:Lcom/android/settings/SeekBarPreference;

    new-array v2, v5, [Ljava/lang/Object;

    const-wide/high16 v3, 0x3fe0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v7, v2}, Lcom/android/settings/KeySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-wide/high16 v4, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v7, v3}, Lcom/android/settings/KeySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/SeekBarPreference;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "disable_power_long_press"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/KeySettings;->mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

    .line 70
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    const-string v1, "pref_volume_wake"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    .line 73
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    sget-boolean v1, Landroid/os/Build;->IS_DEFY:Z

    if-nez v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "multi_touch_points_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 82
    :goto_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 83
    .local v0, device:Ljava/lang/String;
    const-string v1, "bravo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "passion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vision"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v1, "trackball_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 91
    :goto_1
    const-string v1, "preferred_media_app"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/KeySettings;->mPreferredMediaApp:Landroid/preference/ListPreference;

    .line 92
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mPreferredMediaApp:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    const-string v1, "camera_key_action"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/KeySettings;->mCameraKeyAction:Landroid/preference/Preference;

    .line 95
    sget-boolean v1, Landroid/provider/Settings$System;->CAMERA_KEY_PREFERRED_ACTION_ENABLED:Z

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "camera_key_action_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 98
    :cond_0
    return-void

    .line 78
    .end local v0           #device:Ljava/lang/String;
    :cond_1
    const-string v1, "enable_multi_touch_points"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    .line 79
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 86
    .restart local v0       #device:Ljava/lang/String;
    :cond_2
    const-string v1, "trackball_wake"

    invoke-virtual {p0, v1}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    .line 87
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v3, "persist.sys.multitouch"

    const-string v6, "back_key_long_press_timeout"

    .line 210
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    .line 211
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 213
    .local v0, isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "back_key_long_press_timeout"

    iget v3, p0, Lcom/android/settings/KeySettings;->mTimeout:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-eqz v0, :cond_1

    move v4, v5

    :goto_0
    mul-int/2addr v3, v4

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    .end local v0           #isChecked:Z
    :cond_0
    :goto_1
    return v5

    .line 213
    .restart local v0       #isChecked:Z
    :cond_1
    const/4 v4, -0x1

    goto :goto_0

    .line 217
    .end local v0           #isChecked:Z
    .restart local p2
    :cond_2
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mBackLongPressTimeout:Lcom/android/settings/SeekBarPreference;

    if-ne p1, v2, :cond_3

    .line 218
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit16 v2, v2, 0x1f4

    iput v2, p0, Lcom/android/settings/KeySettings;->mTimeout:I

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "back_key_long_press_timeout"

    iget v3, p0, Lcom/android/settings/KeySettings;->mTimeout:I

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 224
    .restart local p2
    :cond_3
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_5

    .line 225
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 226
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "keyguard_disable_power_key_long_press"

    if-eqz v0, :cond_4

    move v4, v5

    :cond_4
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 230
    .end local v0           #isChecked:Z
    .restart local p2
    :cond_5
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_7

    .line 231
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 232
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "trackball_wake_screen"

    if-eqz v0, :cond_6

    move v4, v5

    :cond_6
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 236
    .end local v0           #isChecked:Z
    .restart local p2
    :cond_7
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mPreferredMediaApp:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_8

    .line 237
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "media_button_preferred_app"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 242
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mPreferredMediaApp:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 245
    .end local v1           #value:Ljava/lang/String;
    :cond_8
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_a

    .line 246
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 247
    .restart local v0       #isChecked:Z
    if-eqz v0, :cond_9

    .line 248
    const-string v2, "persist.sys.multitouch"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :cond_9
    const-string v2, "persist.sys.multitouch"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 254
    .end local v0           #isChecked:Z
    .restart local p2
    :cond_a
    iget-object v2, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_0

    .line 255
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 256
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volumekey_wake_screen"

    if-eqz v0, :cond_b

    move v4, v5

    :cond_b
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/KeySettings;->updateState(Z)V

    .line 104
    return-void
.end method
