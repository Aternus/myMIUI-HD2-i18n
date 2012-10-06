.class final Lcom/miui/backup/AddressBookBackup;
.super Lcom/miui/backup/AddressBookStrategy;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "dstDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    .line 630
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/AddressBookStrategy;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    .line 631
    return-void
.end method


# virtual methods
.method protected execute_()V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/miui/backup/AddressBookStrategy;->mAbController:Lcom/miui/milk/control/local/AddressBookController;

    iget-object v1, p0, Lcom/miui/backup/AddressBookStrategy;->mDataFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/local/AddressBookController;->exportAddressBook(Ljava/io/File;)V

    .line 636
    return-void
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/miui/backup/AddressBookStrategy;->mAbController:Lcom/miui/milk/control/local/AddressBookController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/AddressBookController;->getExportedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getTotalSize()J
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/miui/backup/AddressBookStrategy;->mAbController:Lcom/miui/milk/control/local/AddressBookController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/AddressBookController;->getTotalExportSize()J

    move-result-wide v0

    return-wide v0
.end method
