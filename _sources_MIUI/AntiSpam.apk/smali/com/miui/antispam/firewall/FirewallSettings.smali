.class public Lcom/miui/antispam/firewall/FirewallSettings;
.super Landroid/preference/PreferenceActivity;
.source "FirewallSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAction:Landroid/preference/PreferenceScreen;

.field private mAntiStranger:Landroid/preference/CheckBoxPreference;

.field private mEnableFirewall:Landroid/preference/CheckBoxPreference;

.field private mEnableTimeLimit:Landroid/preference/PreferenceScreen;

.field private mFilterSms:Landroid/preference/CheckBoxPreference;

.field private mPattern:Landroid/preference/PreferenceScreen;

.field private mPref:Landroid/content/SharedPreferences;

.field private mShowNotification:Landroid/preference/CheckBoxPreference;

.field private mShowOn:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mPref:Landroid/content/SharedPreferences;

    .line 43
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->addPreferencesFromResource(I)V

    .line 45
    const-string v0, "fw_enable_firewall"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mEnableFirewall:Landroid/preference/CheckBoxPreference;

    .line 46
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mEnableFirewall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 48
    const-string v0, "fw_pattern_settings"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mPattern:Landroid/preference/PreferenceScreen;

    .line 49
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mPattern:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setPreviewEnabled(Z)V

    .line 50
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mPattern:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setRightIndicatorVisibility(I)V

    .line 52
    const-string v0, "fw_action_settings"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAction:Landroid/preference/PreferenceScreen;

    .line 53
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAction:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setPreviewEnabled(Z)V

    .line 54
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAction:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setRightIndicatorVisibility(I)V

    .line 56
    const-string v0, "fw_show_firewall_notification"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowOn:Landroid/preference/CheckBoxPreference;

    .line 57
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    const-string v0, "fw_show_notification"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowNotification:Landroid/preference/CheckBoxPreference;

    .line 60
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    const-string v0, "anti_stranger_call"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiStranger:Landroid/preference/CheckBoxPreference;

    .line 63
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiStranger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    const-string v0, "filter_stranger_sms"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mFilterSms:Landroid/preference/CheckBoxPreference;

    .line 66
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mFilterSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    const-string v0, "fw_enable_time_limit"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mEnableTimeLimit:Landroid/preference/PreferenceScreen;

    .line 69
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mEnableTimeLimit:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setPreviewEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mEnableTimeLimit:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setRightIndicatorVisibility(I)V

    .line 72
    const-string v0, "fw_set_keyword"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceScreen;->setRightIndicatorVisibility(I)V

    .line 73
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mEnableFirewall:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 91
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-static {p0, p2}, Lcom/miui/antispam/firewall/FirewallHelper;->setFirewallEnalbed(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 92
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->updateOnNotification(Landroid/content/Context;)V

    .line 108
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 94
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowOn:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_2

    .line 95
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fw_show_firewall_notification"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->updateOnNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 98
    .restart local p2
    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mShowNotification:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_3

    .line 99
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fw_show_notification"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 101
    .restart local p2
    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiStranger:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_4

    .line 102
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-static {p0, p2}, Lcom/miui/antispam/firewall/FirewallHelper;->setAntiStrangerEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 104
    .restart local p2
    :cond_4
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mFilterSms:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_0

    .line 105
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-static {p0, p2}, Lcom/miui/antispam/firewall/FirewallHelper;->setFilterSmsEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 80
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mEnableFirewall:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getFirewallEnalbed(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mPattern:Landroid/preference/PreferenceScreen;

    invoke-static {p0}, Lcom/miui/antispam/firewall/PatternSettings;->getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAction:Landroid/preference/PreferenceScreen;

    invoke-static {p0}, Lcom/miui/antispam/firewall/ActionSettings;->getActionSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mAntiStranger:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getAntiStrangerEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mFilterSms:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getFilterSmsEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallSettings;->mEnableTimeLimit:Landroid/preference/PreferenceScreen;

    invoke-static {p0}, Lcom/miui/antispam/firewall/TimeSettings;->getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method
