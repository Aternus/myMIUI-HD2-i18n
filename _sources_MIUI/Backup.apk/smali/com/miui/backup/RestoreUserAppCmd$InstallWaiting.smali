.class Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;
.super Ljava/lang/Object;
.source "RestoreCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/RestoreUserAppCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallWaiting"
.end annotation


# instance fields
.field private mInstallFinished:Z

.field private mWaitInterval:I

.field final synthetic this$0:Lcom/miui/backup/RestoreUserAppCmd;


# direct methods
.method constructor <init>(Lcom/miui/backup/RestoreUserAppCmd;I)V
    .locals 1
    .parameter
    .parameter "interval"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;->this$0:Lcom/miui/backup/RestoreUserAppCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;->mInstallFinished:Z

    .line 326
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;->mWaitInterval:I

    .line 329
    iput p2, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;->mWaitInterval:I

    .line 330
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 344
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;->mInstallFinished:Z

    .line 345
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isFinished()Z
    .locals 1

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;->mInstallFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitInterval()V
    .locals 2

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/backup/RestoreUserAppCmd$InstallWaiting;->mWaitInterval:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 339
    :catch_0
    move-exception v0

    goto :goto_0
.end method
