.class abstract Lcom/miui/backup/SmsStrategy;
.super Lcom/miui/backup/BackupRestoreStrategy;
.source "BackupRestoreStrategy.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDataFile:Ljava/io/File;

.field protected mSmsController:Lcom/miui/milk/control/local/SmsController;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 673
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreStrategy;-><init>()V

    .line 669
    iput-object v0, p0, Lcom/miui/backup/SmsStrategy;->mSmsController:Lcom/miui/milk/control/local/SmsController;

    .line 670
    iput-object v0, p0, Lcom/miui/backup/SmsStrategy;->mDataFile:Ljava/io/File;

    .line 671
    iput-object v0, p0, Lcom/miui/backup/SmsStrategy;->mContext:Landroid/content/Context;

    .line 674
    iput-object p3, p0, Lcom/miui/backup/SmsStrategy;->mContext:Landroid/content/Context;

    .line 675
    new-instance v0, Lcom/miui/milk/control/local/SmsController;

    iget-object v1, p0, Lcom/miui/backup/SmsStrategy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/milk/control/local/SmsController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/SmsStrategy;->mSmsController:Lcom/miui/milk/control/local/SmsController;

    .line 676
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/SmsStrategy;->mDataFile:Ljava/io/File;

    .line 677
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 681
    invoke-super {p0}, Lcom/miui/backup/BackupRestoreStrategy;->cancel()V

    .line 682
    iget-object v0, p0, Lcom/miui/backup/SmsStrategy;->mSmsController:Lcom/miui/milk/control/local/SmsController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/SmsController;->cancel()V

    .line 683
    return-void
.end method
