.class Lcom/miui/fmradio/FMRadioPlayerService$FMStateInitED;
.super Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
.source "FMRadioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FMRadioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMStateInitED"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateInitED"


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FMRadioPlayerService;


# direct methods
.method public constructor <init>(Lcom/miui/fmradio/FMRadioPlayerService;)V
    .locals 1
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateInitED;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {p0, p1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;-><init>(Lcom/miui/fmradio/FMRadioPlayerService;)V

    .line 496
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curState:I

    .line 497
    return-void
.end method


# virtual methods
.method protected close()Z
    .locals 2

    .prologue
    .line 509
    const-string v0, "StateInitED"

    const-string v1, "close(), close FM radio server stack first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateInitED;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 511
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateInitED;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 512
    const/4 v0, 0x1

    return v0
.end method

.method protected prepare()Z
    .locals 4

    .prologue
    .line 500
    const-string v1, "StateInitED"

    const-string v2, "Prepare(), setBand and setDemphersize for FM radio Bluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateInitED;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 502
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateInitED;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 503
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateInitED;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateInitED;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 505
    const/4 v1, 0x1

    return v1
.end method
