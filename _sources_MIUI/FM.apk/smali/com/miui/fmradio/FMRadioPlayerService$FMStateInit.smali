.class Lcom/miui/fmradio/FMRadioPlayerService$FMStateInit;
.super Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
.source "FMRadioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FMRadioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMStateInit"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateInit"


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FMRadioPlayerService;


# direct methods
.method public constructor <init>(Lcom/miui/fmradio/FMRadioPlayerService;)V
    .locals 1
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateInit;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {p0, p1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;-><init>(Lcom/miui/fmradio/FMRadioPlayerService;)V

    .line 477
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curState:I

    .line 478
    return-void
.end method


# virtual methods
.method protected close()Z
    .locals 2

    .prologue
    .line 487
    const-string v0, "StateInit"

    const-string v1, "close(), power off fmradio BT device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateInit;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 489
    const/4 v0, 0x1

    return v0
.end method

.method protected open()Z
    .locals 2

    .prologue
    .line 481
    const-string v0, "StateInit"

    const-string v1, "open(), initialize FM radio server stack service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateInit;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 483
    const/4 v0, 0x1

    return v0
.end method
