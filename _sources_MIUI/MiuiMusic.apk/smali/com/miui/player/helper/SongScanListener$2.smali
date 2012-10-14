.class Lcom/miui/player/helper/SongScanListener$2;
.super Landroid/content/BroadcastReceiver;
.source "SongScanListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/SongScanListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/SongScanListener;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/SongScanListener;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/miui/player/helper/SongScanListener$2;->this$0:Lcom/miui/player/helper/SongScanListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.miui.music.RECOVERY_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/miui/player/helper/SongScanListener$2;->this$0:Lcom/miui/player/helper/SongScanListener;

    #getter for: Lcom/miui/player/helper/SongScanListener;->mScanner:Lcom/miui/player/helper/SongScanListener$SongScanner;
    invoke-static {v1}, Lcom/miui/player/helper/SongScanListener;->access$000(Lcom/miui/player/helper/SongScanListener;)Lcom/miui/player/helper/SongScanListener$SongScanner;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/player/helper/SongScanListener$SongScanner;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/miui/player/helper/SongScanListener$2;->this$0:Lcom/miui/player/helper/SongScanListener;

    const/4 v2, 0x1

    #setter for: Lcom/miui/player/helper/SongScanListener;->mRecoveryCompleteUpdate:Z
    invoke-static {v1, v2}, Lcom/miui/player/helper/SongScanListener;->access$102(Lcom/miui/player/helper/SongScanListener;Z)Z

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/miui/player/helper/SongScanListener$2;->this$0:Lcom/miui/player/helper/SongScanListener;

    #getter for: Lcom/miui/player/helper/SongScanListener;->mScanner:Lcom/miui/player/helper/SongScanListener$SongScanner;
    invoke-static {v1}, Lcom/miui/player/helper/SongScanListener;->access$000(Lcom/miui/player/helper/SongScanListener;)Lcom/miui/player/helper/SongScanListener$SongScanner;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/player/helper/SongScanListener$SongScanner;->refreshAfterRecovery()V

    .line 96
    iget-object v1, p0, Lcom/miui/player/helper/SongScanListener$2;->this$0:Lcom/miui/player/helper/SongScanListener;

    const/4 v2, 0x0

    #setter for: Lcom/miui/player/helper/SongScanListener;->mRecoveryCompleteUpdate:Z
    invoke-static {v1, v2}, Lcom/miui/player/helper/SongScanListener;->access$102(Lcom/miui/player/helper/SongScanListener;Z)Z

    goto :goto_0
.end method
