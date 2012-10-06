.class Lcom/android/monitor/Traffic$MonitorEnabledChangedListener;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Landroid/widget/SlidingButton$OnCheckedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/Traffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorEnabledChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/Traffic;


# direct methods
.method private constructor <init>(Lcom/android/monitor/Traffic;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/monitor/Traffic$MonitorEnabledChangedListener;->this$0:Lcom/android/monitor/Traffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/monitor/Traffic;Lcom/android/monitor/Traffic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/android/monitor/Traffic$MonitorEnabledChangedListener;-><init>(Lcom/android/monitor/Traffic;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Z)V
    .locals 4
    .parameter "isChecked"

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 180
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/monitor/Traffic$MonitorEnabledChangedListener;->this$0:Lcom/android/monitor/Traffic;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x104000a

    iget-object v3, p0, Lcom/android/monitor/Traffic$MonitorEnabledChangedListener;->this$0:Lcom/android/monitor/Traffic;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    iget-object v3, p0, Lcom/android/monitor/Traffic$MonitorEnabledChangedListener;->this$0:Lcom/android/monitor/Traffic;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 197
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/monitor/Traffic$MonitorEnabledChangedListener;->this$0:Lcom/android/monitor/Traffic;

    invoke-virtual {v1}, Lcom/android/monitor/Traffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_monitor_traffic"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/monitor/Traffic$MonitorEnabledChangedListener;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/internal/app/ITraffic;
    invoke-static {v1}, Lcom/android/monitor/Traffic;->access$600(Lcom/android/monitor/Traffic;)Lcom/android/internal/app/ITraffic;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/ITraffic;->refresh()V

    .line 189
    iget-object v1, p0, Lcom/android/monitor/Traffic$MonitorEnabledChangedListener;->this$0:Lcom/android/monitor/Traffic;

    const/4 v2, 0x0

    #setter for: Lcom/android/monitor/Traffic;->mTrafficData:Lcom/android/internal/os/TrafficData;
    invoke-static {v1, v2}, Lcom/android/monitor/Traffic;->access$702(Lcom/android/monitor/Traffic;Lcom/android/internal/os/TrafficData;)Lcom/android/internal/os/TrafficData;

    .line 190
    iget-object v1, p0, Lcom/android/monitor/Traffic$MonitorEnabledChangedListener;->this$0:Lcom/android/monitor/Traffic;

    iget-object v2, p0, Lcom/android/monitor/Traffic$MonitorEnabledChangedListener;->this$0:Lcom/android/monitor/Traffic;

    #getter for: Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/internal/app/ITraffic;
    invoke-static {v2}, Lcom/android/monitor/Traffic;->access$600(Lcom/android/monitor/Traffic;)Lcom/android/internal/app/ITraffic;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/app/ITraffic;->getTrafficData()Lcom/android/internal/os/TrafficData;

    move-result-object v2

    #setter for: Lcom/android/monitor/Traffic;->mTrafficData:Lcom/android/internal/os/TrafficData;
    invoke-static {v1, v2}, Lcom/android/monitor/Traffic;->access$702(Lcom/android/monitor/Traffic;Lcom/android/internal/os/TrafficData;)Lcom/android/internal/os/TrafficData;

    .line 191
    iget-object v1, p0, Lcom/android/monitor/Traffic$MonitorEnabledChangedListener;->this$0:Lcom/android/monitor/Traffic;

    #calls: Lcom/android/monitor/Traffic;->updateTrafficTable()V
    invoke-static {v1}, Lcom/android/monitor/Traffic;->access$800(Lcom/android/monitor/Traffic;)V

    .line 192
    iget-object v1, p0, Lcom/android/monitor/Traffic$MonitorEnabledChangedListener;->this$0:Lcom/android/monitor/Traffic;

    #calls: Lcom/android/monitor/Traffic;->updateMobilePackagePanel()V
    invoke-static {v1}, Lcom/android/monitor/Traffic;->access$900(Lcom/android/monitor/Traffic;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 194
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Monitor"

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
