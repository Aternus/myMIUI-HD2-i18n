.class public Lcom/miui/antispam/firewall/PatternSettings;
.super Landroid/preference/PreferenceActivity;
.source "PatternSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAcceptWhitelist:Landroid/preference/RadioButtonPreference;

.field private mPref:Landroid/content/SharedPreferences;

.field private mRadio2Value:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/preference/RadioButtonPreference;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRejectAll:Landroid/preference/RadioButtonPreference;

.field private mRejectBlacklist:Landroid/preference/RadioButtonPreference;

.field private mRejectBlacklistStranger:Landroid/preference/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    return-void
.end method

.method private getCurrentOption()I
    .locals 3

    .prologue
    .line 67
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/RadioButtonPreference;

    .line 68
    .local v1, radio:Landroid/preference/RadioButtonPreference;
    invoke-virtual {v1}, Landroid/preference/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 72
    .end local v1           #radio:Landroid/preference/RadioButtonPreference;
    :goto_0
    return v2

    .restart local p0
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f070018

    .line 131
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 132
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "firewall_option_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, option_id:I
    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    :goto_0
    return-object v2

    .line 137
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 138
    const v2, 0x7f07001b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 140
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 141
    const v2, 0x7f07001c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 143
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 144
    const v2, 0x7f070019

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 147
    :cond_3
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static saveSystemSetting(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 8
    .parameter "context"
    .parameter "pref"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v7, "whitelist_enabled"

    const-string v6, "incoming_call_limit_setting"

    const-string v5, "blacklist_enabled"

    .line 152
    const-string v1, "firewall_option_key"

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, opt:I
    if-nez v0, :cond_1

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blacklist_enabled"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "whitelist_enabled"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incoming_call_limit_setting"

    invoke-static {v1, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blacklist_enabled"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "whitelist_enabled"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incoming_call_limit_setting"

    const/4 v2, 0x3

    invoke-static {v1, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 173
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blacklist_enabled"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "whitelist_enabled"

    invoke-static {v1, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incoming_call_limit_setting"

    const/4 v2, 0x3

    invoke-static {v1, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 182
    :cond_3
    if-ne v0, v3, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "blacklist_enabled"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "whitelist_enabled"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incoming_call_limit_setting"

    invoke-static {v1, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setRadioStatus(Landroid/preference/Preference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/RadioButtonPreference;

    .line 91
    .local v1, radio:Landroid/preference/RadioButtonPreference;
    if-eq v1, p1, :cond_0

    .line 92
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 94
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 97
    .end local v1           #radio:Landroid/preference/RadioButtonPreference;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/PatternSettings;->addPreferencesFromResource(I)V

    .line 46
    const-string v0, "opt_reject_blacklist"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/PatternSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklist:Landroid/preference/RadioButtonPreference;

    .line 47
    iget-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklist:Landroid/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroid/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 48
    iget-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklist:Landroid/preference/RadioButtonPreference;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "opt_reject_blacklist_stranger"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/PatternSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklistStranger:Landroid/preference/RadioButtonPreference;

    .line 51
    iget-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklistStranger:Landroid/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroid/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    iget-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklistStranger:Landroid/preference/RadioButtonPreference;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "opt_accept_whitelist"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/PatternSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mAcceptWhitelist:Landroid/preference/RadioButtonPreference;

    .line 55
    iget-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mAcceptWhitelist:Landroid/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroid/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    iget-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/antispam/firewall/PatternSettings;->mAcceptWhitelist:Landroid/preference/RadioButtonPreference;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "opt_reject_all"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/PatternSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectAll:Landroid/preference/RadioButtonPreference;

    .line 59
    iget-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectAll:Landroid/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroid/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    iget-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectAll:Landroid/preference/RadioButtonPreference;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/firewall/PatternSettings;->mPref:Landroid/content/SharedPreferences;

    .line 64
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklist:Landroid/preference/RadioButtonPreference;

    if-ne p1, v2, :cond_2

    .line 102
    move-object v0, p1

    check-cast v0, Landroid/preference/RadioButtonPreference;

    move-object v1, v0

    .line 103
    .local v1, radio:Landroid/preference/RadioButtonPreference;
    invoke-virtual {v1}, Landroid/preference/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 127
    .end local v1           #radio:Landroid/preference/RadioButtonPreference;
    :goto_0
    return v2

    .line 104
    .restart local v1       #radio:Landroid/preference/RadioButtonPreference;
    :cond_0
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklist:Landroid/preference/RadioButtonPreference;

    invoke-direct {p0, v2}, Lcom/miui/antispam/firewall/PatternSettings;->setRadioStatus(Landroid/preference/Preference;)V

    .line 122
    .end local v1           #radio:Landroid/preference/RadioButtonPreference;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "firewall_option_key"

    invoke-direct {p0}, Lcom/miui/antispam/firewall/PatternSettings;->getCurrentOption()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mPref:Landroid/content/SharedPreferences;

    invoke-static {p0, v2}, Lcom/miui/antispam/firewall/PatternSettings;->saveSystemSetting(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 124
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->updateOnNotification(Landroid/content/Context;)V

    .line 127
    const/4 v2, 0x1

    goto :goto_0

    .line 106
    .restart local p2
    :cond_2
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mAcceptWhitelist:Landroid/preference/RadioButtonPreference;

    if-ne p1, v2, :cond_4

    .line 107
    move-object v0, p1

    check-cast v0, Landroid/preference/RadioButtonPreference;

    move-object v1, v0

    .line 108
    .restart local v1       #radio:Landroid/preference/RadioButtonPreference;
    invoke-virtual {v1}, Landroid/preference/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_0

    .line 109
    :cond_3
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mAcceptWhitelist:Landroid/preference/RadioButtonPreference;

    invoke-direct {p0, v2}, Lcom/miui/antispam/firewall/PatternSettings;->setRadioStatus(Landroid/preference/Preference;)V

    goto :goto_1

    .line 111
    .end local v1           #radio:Landroid/preference/RadioButtonPreference;
    .restart local p2
    :cond_4
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectAll:Landroid/preference/RadioButtonPreference;

    if-ne p1, v2, :cond_6

    .line 112
    move-object v0, p1

    check-cast v0, Landroid/preference/RadioButtonPreference;

    move-object v1, v0

    .line 113
    .restart local v1       #radio:Landroid/preference/RadioButtonPreference;
    invoke-virtual {v1}, Landroid/preference/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_0

    .line 114
    :cond_5
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectAll:Landroid/preference/RadioButtonPreference;

    invoke-direct {p0, v2}, Lcom/miui/antispam/firewall/PatternSettings;->setRadioStatus(Landroid/preference/Preference;)V

    goto :goto_1

    .line 116
    .end local v1           #radio:Landroid/preference/RadioButtonPreference;
    .restart local p2
    :cond_6
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklistStranger:Landroid/preference/RadioButtonPreference;

    if-ne p1, v2, :cond_1

    .line 117
    move-object v0, p1

    check-cast v0, Landroid/preference/RadioButtonPreference;

    move-object v1, v0

    .line 118
    .restart local v1       #radio:Landroid/preference/RadioButtonPreference;
    invoke-virtual {v1}, Landroid/preference/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_0

    .line 119
    :cond_7
    iget-object v2, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRejectBlacklistStranger:Landroid/preference/RadioButtonPreference;

    invoke-direct {p0, v2}, Lcom/miui/antispam/firewall/PatternSettings;->setRadioStatus(Landroid/preference/Preference;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 77
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 79
    iget-object v3, p0, Lcom/miui/antispam/firewall/PatternSettings;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "firewall_option_key"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 81
    .local v1, option:I
    iget-object v3, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/RadioButtonPreference;

    .line 82
    .local v2, radio:Landroid/preference/RadioButtonPreference;
    iget-object v3, p0, Lcom/miui/antispam/firewall/PatternSettings;->mRadio2Value:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 83
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/RadioButtonPreference;->setChecked(Z)V

    .line 87
    .end local v2           #radio:Landroid/preference/RadioButtonPreference;
    :cond_1
    return-void
.end method
