.class public Lcom/miui/antispam/firewall/FirewallHelper;
.super Ljava/lang/Object;
.source "FirewallHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAntiStrangerEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-static {p0}, Landroid/provider/Telephony;->isAntiStrangerEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getCallAct(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-static {p0}, Landroid/provider/Telephony;->getCallAct(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getEndTime(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "firewall_end_time"

    const/16 v2, 0x1a4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getFilterSmsEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-static {p0}, Landroid/provider/Telephony;->isFilterSmsEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getFirewallEnalbed(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    invoke-static {p0}, Landroid/provider/Telephony;->isFirewallEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getShowBlockedNotification(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "fw_show_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getShowFirewallNotification(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 71
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "fw_show_firewall_notification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSmsAct(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    invoke-static {p0}, Landroid/provider/Telephony;->getSmsAct(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getStartTime(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "firewall_start_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTimeLimitEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "firewall_time_limit_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static setAntiStrangerEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3
    .parameter "context"
    .parameter "newValue"

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "anti_stranger_call"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 29
    return-void

    .line 27
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setCallAct(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    const-string v2, "firewall_hide_calllog"

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "firewall_call_act"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    if-nez p1, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "firewall_hide_calllog"

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "firewall_hide_calllog"

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static setEndTime(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "newValue"

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "firewall_end_time"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    return-void
.end method

.method public static setFilterSmsEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3
    .parameter "context"
    .parameter "newValue"

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "filter_stranger_sms"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 38
    return-void

    .line 36
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setFirewallEnalbed(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3
    .parameter "context"
    .parameter "newValue"

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "firewall_enabled"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 20
    return-void

    .line 18
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setSmsAct(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "firewall_sms_act"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    return-void
.end method

.method public static setStartTime(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "newValue"

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "firewall_start_time"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    return-void
.end method

.method public static setTimeLimitEnabled(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3
    .parameter "context"
    .parameter "newvalue"

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "firewall_time_limit_enabled"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 48
    return-void

    .line 46
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
