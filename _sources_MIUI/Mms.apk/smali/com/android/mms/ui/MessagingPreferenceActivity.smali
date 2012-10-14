.class public Lcom/android/mms/ui/MessagingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mLaunchThemeModifyPref:Landroid/preference/PreferenceScreen;

.field private mMessageThemePref:Landroid/preference/PreferenceScreen;

.field private mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

.field private mNotificationPref:Landroid/preference/CheckBoxPreference;

.field private mPopupPref:Landroid/preference/CheckBoxPreference;

.field private mSignaturePref:Landroid/preference/EditTextPreference;

.field private mWakeupScreenPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getSignatureSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "signature"

    .prologue
    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, summary:Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, nextlineindex:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const v3, 0x10400bb

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initPreference()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "pref_key_enable_notification"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPref:Landroid/preference/CheckBoxPreference;

    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    const-string v0, "pref_key_enable_notification_body"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    const-string v0, "pref_key_enable_new_message_popup"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopupPref:Landroid/preference/CheckBoxPreference;

    .line 114
    const-string v0, "pref_key_enable_wake_up_screen"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mWakeupScreenPref:Landroid/preference/CheckBoxPreference;

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mWakeupScreenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    const-string v0, "pref_key_launch_theme_modify"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mLaunchThemeModifyPref:Landroid/preference/PreferenceScreen;

    .line 118
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mLaunchThemeModifyPref:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setRightIndicatorVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mLaunchThemeModifyPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 120
    const-string v0, "pref_key_message_theme_setting"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessageThemePref:Landroid/preference/PreferenceScreen;

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessageThemePref:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setPreviewEnabled(Z)V

    .line 123
    const-string v0, "pref_key_edit_signature"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    .line 124
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 105
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->initPreference()V

    .line 106
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, " "

    .line 144
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    if-ne p1, v2, :cond_4

    .line 145
    if-nez p2, :cond_1

    const-string v2, ""

    move-object v1, v2

    .line 146
    .local v1, signature:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09015a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v1           #signature:Ljava/lang/String;
    .end local p2
    :cond_0
    :goto_1
    move v2, v5

    .line 175
    :goto_2
    return v2

    .line 145
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 150
    .restart local v1       #signature:Ljava/lang/String;
    :cond_2
    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v2, v4

    .line 154
    goto :goto_2

    .line 156
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSignaturePref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 159
    .end local v1           #signature:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_6

    .line 160
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 161
    .local v0, isChecked:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pref_key_enable_notification"

    if-eqz v0, :cond_5

    move v4, v5

    :cond_5
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 164
    .end local v0           #isChecked:Z
    .restart local p2
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_8

    .line 165
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 166
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pref_key_enable_notification_body"

    if-eqz v0, :cond_7

    move v4, v5

    :cond_7
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 169
    .end local v0           #isChecked:Z
    .restart local p2
    :cond_8
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mWakeupScreenPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_0

    .line 170
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 171
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pref_key_enable_wake_up_screen"

    if-eqz v0, :cond_9

    move v4, v5

    :cond_9
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mLaunchThemeModifyPref:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_0

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.thememanager"

    const-string v3, "com.android.thememanager.ThemeResourceTabActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 135
    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v2, 0x80

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    const/4 v1, 0x1

    .line 139
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 180
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 181
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 182
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationBodyEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 183
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mWakeupScreenPref:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefWakeupScreenEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 186
    .local v0, securityHelper:Landroid/security/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 188
    .local v2, util:Lcom/android/internal/widget/LockPatternUtils;
    const-string v3, "com.android.mms"

    const/high16 v4, 0x400

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->isAccessControlled(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 190
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f090143

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 191
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopupPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 192
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopupPref:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f090146

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 200
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/mms/ui/MessageUtils;->getConversationStyle(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, style:Ljava/lang/String;
    sget-object v3, Lcom/android/mms/ui/MessageListItem$Style;->bubble:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessageThemePref:Landroid/preference/PreferenceScreen;

    const v4, 0x7f090130

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 206
    :goto_1
    return-void

    .line 194
    .end local v1           #style:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 195
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mNotificationBodyPref:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f090142

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 196
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopupPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 197
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPopupPref:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f090145

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 204
    .restart local v1       #style:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessageThemePref:Landroid/preference/PreferenceScreen;

    const v4, 0x7f090131

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setValuePreview(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
