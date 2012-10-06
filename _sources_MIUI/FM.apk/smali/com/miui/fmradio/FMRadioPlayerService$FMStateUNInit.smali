.class Lcom/miui/fmradio/FMRadioPlayerService$FMStateUNInit;
.super Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
.source "FMRadioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FMRadioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMStateUNInit"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateUnInit"


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FMRadioPlayerService;


# direct methods
.method public constructor <init>(Lcom/miui/fmradio/FMRadioPlayerService;)V
    .locals 1
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateUNInit;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {p0, p1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;-><init>(Lcom/miui/fmradio/FMRadioPlayerService;)V

    .line 463
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curState:I

    .line 464
    return-void
.end method


# virtual methods
.method protected open()Z
    .locals 2

    .prologue
    .line 467
    const-string v0, "StateUnInit"

    const-string v1, "open(): Power on FM radio BT device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateUNInit;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const/4 v1, 0x0

    #setter for: Lcom/miui/fmradio/FMRadioPlayerService;->mIsPoweroffCalled:Z
    invoke-static {v0, v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1002(Lcom/miui/fmradio/FMRadioPlayerService;Z)Z

    .line 469
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateUNInit;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 470
    const/4 v0, 0x1

    return v0
.end method
