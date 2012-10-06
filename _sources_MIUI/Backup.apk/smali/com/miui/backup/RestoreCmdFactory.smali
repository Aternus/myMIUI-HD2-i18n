.class Lcom/miui/backup/RestoreCmdFactory;
.super Lcom/miui/backup/BackupRestoreCmdFactory;
.source "BackupRestoreCmdFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreCmdFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createCmd(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)Lcom/miui/backup/BackupRestoreCmd;
    .locals 3
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 83
    iget v0, p1, Lcom/miui/milk/common/AppInfo;->type:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .line 119
    :goto_0
    return-object v0

    .line 85
    :pswitch_0
    new-instance v0, Lcom/miui/backup/RestoreAppCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreAppCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 87
    :pswitch_1
    new-instance v0, Lcom/miui/backup/RestoreUserAppCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreUserAppCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 89
    :pswitch_2
    const-string v0, "addressbook.store"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/miui/backup/RestoreAddressBookCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreAddressBookCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 91
    :cond_0
    const-string v0, "calllog.store"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Lcom/miui/backup/RestoreCallLogCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreCallLogCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 93
    :cond_1
    const-string v0, "sms.store"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    new-instance v0, Lcom/miui/backup/RestoreSmsCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreSmsCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 95
    :cond_2
    const-string v0, "mms.store"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    new-instance v0, Lcom/miui/backup/RestoreMmsCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreMmsCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 97
    :cond_3
    const-string v0, "launcher.db"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.android.launcher"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    :cond_4
    new-instance v0, Lcom/miui/backup/RestoreLauncherDbCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreLauncherDbCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 99
    :cond_5
    const-string v0, "wpa_supplicant.conf"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    new-instance v0, Lcom/miui/backup/RestoreWifiCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreWifiCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 101
    :cond_6
    const-string v0, "note.store"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 102
    new-instance v0, Lcom/miui/backup/RestoreNoteCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreNoteCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 103
    :cond_7
    const-string v0, "antispam.store"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 104
    new-instance v0, Lcom/miui/backup/RestoreAntiSpamCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreAntiSpamCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 105
    :cond_8
    const-string v0, "setting.store"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 106
    new-instance v0, Lcom/miui/backup/RestoreSettingCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreSettingCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 107
    :cond_9
    const-string v0, "alarms.db"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 108
    new-instance v0, Lcom/miui/backup/RestoreDeskClockDataCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreDeskClockDataCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 109
    :cond_a
    const-string v0, "deskclock.store"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 110
    new-instance v0, Lcom/miui/backup/RestoreDeskClockCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreDeskClockCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 111
    :cond_b
    const-string v0, "theme.dir"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 112
    new-instance v0, Lcom/miui/backup/RestoreThemeCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreThemeCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 113
    :cond_c
    const-string v0, "com.miui.uac"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 114
    new-instance v0, Lcom/miui/backup/RestoreSuperuserCmd;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/backup/RestoreSuperuserCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_d
    move-object v0, v2

    .line 116
    goto/16 :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
