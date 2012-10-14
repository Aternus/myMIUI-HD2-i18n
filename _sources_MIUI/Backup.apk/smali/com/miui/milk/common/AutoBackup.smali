.class public Lcom/miui/milk/common/AutoBackup;
.super Ljava/lang/Object;
.source "AutoBackup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateNextTime(III)J
    .locals 2
    .parameter "interval"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/miui/milk/common/AutoBackup;->calculateNextTime(JIII)J

    move-result-wide v0

    return-wide v0
.end method

.method private static calculateNextTime(JIII)J
    .locals 7
    .parameter "fromTimeMillis"
    .parameter "interval"
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x6

    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 130
    .local v1, current:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 133
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 135
    const/16 v2, 0xb

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 136
    const/16 v2, 0xc

    invoke-virtual {v0, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 137
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 138
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 140
    if-lez p2, :cond_0

    .line 141
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 142
    invoke-virtual {v0, v6, p2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 149
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private static disableBackup(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 83
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 85
    .local v0, am:Landroid/app/AlarmManager;
    const-string v2, "AutoBackup"

    const-string v3, "cancle auto backup alarm "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.miui.backup.AUTO_BACKUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1000

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 90
    .local v1, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 91
    return-void
.end method

.method private static enableBackup(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "atTimeInMillis"

    .prologue
    const/4 v6, 0x0

    .line 70
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 71
    .local v0, am:Landroid/app/AlarmManager;
    const-string v3, "AutoBackup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set auto backup atTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.miui.backup.AUTO_BACKUP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-static {p0, v6, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 77
    .local v2, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v6, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 79
    invoke-static {p0, p1, p2}, Lcom/miui/milk/common/AutoBackup;->saveNextTime(Landroid/content/Context;J)V

    .line 80
    return-void
.end method

.method public static getAutoBackupBreak(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 120
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 121
    .local v0, defaultSharedPref:Landroid/content/SharedPreferences;
    const-string v1, "auto_backup_break"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getAutoBackupInterval(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 115
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, defaultSharedPref:Landroid/content/SharedPreferences;
    const-string v1, "auto_backup_interval"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static saveNextTime(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "nextTime"

    .prologue
    .line 94
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    .local v0, defaultSharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 96
    .local v1, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "auto_backup_next_time"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method

.method public static setAutoBackupBreak(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isBreak"

    .prologue
    .line 108
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    .local v0, defaultSharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 110
    .local v1, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "auto_backup_break"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    return-void
.end method

.method public static setAutoBackupInterval(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "interval"

    .prologue
    .line 101
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    .local v0, defaultSharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 103
    .local v1, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "auto_backup_interval"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    return-void
.end method

.method public static setNextBackup(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "forceUpdateSetting"

    .prologue
    const-wide/16 v10, 0x0

    .line 43
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    .local v0, defaultSharedPref:Landroid/content/SharedPreferences;
    const-string v8, "auto_backup"

    const/4 v9, 0x0

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 45
    const-string v8, "auto_backup_next_time"

    invoke-interface {v0, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 46
    .local v5, nextTime:J
    const-string v8, "auto_backup_time_hour"

    const/4 v9, 0x2

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 47
    .local v1, hour:I
    const-string v8, "auto_backup_time_minute"

    const/16 v9, 0x1e

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 49
    .local v4, minute:I
    const-string v8, "auto_backup_interval"

    const-string v9, "1"

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, intervalText:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/milk/common/AutoBackup;->trimUnit(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, trimInterval:Ljava/lang/String;
    const/4 v2, 0x0

    .line 52
    .local v2, interval:I
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 53
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 56
    :cond_0
    cmp-long v8, v5, v10

    if-eqz v8, :cond_1

    if-eqz p1, :cond_4

    .line 57
    :cond_1
    invoke-static {v2, v1, v4}, Lcom/miui/milk/common/AutoBackup;->calculateNextTime(III)J

    move-result-wide v5

    .line 61
    :cond_2
    :goto_0
    invoke-static {p0, v5, v6}, Lcom/miui/milk/common/AutoBackup;->enableBackup(Landroid/content/Context;J)V

    .line 62
    if-eqz p1, :cond_3

    .line 67
    .end local v1           #hour:I
    .end local v2           #interval:I
    .end local v3           #intervalText:Ljava/lang/String;
    .end local v4           #minute:I
    .end local v5           #nextTime:J
    .end local v7           #trimInterval:Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 58
    .restart local v1       #hour:I
    .restart local v2       #interval:I
    .restart local v3       #intervalText:Ljava/lang/String;
    .restart local v4       #minute:I
    .restart local v5       #nextTime:J
    .restart local v7       #trimInterval:Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v8, v5, v8

    if-gez v8, :cond_2

    .line 59
    invoke-static {v5, v6, v2, v1, v4}, Lcom/miui/milk/common/AutoBackup;->calculateNextTime(JIII)J

    move-result-wide v5

    goto :goto_0

    .line 65
    .end local v1           #hour:I
    .end local v2           #interval:I
    .end local v3           #intervalText:Ljava/lang/String;
    .end local v4           #minute:I
    .end local v5           #nextTime:J
    .end local v7           #trimInterval:Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/miui/milk/common/AutoBackup;->disableBackup(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static trimUnit(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "obj"

    .prologue
    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, str:Ljava/lang/String;
    const/4 v0, 0x0

    .line 155
    .local v0, index:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
