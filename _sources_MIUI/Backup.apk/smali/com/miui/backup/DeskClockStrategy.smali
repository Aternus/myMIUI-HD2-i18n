.class abstract Lcom/miui/backup/DeskClockStrategy;
.super Lcom/miui/backup/BackupRestoreStrategy;
.source "BackupRestoreStrategy.java"


# instance fields
.field protected mAlarmController:Lcom/miui/milk/control/local/AlarmController;

.field protected mContext:Landroid/content/Context;

.field protected mDataFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 969
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreStrategy;-><init>()V

    .line 965
    iput-object v0, p0, Lcom/miui/backup/DeskClockStrategy;->mAlarmController:Lcom/miui/milk/control/local/AlarmController;

    .line 966
    iput-object v0, p0, Lcom/miui/backup/DeskClockStrategy;->mDataFile:Ljava/io/File;

    .line 967
    iput-object v0, p0, Lcom/miui/backup/DeskClockStrategy;->mContext:Landroid/content/Context;

    .line 970
    iput-object p3, p0, Lcom/miui/backup/DeskClockStrategy;->mContext:Landroid/content/Context;

    .line 971
    new-instance v0, Lcom/miui/milk/control/local/AlarmController;

    iget-object v1, p0, Lcom/miui/backup/DeskClockStrategy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/milk/control/local/AlarmController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/DeskClockStrategy;->mAlarmController:Lcom/miui/milk/control/local/AlarmController;

    .line 972
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/DeskClockStrategy;->mDataFile:Ljava/io/File;

    .line 973
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 977
    invoke-super {p0}, Lcom/miui/backup/BackupRestoreStrategy;->cancel()V

    .line 978
    iget-object v0, p0, Lcom/miui/backup/DeskClockStrategy;->mAlarmController:Lcom/miui/milk/control/local/AlarmController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/AlarmController;->cancel()V

    .line 979
    return-void
.end method
