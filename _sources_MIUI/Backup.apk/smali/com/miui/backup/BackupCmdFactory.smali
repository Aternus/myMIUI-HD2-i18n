.class Lcom/miui/backup/BackupCmdFactory;
.super Lcom/miui/backup/BackupRestoreCmdFactory;
.source "BackupRestoreCmdFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreCmdFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createCmd(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)Lcom/miui/backup/BackupRestoreCmd;
    .locals 6
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 41
    iget v0, p1, Lcom/miui/milk/common/AppInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 76
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/miui/backup/BackupAppCmd;->createCmd(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)Lcom/miui/backup/BackupAppCmd;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_1
    const-string v0, "ADDRESSBOOK"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/miui/backup/BackupAddressBookCmd;

    iget-object v4, p1, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/BackupAddressBookCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    const-string v0, "CALLLOG"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Lcom/miui/backup/BackupCallLogCmd;

    iget-object v4, p1, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/BackupCallLogCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    const-string v0, "SMS"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    new-instance v0, Lcom/miui/backup/BackupSmsCmd;

    iget-object v4, p1, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/BackupSmsCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    const-string v0, "MMS"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    new-instance v0, Lcom/miui/backup/BackupMmsCmd;

    iget-object v4, p1, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/BackupMmsCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_3
    const-string v0, "NOTE"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    new-instance v0, Lcom/miui/backup/BackupNoteCmd;

    iget-object v4, p1, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/BackupNoteCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_4
    const-string v0, "ANTISPAM"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    new-instance v0, Lcom/miui/backup/BackupAntiSpamCmd;

    iget-object v4, p1, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/BackupAntiSpamCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :cond_5
    const-string v0, "SETTING"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    new-instance v0, Lcom/miui/backup/BackupSettingCmd;

    iget-object v4, p1, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/BackupSettingCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :cond_6
    const-string v0, "com.android.deskclock"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64
    new-instance v0, Lcom/miui/backup/BackupDeskClockCmd;

    iget-object v4, p1, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/BackupDeskClockCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 65
    :cond_7
    const-string v0, "com.android.launcher"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 66
    new-instance v0, Lcom/miui/backup/BackupLauncherDbCmd;

    iget-object v4, p1, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/BackupLauncherDbCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 67
    :cond_8
    const-string v0, "theme"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 68
    new-instance v0, Lcom/miui/backup/BackupThemeCmd;

    iget-object v4, p1, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/BackupThemeCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    :cond_9
    const-string v0, "com.miui.uac"

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 70
    new-instance v0, Lcom/miui/backup/BackupSuperuserCmd;

    iget-object v1, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/miui/backup/BackupUtils;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/miui/backup/BackupSuperuserCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 73
    :cond_a
    new-instance v0, Lcom/miui/backup/BackupAppDataCmd;

    iget-object v4, p1, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/backup/BackupAppDataCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
