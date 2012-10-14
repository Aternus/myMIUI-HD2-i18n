.class Lcom/android/monitor/NetworkMonitor$1;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/monitor/NetworkMonitor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/monitor/NetworkMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$1;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$1;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mNetworkMonitorEnable:Z
    invoke-static {v2}, Lcom/android/monitor/NetworkMonitor;->access$200(Lcom/android/monitor/NetworkMonitor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .line 452
    .local v1, uidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;
    if-nez v1, :cond_1

    .line 460
    .end local v1           #uidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;
    :cond_0
    :goto_0
    return-void

    .line 455
    .restart local v1       #uidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 456
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$1;->this$0:Lcom/android/monitor/NetworkMonitor;

    const-class v3, Lcom/android/monitor/UidDetail;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 457
    const-string v2, "android.intent.extra.UID"

    iget v3, v1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mUid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$1;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-virtual {v2, v0}, Lcom/android/monitor/NetworkMonitor;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
