.class Lcom/android/monitor/UidDetail$4;
.super Ljava/lang/Object;
.source "UidDetail.java"

# interfaces
.implements Landroid/widget/SlidingButton$OnCheckedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/monitor/UidDetail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/UidDetail;


# direct methods
.method constructor <init>(Lcom/android/monitor/UidDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/monitor/UidDetail$4;->this$0:Lcom/android/monitor/UidDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/monitor/UidDetail$4;->this$0:Lcom/android/monitor/UidDetail;

    #getter for: Lcom/android/monitor/UidDetail;->mUidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;
    invoke-static {v1}, Lcom/android/monitor/UidDetail;->access$200(Lcom/android/monitor/UidDetail;)Lcom/android/monitor/NetworkMonitor$UidInfo;

    move-result-object v1

    iput-boolean p1, v1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableWifi:Z

    .line 138
    iget-object v1, p0, Lcom/android/monitor/UidDetail$4;->this$0:Lcom/android/monitor/UidDetail;

    iget-object v2, p0, Lcom/android/monitor/UidDetail$4;->this$0:Lcom/android/monitor/UidDetail;

    #getter for: Lcom/android/monitor/UidDetail;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/monitor/UidDetail;->access$300(Lcom/android/monitor/UidDetail;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/monitor/Firewall;->saveRules(Landroid/content/Context;Landroid/util/SparseArray;)V

    .line 139
    iget-object v1, p0, Lcom/android/monitor/UidDetail$4;->this$0:Lcom/android/monitor/UidDetail;

    invoke-static {v1}, Lcom/android/monitor/Firewall;->getWifiAccessMode(Landroid/content/Context;)I

    move-result v0

    .line 140
    .local v0, mode:I
    if-nez p1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/android/monitor/UidDetail$4;->this$0:Lcom/android/monitor/UidDetail;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/monitor/Firewall;->setWifiAccessMode(Landroid/content/Context;I)V

    .line 144
    :cond_2
    return-void
.end method
