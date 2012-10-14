.class abstract Lcom/miui/backup/MmsStrategy;
.super Lcom/miui/backup/BackupRestoreStrategy;
.source "BackupRestoreStrategy.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDataFile:Ljava/io/File;

.field protected mMmsController:Lcom/miui/milk/control/local/MmsController;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 732
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreStrategy;-><init>()V

    .line 728
    iput-object v0, p0, Lcom/miui/backup/MmsStrategy;->mMmsController:Lcom/miui/milk/control/local/MmsController;

    .line 729
    iput-object v0, p0, Lcom/miui/backup/MmsStrategy;->mDataFile:Ljava/io/File;

    .line 730
    iput-object v0, p0, Lcom/miui/backup/MmsStrategy;->mContext:Landroid/content/Context;

    .line 733
    iput-object p3, p0, Lcom/miui/backup/MmsStrategy;->mContext:Landroid/content/Context;

    .line 734
    new-instance v0, Lcom/miui/milk/control/local/MmsController;

    iget-object v1, p0, Lcom/miui/backup/MmsStrategy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/milk/control/local/MmsController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/MmsStrategy;->mMmsController:Lcom/miui/milk/control/local/MmsController;

    .line 735
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/MmsStrategy;->mDataFile:Ljava/io/File;

    .line 736
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 740
    invoke-super {p0}, Lcom/miui/backup/BackupRestoreStrategy;->cancel()V

    .line 741
    iget-object v0, p0, Lcom/miui/backup/MmsStrategy;->mMmsController:Lcom/miui/milk/control/local/MmsController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/MmsController;->cancel()V

    .line 742
    return-void
.end method
