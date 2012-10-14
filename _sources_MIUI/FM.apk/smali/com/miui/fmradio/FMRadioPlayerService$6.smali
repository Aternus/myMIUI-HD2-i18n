.class Lcom/miui/fmradio/FMRadioPlayerService$6;
.super Lcom/miui/fmradio/IFMRadioPlayerService$Stub;
.source "FMRadioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FMRadioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FMRadioPlayerService;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FMRadioPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 846
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {p0}, Lcom/miui/fmradio/IFMRadioPlayerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public close()Z
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$2000(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mPeriodicPending:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1900(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 863
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->close()Z

    move-result v0

    .line 866
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioRouting()I
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->getAudioRouting()I

    move-result v0

    .line 915
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getServiceStatus()I
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curServiceState()I

    move-result v0

    .line 851
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->getVolume()I

    move-result v0

    .line 894
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isMute()Z
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->isMute()Z

    move-result v0

    .line 908
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneStatusIdle()Z
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mPhoneState:I
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$100(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 935
    const/4 v0, 0x1

    .line 938
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open()Z
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->open()Z

    move-result v0

    .line 858
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seek(I)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 877
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->seek(I)Z

    move-result v0

    .line 880
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFMSwitchOffFlag(Z)Z
    .locals 7
    .parameter "flag"

    .prologue
    const/4 v6, 0x1

    .line 919
    iget-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #setter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMSwitchOffFlag:Z
    invoke-static {v2, p1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$202(Lcom/miui/fmradio/FMRadioPlayerService;Z)Z

    .line 920
    if-eqz p1, :cond_0

    .line 921
    iget-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 922
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long v0, v2, v4

    .line 923
    .local v0, when:J
    iget-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioPlayerService;->access$2000(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mPeriodicPending:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1900(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 924
    iget-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$400(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v4

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->turnOnOffFmAudio(ZI)V
    invoke-static {v2, v3, v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$700(Lcom/miui/fmradio/FMRadioPlayerService;ZI)V

    .line 929
    .end local v0           #when:J
    :goto_0
    return v6

    .line 926
    :cond_0
    iget-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioPlayerService;->access$2000(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mPeriodicPending:Landroid/app/PendingIntent;
    invoke-static {v3}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1900(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 927
    iget-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    iget-object v3, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I
    invoke-static {v3}, Lcom/miui/fmradio/FMRadioPlayerService;->access$400(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v3

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->turnOnOffFmAudio(ZI)V
    invoke-static {v2, v6, v3}, Lcom/miui/fmradio/FMRadioPlayerService;->access$700(Lcom/miui/fmradio/FMRadioPlayerService;ZI)V

    goto :goto_0
.end method

.method public setMute(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 898
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->setMute(I)Z

    move-result v0

    .line 901
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVolume(I)Z
    .locals 1
    .parameter "volume"

    .prologue
    .line 884
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->setVolume(I)Z

    move-result v0

    .line 887
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tune(I)Z
    .locals 1
    .parameter "freq"

    .prologue
    .line 870
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->tune(I)Z

    move-result v0

    .line 873
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unmuteFMOnResume()V
    .locals 3

    .prologue
    .line 946
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$6;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const/4 v1, 0x1

    const/4 v2, -0x1

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->turnOnOffFmAudio(ZI)V
    invoke-static {v0, v1, v2}, Lcom/miui/fmradio/FMRadioPlayerService;->access$700(Lcom/miui/fmradio/FMRadioPlayerService;ZI)V

    .line 947
    return-void
.end method
