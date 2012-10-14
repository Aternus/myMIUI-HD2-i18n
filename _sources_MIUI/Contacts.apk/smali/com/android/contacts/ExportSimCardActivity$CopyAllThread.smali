.class Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;
.super Ljava/lang/Thread;
.source "ExportSimCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ExportSimCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyAllThread"
.end annotation


# instance fields
.field private mNames:[Ljava/lang/String;

.field private mNumbers:[Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/ExportSimCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ExportSimCardActivity;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "names"
    .parameter "numbers"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    .line 46
    const-string v1, "CopyAllThread"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p2, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->mNames:[Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->mNumbers:[Ljava/lang/String;

    .line 49
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/contacts/ExportSimCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 50
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "ContactsCopySIM"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 53
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 105
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/contacts/ExportSimCardActivity;->mCanceled:Z
    invoke-static {v0, v1}, Lcom/android/contacts/ExportSimCardActivity;->access$402(Lcom/android/contacts/ExportSimCardActivity;Z)Z

    .line 93
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/contacts/ExportSimCardActivity;->mCanceled:Z
    invoke-static {v0, v1}, Lcom/android/contacts/ExportSimCardActivity;->access$402(Lcom/android/contacts/ExportSimCardActivity;Z)Z

    .line 98
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->mNumbers:[Ljava/lang/String;

    array-length v8, v0

    .line 59
    .local v8, size:I
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #getter for: Lcom/android/contacts/ExportSimCardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/ExportSimCardActivity;->access$000(Lcom/android/contacts/ExportSimCardActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/ExportSimCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/ExportSimCardActivity;->SIM_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 64
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #getter for: Lcom/android/contacts/ExportSimCardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/ExportSimCardActivity;->access$000(Lcom/android/contacts/ExportSimCardActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 66
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #calls: Lcom/android/contacts/ExportSimCardActivity;->getFreeSpace()I
    invoke-static {v0}, Lcom/android/contacts/ExportSimCardActivity;->access$100(Lcom/android/contacts/ExportSimCardActivity;)I

    move-result v6

    .line 67
    .local v6, freeSpace:I
    if-ge v6, v8, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #calls: Lcom/android/contacts/ExportSimCardActivity;->quitNoSpace(II)V
    invoke-static {v0, v8, v6}, Lcom/android/contacts/ExportSimCardActivity;->access$200(Lcom/android/contacts/ExportSimCardActivity;II)V

    .line 89
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #calls: Lcom/android/contacts/ExportSimCardActivity;->initProgress(I)V
    invoke-static {v0, v8}, Lcom/android/contacts/ExportSimCardActivity;->access$300(Lcom/android/contacts/ExportSimCardActivity;I)V

    .line 74
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 76
    const/4 v7, 0x0

    .line 77
    .local v7, i:I
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->mNumbers:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #getter for: Lcom/android/contacts/ExportSimCardActivity;->mCanceled:Z
    invoke-static {v0}, Lcom/android/contacts/ExportSimCardActivity;->access$400(Lcom/android/contacts/ExportSimCardActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    iget-object v1, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->mNames:[Ljava/lang/String;

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->mNumbers:[Ljava/lang/String;

    aget-object v2, v2, v7

    #calls: Lcom/android/contacts/ExportSimCardActivity;->copyOne(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/contacts/ExportSimCardActivity;->access$500(Lcom/android/contacts/ExportSimCardActivity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #calls: Lcom/android/contacts/ExportSimCardActivity;->updateProgress(II)V
    invoke-static {v0, v7, v8}, Lcom/android/contacts/ExportSimCardActivity;->access$600(Lcom/android/contacts/ExportSimCardActivity;II)V

    .line 77
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 84
    if-ge v7, v8, :cond_2

    .line 85
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #calls: Lcom/android/contacts/ExportSimCardActivity;->promptCancel(II)V
    invoke-static {v0, v7, v8}, Lcom/android/contacts/ExportSimCardActivity;->access$700(Lcom/android/contacts/ExportSimCardActivity;II)V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$CopyAllThread;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #calls: Lcom/android/contacts/ExportSimCardActivity;->confirmDone(I)V
    invoke-static {v0, v8}, Lcom/android/contacts/ExportSimCardActivity;->access$800(Lcom/android/contacts/ExportSimCardActivity;I)V

    goto :goto_0
.end method
