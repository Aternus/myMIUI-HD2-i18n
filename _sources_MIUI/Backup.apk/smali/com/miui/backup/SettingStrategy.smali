.class abstract Lcom/miui/backup/SettingStrategy;
.super Lcom/miui/backup/BackupRestoreStrategy;
.source "BackupRestoreStrategy.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDataFile:Ljava/io/File;

.field protected mSettingController:Lcom/miui/milk/control/local/SettingController;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 910
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreStrategy;-><init>()V

    .line 906
    iput-object v0, p0, Lcom/miui/backup/SettingStrategy;->mSettingController:Lcom/miui/milk/control/local/SettingController;

    .line 907
    iput-object v0, p0, Lcom/miui/backup/SettingStrategy;->mDataFile:Ljava/io/File;

    .line 908
    iput-object v0, p0, Lcom/miui/backup/SettingStrategy;->mContext:Landroid/content/Context;

    .line 911
    iput-object p3, p0, Lcom/miui/backup/SettingStrategy;->mContext:Landroid/content/Context;

    .line 912
    new-instance v0, Lcom/miui/milk/control/local/SettingController;

    iget-object v1, p0, Lcom/miui/backup/SettingStrategy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/milk/control/local/SettingController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/SettingStrategy;->mSettingController:Lcom/miui/milk/control/local/SettingController;

    .line 913
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/SettingStrategy;->mDataFile:Ljava/io/File;

    .line 914
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 918
    invoke-super {p0}, Lcom/miui/backup/BackupRestoreStrategy;->cancel()V

    .line 919
    iget-object v0, p0, Lcom/miui/backup/SettingStrategy;->mSettingController:Lcom/miui/milk/control/local/SettingController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/SettingController;->cancel()V

    .line 920
    return-void
.end method
