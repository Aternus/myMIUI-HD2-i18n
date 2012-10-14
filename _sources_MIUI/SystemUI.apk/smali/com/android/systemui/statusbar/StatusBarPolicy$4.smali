.class Lcom/android/systemui/statusbar/StatusBarPolicy$4;
.super Landroid/telephony/PhoneStateListener;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateCallState(I)V
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2200(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V

    .line 1033
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->isCdma()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2300(Lcom/android/systemui/statusbar/StatusBarPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1900(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    .line 1036
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iput p1, v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataActivity:I

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2100(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    .line 1049
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iput p1, v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mDataState:I

    .line 1041
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataNetType(I)V
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2400(Lcom/android/systemui/statusbar/StatusBarPolicy;I)V

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2100(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    .line 1043
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    .line 1024
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1900(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    .line 1025
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2000(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/telephony/ServiceState;)V

    .line 1026
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2100(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    .line 1027
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1015
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1900(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    .line 1016
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$2000(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/telephony/ServiceState;)V

    .line 1019
    :cond_0
    return-void
.end method
