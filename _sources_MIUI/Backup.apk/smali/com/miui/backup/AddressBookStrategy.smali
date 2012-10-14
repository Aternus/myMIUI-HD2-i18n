.class abstract Lcom/miui/backup/AddressBookStrategy;
.super Lcom/miui/backup/BackupRestoreStrategy;
.source "BackupRestoreStrategy.java"


# instance fields
.field protected mAbController:Lcom/miui/milk/control/local/AddressBookController;

.field protected mContext:Landroid/content/Context;

.field protected mDataFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "dstDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 606
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreStrategy;-><init>()V

    .line 602
    iput-object v0, p0, Lcom/miui/backup/AddressBookStrategy;->mAbController:Lcom/miui/milk/control/local/AddressBookController;

    .line 603
    iput-object v0, p0, Lcom/miui/backup/AddressBookStrategy;->mDataFile:Ljava/io/File;

    .line 604
    iput-object v0, p0, Lcom/miui/backup/AddressBookStrategy;->mContext:Landroid/content/Context;

    .line 607
    iput-object p3, p0, Lcom/miui/backup/AddressBookStrategy;->mContext:Landroid/content/Context;

    .line 608
    new-instance v0, Lcom/miui/milk/control/local/AddressBookController;

    iget-object v1, p0, Lcom/miui/backup/AddressBookStrategy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/milk/control/local/AddressBookController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/AddressBookStrategy;->mAbController:Lcom/miui/milk/control/local/AddressBookController;

    .line 609
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/AddressBookStrategy;->mDataFile:Ljava/io/File;

    .line 610
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 614
    invoke-super {p0}, Lcom/miui/backup/BackupRestoreStrategy;->cancel()V

    .line 615
    iget-object v0, p0, Lcom/miui/backup/AddressBookStrategy;->mAbController:Lcom/miui/milk/control/local/AddressBookController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/AddressBookController;->cancel()V

    .line 616
    return-void
.end method

.method public isSucceeded()Z
    .locals 2

    .prologue
    .line 620
    invoke-super {p0}, Lcom/miui/backup/BackupRestoreStrategy;->isSucceeded()Z

    move-result v0

    .line 621
    .local v0, isSucceed:Z
    iget-object v1, p0, Lcom/miui/backup/AddressBookStrategy;->mAbController:Lcom/miui/milk/control/local/AddressBookController;

    invoke-virtual {v1}, Lcom/miui/milk/control/local/AddressBookController;->isException()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    const/4 v0, 0x0

    .line 624
    :cond_0
    return v0
.end method
