.class Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;
.super Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
.source "FMRadioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FMRadioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMStateReady"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioStateReady"


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FMRadioPlayerService;


# direct methods
.method public constructor <init>(Lcom/miui/fmradio/FMRadioPlayerService;)V
    .locals 1
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {p0, p1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;-><init>(Lcom/miui/fmradio/FMRadioPlayerService;)V

    .line 520
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curState:I

    .line 521
    return-void
.end method


# virtual methods
.method protected close()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 529
    const-string v0, "RadioStateReady"

    const-string v1, "close() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const-string v1, "com.miui.fmradio.end.running"

    const/4 v2, 0x0

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/miui/fmradio/FMRadioPlayerService;->access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V

    .line 531
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->listenPhoneState(Z)V
    invoke-static {v0, v3}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1100(Lcom/miui/fmradio/FMRadioPlayerService;Z)V

    .line 532
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const/4 v1, -0x1

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->turnOnOffFmAudio(ZI)V
    invoke-static {v0, v3, v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$700(Lcom/miui/fmradio/FMRadioPlayerService;ZI)V

    .line 534
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->unregisterBroadcastListener()V
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1200(Lcom/miui/fmradio/FMRadioPlayerService;)V

    .line 536
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 537
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 539
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #setter for: Lcom/miui/fmradio/FMRadioPlayerService;->mIsPoweroffCalled:Z
    invoke-static {v0, v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1002(Lcom/miui/fmradio/FMRadioPlayerService;Z)Z

    .line 540
    return v4
.end method

.method protected open()Z
    .locals 2

    .prologue
    .line 524
    const-string v0, "RadioStateReady"

    const-string v1, "open(), Already opened, just retun OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v0, 0x1

    return v0
.end method

.method protected seek(I)Z
    .locals 4
    .parameter "direction"

    .prologue
    .line 551
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 552
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 553
    const/4 v1, 0x1

    return v1
.end method

.method protected setMute(I)Z
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    .line 564
    const-string v1, "RadioStateReady"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMute(): mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, msg:Landroid/os/Message;
    if-ne p1, v4, :cond_0

    .line 567
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const/4 v2, 0x0

    #setter for: Lcom/miui/fmradio/FMRadioPlayerService;->misMuted:Z
    invoke-static {v1, v2}, Lcom/miui/fmradio/FMRadioPlayerService;->access$902(Lcom/miui/fmradio/FMRadioPlayerService;Z)Z

    .line 568
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 573
    :goto_0
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 574
    return v4

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #setter for: Lcom/miui/fmradio/FMRadioPlayerService;->misMuted:Z
    invoke-static {v1, v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$902(Lcom/miui/fmradio/FMRadioPlayerService;Z)Z

    .line 571
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method protected setVolume(I)Z
    .locals 4
    .parameter "volume"

    .prologue
    .line 557
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 558
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 559
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #setter for: Lcom/miui/fmradio/FMRadioPlayerService;->mVolume:I
    invoke-static {v1, p1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$802(Lcom/miui/fmradio/FMRadioPlayerService;I)I

    .line 560
    const/4 v1, 0x1

    return v1
.end method

.method protected tune(I)Z
    .locals 4
    .parameter "freq"

    .prologue
    .line 544
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 545
    .local v0, msg:Landroid/os/Message;
    const-string v1, "RadioStateReady"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tune(), tune FM radio or set FM channel frequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 547
    const/4 v1, 0x1

    return v1
.end method
