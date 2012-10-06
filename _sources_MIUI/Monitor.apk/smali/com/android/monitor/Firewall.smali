.class public final Lcom/android/monitor/Firewall;
.super Ljava/lang/Object;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/monitor/Firewall$ScriptRunner;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    return-void
.end method

.method private static alert(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    if-eqz p0, :cond_0

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    const-class v1, Lcom/android/monitor/ApplyRulesAlertActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    :cond_0
    return-void
.end method

.method public static applyRules(Landroid/content/Context;Landroid/util/SparseArray;Z)Z
    .locals 1
    .parameter "context"
    .parameter
    .parameter "showErrors"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/NetworkMonitor$UidInfo;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, uidInfos:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/monitor/NetworkMonitor$UidInfo;>;"
    invoke-static {p0, p1}, Lcom/android/monitor/Firewall;->saveRules(Landroid/content/Context;Landroid/util/SparseArray;)V

    .line 238
    invoke-static {p0, p2}, Lcom/android/monitor/Firewall;->applySavedRules(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method private static applyRulesImpl(Landroid/content/Context;[I[IZZ)Z
    .locals 10
    .parameter "context"
    .parameter "wifiUids"
    .parameter "mobileUids"
    .parameter "whitelist"
    .parameter "showErrors"

    .prologue
    .line 93
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "tiwlan+"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "wlan+"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "eth+"

    aput-object v2, v1, v0

    .line 94
    .local v1, ITFS_WIFI:[Ljava/lang/String;
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "rmnet+"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "pdp+"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "ppp+"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "uwbr+"

    aput-object v3, v0, v2

    .line 95
    .local v0, ITFS_3G:[Ljava/lang/String;
    const-string v2, "FireWallPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 96
    .local v2, prefs:Landroid/content/SharedPreferences;
    if-nez p3, :cond_0

    const/4 v3, 0x1

    move v4, v3

    .line 97
    .local v4, blacklist:Z
    :goto_0
    const-string v3, "LogEnabled"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 98
    .local v5, logenabled:Z
    array-length v2, p2

    .end local v2           #prefs:Landroid/content/SharedPreferences;
    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget v2, p2, v2

    const/16 v3, -0xa

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    .line 99
    .local v2, anyMobile:Z
    :goto_1
    array-length v3, p1

    if-lez v3, :cond_2

    const/4 v3, 0x0

    aget v3, p1, v3

    const/16 v6, -0xa

    if-ne v3, v6, :cond_2

    const/4 v3, 0x1

    .line 101
    .local v3, anyWifi:Z
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v8, script:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {p0}, Lcom/android/monitor/Firewall;->scriptHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v6, "$IPTABLES --version || exit 1\n# Create the droidwall chains if necessary\n$IPTABLES -L droidwall >/dev/null 2>/dev/null || $IPTABLES --new droidwall || exit 2\n$IPTABLES -L droidwall-3g >/dev/null 2>/dev/null || $IPTABLES --new droidwall-3g || exit 3\n$IPTABLES -L droidwall-wifi >/dev/null 2>/dev/null || $IPTABLES --new droidwall-wifi || exit 4\n$IPTABLES -L droidwall-reject >/dev/null 2>/dev/null || $IPTABLES --new droidwall-reject || exit 5\n# Add droidwall chain to OUTPUT chain if necessary\n$IPTABLES -L OUTPUT | $GREP -q droidwall || $IPTABLES -A OUTPUT -j droidwall || exit 6\n# Flush existing rules\n$IPTABLES -F droidwall || exit 7\n$IPTABLES -F droidwall-3g || exit 8\n$IPTABLES -F droidwall-wifi || exit 9\n$IPTABLES -F droidwall-reject || exit 10\n"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    if-eqz v5, :cond_3

    .line 122
    const-string v5, "# Create the log and reject rules (ignore errors on the LOG target just in case it is not available)\n$IPTABLES -A droidwall-reject -j LOG --log-prefix \"[DROIDWALL] \" --log-uid\n$IPTABLES -A droidwall-reject -j REJECT || exit 11\n"

    .end local v5           #logenabled:Z
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :goto_3
    const-string v5, "# Main rules (per interface)\n"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    move-object v0, v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_4
    if-ge v5, v7, :cond_5

    aget-object v6, v0, v5

    .line 136
    .local v6, itf:Ljava/lang/String;
    const-string v9, "$IPTABLES -A droidwall -o "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .end local v6           #itf:Ljava/lang/String;
    const-string v9, " -j droidwall-3g || exit\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 96
    .end local v3           #anyWifi:Z
    .end local v4           #blacklist:Z
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #script:Ljava/lang/StringBuilder;
    .local v0, ITFS_3G:[Ljava/lang/String;
    .local v2, prefs:Landroid/content/SharedPreferences;
    :cond_0
    const/4 v3, 0x0

    move v4, v3

    goto :goto_0

    .line 98
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    .restart local v4       #blacklist:Z
    .local v5, logenabled:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 99
    .local v2, anyMobile:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 128
    .restart local v3       #anyWifi:Z
    .restart local v8       #script:Ljava/lang/StringBuilder;
    :cond_3
    const-string v5, "# Create the reject rule (log disabled)\n$IPTABLES -A droidwall-reject -j REJECT || exit 11\n"

    .end local v5           #logenabled:Z
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 203
    .end local v0           #ITFS_3G:[Ljava/lang/String;
    .end local v1           #ITFS_WIFI:[Ljava/lang/String;
    .end local v4           #blacklist:Z
    .end local p1
    .end local p2
    .end local p3
    :catch_0
    move-exception p1

    .line 204
    .local p1, e:Ljava/lang/Exception;
    if-eqz p4, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "error refreshing iptables: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #e:Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/monitor/Firewall;->alert(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    :cond_4
    :goto_5
    const/4 p0, 0x0

    .end local p0
    :goto_6
    return p0

    .line 138
    .local v0, arr$:[Ljava/lang/String;
    .restart local v1       #ITFS_WIFI:[Ljava/lang/String;
    .restart local v4       #blacklist:Z
    .local v5, i$:I
    .restart local v7       #len$:I
    .restart local p0
    .local p1, wifiUids:[I
    .restart local p2
    .restart local p3
    :cond_5
    move-object v0, v1

    :try_start_1
    array-length v6, v0

    .end local v7           #len$:I
    .local v6, len$:I
    const/4 v1, 0x0

    .end local v5           #i$:I
    .local v1, i$:I
    :goto_7
    if-ge v1, v6, :cond_6

    aget-object v5, v0, v1

    .line 139
    .local v5, itf:Ljava/lang/String;
    const-string v7, "$IPTABLES -A droidwall -o "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #itf:Ljava/lang/String;
    const-string v7, " -j droidwall-wifi || exit\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 142
    :cond_6
    const-string v0, "# Filtering rules\n"

    .end local v0           #arr$:[Ljava/lang/String;
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    if-eqz p3, :cond_e

    const-string v0, "RETURN"

    move-object v5, v0

    .line 145
    .local v5, targetRule:Ljava/lang/String;
    :goto_8
    if-eqz p3, :cond_8

    if-nez v3, :cond_8

    .line 147
    const-string v0, "dhcp"

    invoke-static {v0}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v0

    .line 148
    .local v0, uid:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 149
    .end local v1           #i$:I
    const-string v1, "# dhcp user\n"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, "$IPTABLES -A droidwall-wifi -m owner --uid-owner "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #uid:I
    const-string v1, " -j RETURN || exit\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_7
    const-string v0, "wifi"

    invoke-static {v0}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v0

    .line 153
    .restart local v0       #uid:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 154
    const-string v1, "# wifi user\n"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, "$IPTABLES -A droidwall-wifi -m owner --uid-owner "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #uid:I
    const-string v1, " -j RETURN || exit\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_8
    if-eqz v2, :cond_f

    .line 161
    if-eqz v4, :cond_9

    .line 163
    const-string p2, "$IPTABLES -A droidwall-3g -j "

    .end local p2
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " || exit\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .end local v6           #len$:I
    :cond_9
    if-eqz v3, :cond_10

    .line 172
    if-eqz v4, :cond_a

    .line 174
    const-string p1, "$IPTABLES -A droidwall-wifi -j "

    .end local p1           #wifiUids:[I
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " || exit\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .end local v4           #blacklist:Z
    :cond_a
    if-eqz p3, :cond_c

    .line 183
    if-nez v2, :cond_b

    .line 184
    const-string p1, "$IPTABLES -A droidwall-3g -j droidwall-reject || exit\n"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_b
    if-nez v3, :cond_c

    .line 187
    const-string p1, "$IPTABLES -A droidwall-wifi -j droidwall-reject || exit\n"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local p2, res:Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/monitor/Firewall;->runScriptAsRoot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result p1

    .line 192
    .local p1, code:I
    if-eqz p4, :cond_11

    if-eqz p1, :cond_11

    .line 193
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 194
    .local p2, msg:Ljava/lang/String;
    const-string p3, "DroidWall"

    .end local p3
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string p3, "\nTry `iptables -h\' or \'iptables --help\' for more information."

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_d

    .line 197
    const-string p3, "\nTry `iptables -h\' or \'iptables --help\' for more information."

    const-string v0, ""

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 199
    :cond_d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error applying iptables rules. Exit code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #code:I
    const-string p3, "\n\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .end local p2           #msg:Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/monitor/Firewall;->alert(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 143
    .end local v5           #targetRule:Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v4       #blacklist:Z
    .restart local v6       #len$:I
    .local p1, wifiUids:[I
    .local p2, mobileUids:[I
    .restart local p3
    :cond_e
    const-string v0, "droidwall-reject"

    move-object v5, v0

    goto/16 :goto_8

    .line 167
    .end local v1           #i$:I
    .restart local v5       #targetRule:Ljava/lang/String;
    :cond_f
    move-object p2, p2

    .local p2, arr$:[I
    array-length v1, p2

    .end local v6           #len$:I
    .local v1, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    :goto_9
    if-ge v0, v1, :cond_9

    aget v6, p2, v0

    .line 168
    .local v6, uid:I
    const-string v7, "$IPTABLES -A droidwall-3g -m owner --uid-owner "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .end local v6           #uid:I
    const-string v7, " -j "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " || exit\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 178
    .end local v0           #i$:I
    .end local v1           #len$:I
    .end local p2           #arr$:[I
    :cond_10
    move-object p1, p1

    .local p1, arr$:[I
    array-length v0, p1

    .local v0, len$:I
    const/4 p2, 0x0

    .end local v4           #blacklist:Z
    .local p2, i$:I
    :goto_a
    if-ge p2, v0, :cond_a

    aget v1, p1, p2

    .line 179
    .local v1, uid:I
    const-string v4, "$IPTABLES -A droidwall-wifi -m owner --uid-owner "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #uid:I
    const-string v4, " -j "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " || exit\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 201
    .end local v0           #len$:I
    .local p1, code:I
    .local p2, res:Ljava/lang/StringBuilder;
    :cond_11
    const/4 p0, 0x1

    goto/16 :goto_6
.end method

.method public static applySavedRules(Landroid/content/Context;Z)Z
    .locals 11
    .parameter "context"
    .parameter "showErrors"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, ""

    .line 217
    const-string v6, "FireWallPrefs"

    invoke-virtual {p0, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 218
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v6, "WifiAllowedUids"

    const-string v7, ""

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, wifiAllowedUids:Ljava/lang/String;
    const-string v6, "WifiForbiddenUids"

    const-string v7, ""

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, wifiForbiddenUids:Ljava/lang/String;
    const-string v6, "MobileAllowedUids"

    const-string v7, ""

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, mobileAllowedUids:Ljava/lang/String;
    const-string v6, "MobileForbiddenUids"

    const-string v7, ""

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, mobileForbiddenUids:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/monitor/Firewall;->parseUidsString(Ljava/lang/String;)[I

    move-result-object v6

    invoke-static {v0}, Lcom/android/monitor/Firewall;->parseUidsString(Ljava/lang/String;)[I

    move-result-object v7

    invoke-static {p0, v6, v7, v10, p1}, Lcom/android/monitor/Firewall;->applyRulesImpl(Landroid/content/Context;[I[IZZ)Z

    move-result v3

    .line 225
    .local v3, result:Z
    if-eqz v3, :cond_0

    invoke-static {v5}, Lcom/android/monitor/Firewall;->parseUidsString(Ljava/lang/String;)[I

    move-result-object v6

    invoke-static {v1}, Lcom/android/monitor/Firewall;->parseUidsString(Ljava/lang/String;)[I

    move-result-object v7

    invoke-static {p0, v6, v7, v9, p1}, Lcom/android/monitor/Firewall;->applyRulesImpl(Landroid/content/Context;[I[IZZ)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v10

    :goto_0
    return v6

    :cond_0
    move v6, v9

    goto :goto_0
.end method

.method public static getMobileAccessMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 413
    const-string v1, "FireWallPrefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 414
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "MobileAccessMode"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getWifiAccessMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 429
    const-string v1, "FireWallPrefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 430
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "WifiAccessMode"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 450
    const-string v0, "FireWallPrefs"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static loadRules(Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 13
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/NetworkMonitor$UidInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, uidInfos:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/monitor/NetworkMonitor$UidInfo;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v10, ""

    .line 299
    const-string v8, "FireWallPrefs"

    invoke-virtual {p0, v8, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 300
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v8, "WifiAllowedUids"

    const-string v9, ""

    invoke-interface {v3, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, wifiAllowedUids:Ljava/lang/String;
    const-string v8, "MobileAllowedUids"

    const-string v9, ""

    invoke-interface {v3, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, mobileAllowedUids:Ljava/lang/String;
    const-string v8, "WifiForbiddenUids"

    const-string v9, ""

    invoke-interface {v3, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 303
    .local v7, wifiForbiddenUids:Ljava/lang/String;
    const-string v8, "MobileForbiddenUids"

    const-string v9, ""

    invoke-interface {v3, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, mobileForbiddenUids:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/monitor/Firewall;->parseUidsString(Ljava/lang/String;)[I

    move-result-object v5

    .line 306
    .local v5, uids:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v8, v5

    if-ge v0, v8, :cond_1

    .line 307
    aget v8, v5, v0

    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .line 308
    .local v4, u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    if-eqz v4, :cond_0

    .line 309
    iput-boolean v12, v4, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableWifi:Z

    .line 306
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    .end local v4           #u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    :cond_1
    invoke-static {v7}, Lcom/android/monitor/Firewall;->parseUidsString(Ljava/lang/String;)[I

    move-result-object v5

    .line 313
    const/4 v0, 0x0

    :goto_1
    array-length v8, v5

    if-ge v0, v8, :cond_3

    .line 314
    aget v8, v5, v0

    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .line 315
    .restart local v4       #u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    if-eqz v4, :cond_2

    .line 316
    iput-boolean v11, v4, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableWifi:Z

    .line 313
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    .end local v4           #u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    :cond_3
    invoke-static {v1}, Lcom/android/monitor/Firewall;->parseUidsString(Ljava/lang/String;)[I

    move-result-object v5

    .line 320
    const/4 v0, 0x0

    :goto_2
    array-length v8, v5

    if-ge v0, v8, :cond_5

    .line 321
    aget v8, v5, v0

    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .line 322
    .restart local v4       #u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    if-eqz v4, :cond_4

    .line 323
    iput-boolean v12, v4, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableMobile:Z

    .line 320
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 326
    .end local v4           #u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    :cond_5
    invoke-static {v2}, Lcom/android/monitor/Firewall;->parseUidsString(Ljava/lang/String;)[I

    move-result-object v5

    .line 327
    const/4 v0, 0x0

    :goto_3
    array-length v8, v5

    if-ge v0, v8, :cond_7

    .line 328
    aget v8, v5, v0

    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .line 329
    .restart local v4       #u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    if-eqz v4, :cond_6

    .line 330
    iput-boolean v11, v4, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableMobile:Z

    .line 327
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 332
    .end local v4           #u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    :cond_7
    return-void
.end method

.method private static parseUidsString(Ljava/lang/String;)[I
    .locals 6
    .parameter "str"

    .prologue
    .line 545
    const/4 v5, 0x0

    new-array v4, v5, [I

    .line 546
    .local v4, uids:[I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 547
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v2, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .local v2, tok:Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v4, v5, [I

    .line 549
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 550
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, uid:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 553
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 555
    .local v0, ex:Ljava/lang/Exception;
    const/4 v5, -0x1

    aput v5, v4, v1

    goto :goto_1

    .line 561
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #i:I
    .end local v2           #tok:Ljava/util/StringTokenizer;
    .end local v3           #uid:Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public static purgeIptables(Landroid/content/Context;Z)Z
    .locals 6
    .parameter "context"
    .parameter "showErrors"

    .prologue
    const/4 v5, 0x0

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v2, res:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/monitor/Firewall;->scriptHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$IPTABLES -F droidwall\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$IPTABLES -F droidwall-reject\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$IPTABLES -F droidwall-3g\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$IPTABLES -F droidwall-wifi\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/android/monitor/Firewall;->runScriptAsRoot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v0

    .line 349
    .local v0, code:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 350
    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error purging iptables. exit code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/monitor/Firewall;->alert(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v3, v5

    .line 356
    .end local v0           #code:I
    :goto_0
    return v3

    .line 353
    .restart local v0       #code:I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 354
    .end local v0           #code:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 355
    .local v1, e:Ljava/lang/Exception;
    if-eqz p1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error purging iptables: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/monitor/Firewall;->alert(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    move v3, v5

    .line 356
    goto :goto_0
.end method

.method public static runScript(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;JZ)I
    .locals 6
    .parameter "context"
    .parameter "script"
    .parameter "res"
    .parameter "timeout"
    .parameter "asroot"

    .prologue
    .line 369
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "firewall.sh"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 370
    .local v2, file:Ljava/io/File;
    new-instance v0, Lcom/android/monitor/Firewall$ScriptRunner;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/monitor/Firewall$ScriptRunner;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 371
    .local v0, runner:Lcom/android/monitor/Firewall$ScriptRunner;
    invoke-virtual {v0}, Lcom/android/monitor/Firewall$ScriptRunner;->start()V

    .line 373
    const-wide/16 v3, 0x0

    cmp-long v1, p3, v3

    if-lez v1, :cond_1

    .line 374
    :try_start_0
    invoke-virtual {v0, p3, p4}, Lcom/android/monitor/Firewall$ScriptRunner;->join(J)V

    .line 378
    :goto_0
    invoke-virtual {v0}, Lcom/android/monitor/Firewall$ScriptRunner;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {v0}, Lcom/android/monitor/Firewall$ScriptRunner;->interrupt()V

    .line 381
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Lcom/android/monitor/Firewall$ScriptRunner;->join(J)V

    .line 382
    invoke-virtual {v0}, Lcom/android/monitor/Firewall$ScriptRunner;->destroy()V

    .line 383
    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Lcom/android/monitor/Firewall$ScriptRunner;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_0
    :goto_1
    iget v1, v0, Lcom/android/monitor/Firewall$ScriptRunner;->exitcode:I

    return v1

    .line 376
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/monitor/Firewall$ScriptRunner;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static runScriptAsRoot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 2
    .parameter "context"
    .parameter "script"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    const-wide/32 v0, 0x9c40

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/monitor/Firewall;->runScriptAsRoot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;J)I

    move-result v0

    return v0
.end method

.method public static runScriptAsRoot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;J)I
    .locals 6
    .parameter "context"
    .parameter "script"
    .parameter "res"
    .parameter "timeout"

    .prologue
    .line 397
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/monitor/Firewall;->runScript(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;JZ)I

    move-result v0

    return v0
.end method

.method public static saveRules(Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 9
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/NetworkMonitor$UidInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, uidInfos:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/monitor/NetworkMonitor$UidInfo;>;"
    const-string v0, "FireWallPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 247
    .local v3, prefs:Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v6, wifiAllowedUids:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v7, wifiForbiddenUids:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, mobileAllowedUids:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v1, mobileForbiddenUids:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/android/monitor/Firewall;->getMobileAccessMode(Landroid/content/Context;)I

    move-result v2

    .line 253
    .local v2, mobileMode:I
    invoke-static {p0}, Lcom/android/monitor/Firewall;->getWifiAccessMode(Landroid/content/Context;)I

    move-result p0

    .line 255
    .local p0, wifiMode:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 256
    const/16 v4, -0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    :cond_0
    :goto_0
    const/4 v4, 0x2

    if-ne p0, v4, :cond_5

    .line 262
    const/16 p0, -0xa

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .end local p0           #wifiMode:I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 269
    .local v2, size:I
    const/4 p0, 0x0

    .local p0, i:I
    :goto_2
    if-ge p0, v2, :cond_a

    .line 270
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .line 271
    .local v4, u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    iget v5, v4, Lcom/android/monitor/NetworkMonitor$UidInfo;->mUid:I

    .line 272
    .local v5, uid:I
    iget-boolean v8, v4, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableWifi:Z

    if-eqz v8, :cond_6

    .line 273
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x7c

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    :cond_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    :goto_3
    iget-boolean v4, v4, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableMobile:Z

    .end local v4           #u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    if-eqz v4, :cond_8

    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x7c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    :goto_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 257
    .end local v5           #uid:I
    .local v2, mobileMode:I
    .local p0, wifiMode:I
    :cond_4
    if-nez v2, :cond_0

    .line 258
    const/16 v4, -0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 263
    :cond_5
    if-nez v2, :cond_1

    .line 264
    const/16 p0, -0xa

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 276
    .local v2, size:I
    .restart local v4       #u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    .restart local v5       #uid:I
    .local p0, i:I
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x7c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    :cond_7
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 283
    .end local v4           #u:Lcom/android/monitor/NetworkMonitor$UidInfo;
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x7c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    :cond_9
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 290
    .end local v5           #uid:I
    :cond_a
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 291
    .local p0, edit:Landroid/content/SharedPreferences$Editor;
    const-string p1, "WifiAllowedUids"

    .end local p1           #uidInfos:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/monitor/NetworkMonitor$UidInfo;>;"
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2           #size:I
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    const-string p1, "WifiForbiddenUids"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 293
    const-string p1, "MobileAllowedUids"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0           #mobileAllowedUids:Ljava/lang/StringBuilder;
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    const-string p1, "MobileForbiddenUids"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    return-void
.end method

.method private static scriptHeader(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, dir:Ljava/lang/String;
    const-string v1, "IPTABLES=iptables\nBUSYBOX=busybox\nGREP=grep\nECHO=echo\n# Try to find busybox\nif busybox --help >/dev/null 2>/dev/null ; then\n   BUSYBOX=busybox\nelif /system/xbin/busybox --help >/dev/null 2>/dev/null ; then\n   BUSYBOX=/system/xbin/busybox\nelif /system/bin/busybox --help >/dev/null 2>/dev/null ; then\n   BUSYBOX=/system/bin/busybox\nfi\n# Try to find grep\nif ! $ECHO 1 | $GREP -q 1 >/dev/null 2>/dev/null ; then\n   if $ECHO 1 | $BUSYBOX grep -q 1 >/dev/null 2>/dev/null ; then\n       GREP=\"$BUSYBOX grep\"\n   fi\n   # Grep is absolutely required\n   if ! $ECHO 1 | $GREP -q 1 >/dev/null 2>/dev/null ; then\n       $ECHO The grep command is required. DroidWall will not work.\n       exit 1\n   fi\nfi\n"

    return-object v1
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "enabled"

    .prologue
    const/4 v3, 0x0

    const-string v4, "Enabled"

    .line 459
    const-string v2, "FireWallPrefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 460
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "Enabled"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, p1, :cond_0

    .line 466
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 464
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Enabled"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setMobileAccessMode(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "mode"

    .prologue
    const-string v4, "MobileAccessMode"

    .line 418
    const-string v2, "FireWallPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 419
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "MobileAccessMode"

    const/4 v2, 0x2

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 424
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "MobileAccessMode"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 425
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setWifiAccessMode(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "mode"

    .prologue
    const-string v4, "WifiAccessMode"

    .line 434
    const-string v2, "FireWallPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 435
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "WifiAccessMode"

    const/4 v2, 0x2

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 442
    :goto_0
    return-void

    .line 439
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 440
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "WifiAccessMode"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 441
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
