.class Lcom/android/monitor/NetworkMonitor$3;
.super Ljava/lang/Thread;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/monitor/NetworkMonitor;->applyOrSaveRules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/NetworkMonitor;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/monitor/NetworkMonitor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$3;->this$0:Lcom/android/monitor/NetworkMonitor;

    iput-boolean p2, p0, Lcom/android/monitor/NetworkMonitor$3;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 683
    iget-boolean v0, p0, Lcom/android/monitor/NetworkMonitor$3;->val$enabled:Z

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$3;->this$0:Lcom/android/monitor/NetworkMonitor;

    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$3;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor;->access$1600(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/monitor/Firewall;->applyRules(Landroid/content/Context;Landroid/util/SparseArray;Z)Z

    .line 689
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$3;->this$0:Lcom/android/monitor/NetworkMonitor;

    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$3;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor;->access$1600(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/monitor/Firewall;->saveRules(Landroid/content/Context;Landroid/util/SparseArray;)V

    .line 687
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$3;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-static {v0, v2}, Lcom/android/monitor/Firewall;->purgeIptables(Landroid/content/Context;Z)Z

    goto :goto_0
.end method
