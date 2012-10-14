.class Lcom/miui/fmradio/FMRadioPlayerService$1;
.super Landroid/telephony/PhoneStateListener;
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
    .line 129
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioPlayerService$1;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const-string v1, "RadioPlayerService"

    .line 133
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$1;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    const-string v0, "RadioPlayerService"

    const-string v0, "Radio service state is null, will return!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$1;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mPhoneState:I
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$100(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$1;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #setter for: Lcom/miui/fmradio/FMRadioPlayerService;->mPhoneState:I
    invoke-static {v0, p1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$102(Lcom/miui/fmradio/FMRadioPlayerService;I)I

    .line 143
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$1;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mPhoneState:I
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$100(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$1;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMSwitchOffFlag:Z
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$200(Lcom/miui/fmradio/FMRadioPlayerService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$1;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 147
    :cond_2
    const-string v0, "RadioPlayerService"

    const-string v0, "Phone call state is not idle now, will power on FM radio!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$1;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
