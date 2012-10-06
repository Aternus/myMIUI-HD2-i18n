.class public Lcom/miui/backup/BackupCmd;
.super Lcom/miui/backup/BackupRestoreCmd;
.source "BackupCmd.java"


# static fields
.field protected static mDbAdapter:Lcom/miui/backup/DbAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/backup/BackupCmd;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 3
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/BackupRestoreCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 25
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iput-boolean v2, v0, Lcom/miui/backup/CmdRunningInfo;->isBackup:Z

    .line 26
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v1, p1, Lcom/miui/milk/common/AppInfo;->type:I

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/miui/backup/CmdRunningInfo;->isSystemApp:Z

    .line 27
    return-void

    .line 26
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setDbAdapter(Lcom/miui/backup/DbAdapter;)V
    .locals 0
    .parameter "dbAdapter"

    .prologue
    .line 30
    sput-object p0, Lcom/miui/backup/BackupCmd;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    .line 31
    return-void
.end method
