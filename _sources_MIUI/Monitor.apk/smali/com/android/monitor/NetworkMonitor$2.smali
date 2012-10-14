.class Lcom/android/monitor/NetworkMonitor$2;
.super Landroid/os/AsyncTask;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/monitor/NetworkMonitor;->refreshTraffic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/monitor/NetworkMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 587
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/monitor/NetworkMonitor$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x1

    .line 597
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/monitor/NetworkMonitor;->access$1600(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/monitor/NetworkMonitor;->access$000(Lcom/android/monitor/NetworkMonitor;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/monitor/NetworkMonitor;->buildUidInfoList(Landroid/content/Context;Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V

    .line 599
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-virtual {v1}, Lcom/android/monitor/NetworkMonitor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_monitor_traffic"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    :goto_0
    #setter for: Lcom/android/monitor/NetworkMonitor;->mNetworkMonitorEnable:Z
    invoke-static {v0, v1}, Lcom/android/monitor/NetworkMonitor;->access$202(Lcom/android/monitor/NetworkMonitor;Z)Z

    .line 601
    const/4 v0, 0x0

    return-object v0

    .line 599
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 587
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/monitor/NetworkMonitor$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 9
    .parameter "result"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 606
    iget-object v5, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mNetworkMonitorEnable:Z
    invoke-static {v5}, Lcom/android/monitor/NetworkMonitor;->access$200(Lcom/android/monitor/NetworkMonitor;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 607
    iget-object v5, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mTrafficTitle:Landroid/view/View;
    invoke-static {v5}, Lcom/android/monitor/NetworkMonitor;->access$1700(Lcom/android/monitor/NetworkMonitor;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 609
    :try_start_0
    iget-object v5, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    const/4 v6, 0x0

    #setter for: Lcom/android/monitor/NetworkMonitor;->mTrafficData:Lcom/android/internal/os/TrafficData;
    invoke-static {v5, v6}, Lcom/android/monitor/NetworkMonitor;->access$1802(Lcom/android/monitor/NetworkMonitor;Lcom/android/internal/os/TrafficData;)Lcom/android/internal/os/TrafficData;

    .line 610
    iget-object v5, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mTrafficService:Lcom/android/internal/app/ITraffic;
    invoke-static {v5}, Lcom/android/monitor/NetworkMonitor;->access$1900(Lcom/android/monitor/NetworkMonitor;)Lcom/android/internal/app/ITraffic;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/app/ITraffic;->refresh()V

    .line 611
    iget-object v5, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    iget-object v6, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mTrafficService:Lcom/android/internal/app/ITraffic;
    invoke-static {v6}, Lcom/android/monitor/NetworkMonitor;->access$1900(Lcom/android/monitor/NetworkMonitor;)Lcom/android/internal/app/ITraffic;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/app/ITraffic;->getTrafficData()Lcom/android/internal/os/TrafficData;

    move-result-object v6

    #setter for: Lcom/android/monitor/NetworkMonitor;->mTrafficData:Lcom/android/internal/os/TrafficData;
    invoke-static {v5, v6}, Lcom/android/monitor/NetworkMonitor;->access$1802(Lcom/android/monitor/NetworkMonitor;Lcom/android/internal/os/TrafficData;)Lcom/android/internal/os/TrafficData;

    .line 612
    iget-object v5, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mTrafficData:Lcom/android/internal/os/TrafficData;
    invoke-static {v5}, Lcom/android/monitor/NetworkMonitor;->access$1800(Lcom/android/monitor/NetworkMonitor;)Lcom/android/internal/os/TrafficData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/os/TrafficData;->supportUidNetworkStats()Z

    move-result v5

    sput-boolean v5, Lcom/android/monitor/NetworkMonitor;->mSupportUidNetwork:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/monitor/NetworkMonitor;->access$1600(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 623
    iget-object v5, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/monitor/NetworkMonitor;->access$1600(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 624
    .local v2, uid:I
    iget-object v5, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mTrafficData:Lcom/android/internal/os/TrafficData;
    invoke-static {v5}, Lcom/android/monitor/NetworkMonitor;->access$1800(Lcom/android/monitor/NetworkMonitor;)Lcom/android/internal/os/TrafficData;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v4

    .line 625
    .local v4, uidStat:Lcom/android/internal/os/TrafficData$Uid;
    iget-object v5, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/monitor/NetworkMonitor;->access$1600(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .line 626
    .local v3, uidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;
    if-eqz v3, :cond_0

    .line 627
    invoke-virtual {v4}, Lcom/android/internal/os/TrafficData$Uid;->getTxBytes()[J

    move-result-object v5

    iget-object v6, v3, Lcom/android/monitor/NetworkMonitor$UidInfo;->mTxBytes:[J

    invoke-static {v5, v7, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 629
    invoke-virtual {v4}, Lcom/android/internal/os/TrafficData$Uid;->getRxBytes()[J

    move-result-object v5

    iget-object v6, v3, Lcom/android/monitor/NetworkMonitor$UidInfo;->mRxBytes:[J

    invoke-static {v5, v7, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 631
    invoke-virtual {v4}, Lcom/android/internal/os/TrafficData$Uid;->getMobileTxBytes()[J

    move-result-object v5

    iget-object v6, v3, Lcom/android/monitor/NetworkMonitor$UidInfo;->mMobileTxBytes:[J

    invoke-static {v5, v7, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    invoke-virtual {v4}, Lcom/android/internal/os/TrafficData$Uid;->getMobileRxBytes()[J

    move-result-object v5

    iget-object v6, v3, Lcom/android/monitor/NetworkMonitor$UidInfo;->mMobileRxBytes:[J

    invoke-static {v5, v7, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 622
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 613
    .end local v1           #i:I
    .end local v2           #uid:I
    .end local v3           #uidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;
    .end local v4           #uidStat:Lcom/android/internal/os/TrafficData$Uid;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 614
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "Monitor"

    const-string v6, "RemoteException:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    iget-object v5, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    const v6, 0x7f070045

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 617
    iget-object v5, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mLoadingAppsListDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/monitor/NetworkMonitor;->access$1500(Lcom/android/monitor/NetworkMonitor;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 643
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 638
    :cond_1
    iget-object v5, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mTrafficTitle:Landroid/view/View;
    invoke-static {v5}, Lcom/android/monitor/NetworkMonitor;->access$1700(Lcom/android/monitor/NetworkMonitor;)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 641
    :cond_2
    iget-object v5, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;
    invoke-static {v5}, Lcom/android/monitor/NetworkMonitor;->access$900(Lcom/android/monitor/NetworkMonitor;)Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/monitor/NetworkMonitor;->access$1600(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->refresh(Landroid/util/SparseArray;)V

    .line 642
    iget-object v5, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mLoadingAppsListDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/monitor/NetworkMonitor;->access$1500(Lcom/android/monitor/NetworkMonitor;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mLoadingAppsListDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/monitor/NetworkMonitor;->access$1500(Lcom/android/monitor/NetworkMonitor;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 591
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$2;->this$0:Lcom/android/monitor/NetworkMonitor;

    #getter for: Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/monitor/NetworkMonitor;->access$1600(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 592
    return-void
.end method
