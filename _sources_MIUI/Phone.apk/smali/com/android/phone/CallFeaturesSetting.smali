.class public Lcom/android/phone/CallFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDialerClickPrefix:Landroid/preference/Preference;

.field private mDialpadPrefix:Landroid/preference/Preference;

.field private mDualMicrophone:Landroid/preference/CheckBoxPreference;

.field private mEnableTelocation:Landroid/preference/CheckBoxPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mShowQuickContactBadge:Landroid/preference/CheckBoxPreference;

.field private mTextPredefinedHangupSms:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v11, "predefined_hangup_sms"

    const-string v8, "dialer_click_pref"

    .line 125
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 130
    const v6, 0x7f050004

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 131
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 133
    .local v4, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v6, "dialer_click_pref"

    invoke-virtual {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDialerClickPrefix:Landroid/preference/Preference;

    .line 134
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDialerClickPrefix:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dialer_click_setting"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 137
    .local v1, clickAction:I
    if-eq v1, v12, :cond_3

    if-eqz v1, :cond_3

    .line 138
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dialer_click_setting"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->delete(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 139
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 140
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "dialer_click_pref"

    invoke-interface {v2, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    :goto_0
    const-string v6, "button_auto_dialpad"

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDialpadPrefix:Landroid/preference/Preference;

    .line 149
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDialpadPrefix:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    const-string v6, "show_quick_contact_badge"

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mShowQuickContactBadge:Landroid/preference/CheckBoxPreference;

    .line 152
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mShowQuickContactBadge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mShowQuickContactBadge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dialer_show_quick_contact_badge"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_4

    move v7, v9

    :goto_1
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 156
    const-string v6, "enable_telocation"

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mEnableTelocation:Landroid/preference/CheckBoxPreference;

    .line 157
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mEnableTelocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mEnableTelocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enable_telocation"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_5

    move v7, v9

    :goto_2
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    const-string v6, "predefined_hangup_sms"

    invoke-virtual {p0, v11}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/EditTextPreference;

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mTextPredefinedHangupSms:Landroid/preference/EditTextPreference;

    .line 162
    const-string v6, "predefined_hangup_sms"

    const-string v6, ""

    invoke-interface {v4, v11, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, sms:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 164
    const v6, 0x7f0c01d7

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 166
    const-string v6, "predefined_hangup_sms"

    invoke-interface {v2, v11, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    :cond_0
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mTextPredefinedHangupSms:Landroid/preference/EditTextPreference;

    invoke-virtual {v6, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    invoke-static {}, Lcom/android/phone/InCallControlState;->isSupportCallRecording()Z

    move-result v6

    if-nez v6, :cond_1

    .line 172
    const-string v6, "pref_key_auto_record_call"

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 173
    .local v3, pref:Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    const-string v6, "pref_key_call_recording_notification"

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 175
    invoke-virtual {v3}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "pref_key_auto_record_call"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "pref_key_call_recording_notification"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 180
    .end local v3           #pref:Landroid/preference/Preference;
    :cond_1
    const-string v6, "dual_microphone"

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicrophone:Landroid/preference/CheckBoxPreference;

    .line 181
    sget-boolean v6, Landroid/os/Build;->IS_MIONE:Z

    if-nez v6, :cond_6

    .line 182
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicrophone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicrophone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    :goto_3
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v12, :cond_2

    .line 193
    const-string v6, "auto_redial_pref"

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 194
    .local v0, audo_redial:Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {v0}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    .end local v0           #audo_redial:Landroid/preference/Preference;
    :cond_2
    return-void

    .line 143
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #sms:Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 144
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "dialer_click_pref"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_4
    move v7, v10

    .line 153
    goto/16 :goto_1

    :cond_5
    move v7, v10

    .line 158
    goto/16 :goto_2

    .line 184
    .restart local v5       #sms:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicrophone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dual_microphone"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v7, v9

    :goto_4
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 186
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicrophone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicrophone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicrophone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_7
    move v7, v10

    .line 184
    goto :goto_4
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 77
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDialerClickPrefix:Landroid/preference/Preference;

    if-ne p1, v6, :cond_1

    .line 78
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, clickAction:I
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dialer_click_setting"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    .end local v1           #clickAction:I
    :cond_0
    :goto_0
    return v9

    .line 83
    .restart local p2
    :cond_1
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDialpadPrefix:Landroid/preference/Preference;

    if-ne p1, v6, :cond_3

    .line 84
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 85
    .local v4, flag:Z
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dialer_auto_dialpad"

    if-eqz v4, :cond_2

    move v8, v9

    :cond_2
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 89
    .end local v4           #flag:Z
    .restart local p2
    :cond_3
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mShowQuickContactBadge:Landroid/preference/CheckBoxPreference;

    if-ne p1, v6, :cond_5

    .line 90
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 91
    .restart local v4       #flag:Z
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dialer_show_quick_contact_badge"

    if-eqz v4, :cond_4

    move v8, v9

    :cond_4
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 95
    .end local v4           #flag:Z
    .restart local p2
    :cond_5
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mTextPredefinedHangupSms:Landroid/preference/EditTextPreference;

    if-ne p1, v6, :cond_6

    .line 96
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 97
    .local v5, val:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 98
    const v6, 0x7f0c01d7

    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 100
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "predefined_hangup_sms"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 103
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #val:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mEnableTelocation:Landroid/preference/CheckBoxPreference;

    if-ne p1, v6, :cond_8

    .line 104
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    move v3, v9

    .line 105
    .local v3, enable:I
    :goto_1
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enable_telocation"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .end local v3           #enable:I
    :cond_7
    move v3, v8

    .line 104
    goto :goto_1

    .line 109
    .restart local p2
    :cond_8
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicrophone:Landroid/preference/CheckBoxPreference;

    if-ne p1, v6, :cond_0

    .line 110
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    move v3, v9

    .line 111
    .restart local v3       #enable:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_microphone"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .end local v3           #enable:I
    :cond_9
    move v3, v8

    .line 110
    goto :goto_2
.end method
