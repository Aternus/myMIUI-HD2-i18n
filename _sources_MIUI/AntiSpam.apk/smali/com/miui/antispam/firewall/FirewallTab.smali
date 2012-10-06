.class public Lcom/miui/antispam/firewall/FirewallTab;
.super Landroid/app/TabActivity;
.source "FirewallTab.java"


# instance fields
.field private mTabHost:Landroid/widget/TabHost;

.field private mTabWidget:Landroid/widget/TabWidget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private appendToCallLog(I)V
    .locals 4
    .parameter "num"

    .prologue
    const v3, 0x7f070003

    .line 107
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    .local v0, view:Landroid/widget/TextView;
    if-lez p1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/miui/antispam/firewall/FirewallTab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0, v3}, Lcom/miui/antispam/firewall/FirewallTab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private appendToMmsLog(I)V
    .locals 4
    .parameter "num"

    .prologue
    const v3, 0x7f070004

    .line 118
    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    .local v0, view:Landroid/widget/TextView;
    if-lez p1, :cond_0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/miui/antispam/firewall/FirewallTab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0, v3}, Lcom/miui/antispam/firewall/FirewallTab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private createIntent(Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .parameter "action"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 85
    return-object v0
.end method

.method public static getNewBlockedMmsCount(Landroid/content/Context;)I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 156
    const/4 v7, 0x0

    .line 157
    .local v7, mmsCount:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v8

    const-string v3, "(type=? OR type=?) AND read=?"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "0"

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 167
    .local v6, cursor2:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 169
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 173
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_1
    return v7

    .line 173
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getNewBlockedPhoneCount(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 135
    const/4 v7, 0x0

    .line 136
    .local v7, phoneCount:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v8

    const-string v3, "type=? AND read=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "0"

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 142
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 144
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 148
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_1
    return v7

    .line 148
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private setupBlackWhiteListTab()V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "backWhiteList"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/FirewallTab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "com.android.contacts.action.LIST_DEFAULT"

    const-class v3, Lcom/miui/antispam/firewall/BlackWhiteList;

    invoke-direct {p0, v2, v3}, Lcom/miui/antispam/firewall/FirewallTab;->createIntent(Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 98
    return-void
.end method

.method private setupCallLogTab()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "callLog"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/FirewallTab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "com.android.contacts.action.LIST_STARRED"

    const-class v3, Lcom/miui/antispam/firewall/CallLogList;

    invoke-direct {p0, v2, v3}, Lcom/miui/antispam/firewall/FirewallTab;->createIntent(Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 104
    return-void
.end method

.method private setupMmsLogTab()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "mmsLog"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/FirewallTab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "com.android.contacts.action.LIST_STARRED"

    const-class v3, Lcom/miui/antispam/firewall/MmsLogList;

    invoke-direct {p0, v2, v3}, Lcom/miui/antispam/firewall/FirewallTab;->createIntent(Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 132
    return-void
.end method

.method private setupSettingsTab()V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "settings"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/FirewallTab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "com.android.contacts.action.LIST_DEFAULT"

    const-class v3, Lcom/miui/antispam/firewall/FirewallSettings;

    invoke-direct {p0, v2, v3}, Lcom/miui/antispam/firewall/FirewallTab;->createIntent(Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 92
    return-void
.end method

.method public static updateNotification(Landroid/content/Context;)V
    .locals 10
    .parameter

    .prologue
    const v6, 0x7f070058

    const/16 v9, 0x31e

    const/4 v8, 0x0

    .line 208
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->updateOnNotification(Landroid/content/Context;)V

    .line 210
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 213
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getShowBlockedNotification(Landroid/content/Context;)Z

    move-result v1

    .line 215
    if-nez v1, :cond_0

    .line 216
    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 242
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getNewBlockedPhoneCount(Landroid/content/Context;)I

    move-result v1

    .line 221
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getNewBlockedMmsCount(Landroid/content/Context;)I

    move-result v2

    .line 223
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 224
    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 228
    :cond_1
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 229
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 230
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 232
    const v4, 0x10805c5

    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 234
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/miui/antispam/firewall/FirewallTab;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070059

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v8, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v3, p0, v5, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 241
    invoke-virtual {v0, v9, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public static updateOnNotification(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const v4, 0x7f070057

    const/16 v7, 0x31f

    const/4 v6, 0x0

    .line 181
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 184
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getFirewallEnalbed(Landroid/content/Context;)Z

    move-result v1

    .line 185
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getShowFirewallNotification(Landroid/content/Context;)Z

    move-result v2

    .line 187
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 188
    :cond_0
    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 205
    :goto_0
    return-void

    .line 192
    :cond_1
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 193
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 194
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 195
    const v2, 0x10805c4

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 197
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/antispam/firewall/FirewallTab;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/miui/antispam/firewall/PatternSettings;->getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/miui/antispam/firewall/TimeSettings;->getCurrentOptionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 204
    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v2, 0x7f030013

    invoke-virtual {p0, v2}, Lcom/miui/antispam/firewall/FirewallTab;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabHost:Landroid/widget/TabHost;

    .line 43
    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabWidget:Landroid/widget/TabWidget;

    .line 46
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallTab;->setupCallLogTab()V

    .line 47
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallTab;->setupMmsLogTab()V

    .line 48
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallTab;->setupBlackWhiteListTab()V

    .line 49
    invoke-direct {p0}, Lcom/miui/antispam/firewall/FirewallTab;->setupSettingsTab()V

    .line 51
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tab_target"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 52
    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getNewBlockedPhoneCount(Landroid/content/Context;)I

    move-result v0

    .line 56
    .local v0, callCount:I
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getNewBlockedMmsCount(Landroid/content/Context;)I

    move-result v1

    .line 58
    .local v1, mmsCount:I
    if-lez v0, :cond_2

    .line 59
    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 60
    :cond_2
    if-lez v1, :cond_3

    .line 61
    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabHost:Landroid/widget/TabHost;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 63
    :cond_3
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getFirewallEnalbed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallTab;->mTabHost:Landroid/widget/TabHost;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 75
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getNewBlockedPhoneCount(Landroid/content/Context;)I

    move-result v0

    .line 76
    .local v0, callCount:I
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallTab;->getNewBlockedMmsCount(Landroid/content/Context;)I

    move-result v1

    .line 78
    .local v1, mmsCount:I
    invoke-direct {p0, v0}, Lcom/miui/antispam/firewall/FirewallTab;->appendToCallLog(I)V

    .line 79
    invoke-direct {p0, v1}, Lcom/miui/antispam/firewall/FirewallTab;->appendToMmsLog(I)V

    .line 80
    return-void
.end method
