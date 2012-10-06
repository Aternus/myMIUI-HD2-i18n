.class Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardScanThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field private mCheckedPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGotIOException:Z

.field private mRootDirectory:Ljava/io/File;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/io/File;)V
    .locals 3
    .parameter
    .parameter "sdcardDirectory"

    .prologue
    const/4 v1, 0x0

    .line 617
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 618
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 619
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    .line 620
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    .line 621
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    .line 622
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 624
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "VCardImport"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 627
    return-void
.end method

.method private getVCardFileRecursively(Ljava/io/File;)V
    .locals 13
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 666
    iget-boolean v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v10, :cond_0

    .line 667
    new-instance v10, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v10, p0, v12}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    throw v10

    .line 671
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 672
    .local v5, files:[Ljava/io/File;
    if-nez v5, :cond_2

    .line 673
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 674
    .local v2, currentDirectoryPath:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".android_secure"

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 676
    .local v8, secureDirectoryPath:Ljava/lang/String;
    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 677
    const-string v10, "VCardImport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "listFiles() returned null (directory: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .end local v2           #currentDirectoryPath:Ljava/lang/String;
    .end local v8           #secureDirectoryPath:Ljava/lang/String;
    :cond_1
    return-void

    .line 681
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v0, v6

    .line 682
    .local v3, file:Ljava/io/File;
    iget-boolean v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v10, :cond_3

    .line 683
    new-instance v10, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v10, p0, v12}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    throw v10

    .line 685
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, canonicalPath:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 681
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 690
    :cond_5
    iget-object v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 692
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 693
    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V

    goto :goto_1

    .line 694
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".vcf"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 696
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 697
    .local v4, fileName:Ljava/lang/String;
    new-instance v9, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-direct {v9, v4, v1, v10, v11}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 699
    .local v9, vcardFile:Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    iget-object v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$500(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 706
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 709
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 712
    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 631
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$502(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 633
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 634
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 640
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_0
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 643
    iget-boolean v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v2, :cond_0

    .line 644
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$502(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 647
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$800(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 648
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;
    invoke-static {v2, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$802(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 650
    iget-boolean v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    if-eqz v2, :cond_1

    .line 651
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v3, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v5, 0x7f070014

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 662
    :goto_1
    return-void

    .line 635
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 636
    .local v0, e:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .line 637
    .end local v0           #e:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 638
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 640
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 652
    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v2, :cond_2

    .line 653
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto :goto_1

    .line 655
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$500(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 656
    .local v1, size:I
    if-nez v1, :cond_3

    .line 657
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v3, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v5, 0x7f07000f

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 659
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    #calls: Lcom/android/contacts/vcard/ImportVCardActivity;->startVCardSelectAndImport()V
    invoke-static {v2}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$900(Lcom/android/contacts/vcard/ImportVCardActivity;)V

    goto :goto_1
.end method
