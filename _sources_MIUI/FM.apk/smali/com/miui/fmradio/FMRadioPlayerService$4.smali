.class Lcom/miui/fmradio/FMRadioPlayerService$4;
.super Landroid/os/Handler;
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
    .line 603
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v7, "pref_fm_audio_routing"

    const-string v5, "RadioPlayerService"

    .line 605
    const-string v1, "RadioPlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive message in handleMessage(), msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 728
    .end local p0
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 608
    .restart local p0
    :pswitch_1
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 613
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->close()Z

    .line 615
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-virtual {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->stopSelf()V

    goto :goto_0

    .line 621
    :pswitch_2
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->showNotification(Z)V
    invoke-static {v1, v3}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1300(Lcom/miui/fmradio/FMRadioPlayerService;Z)V

    .line 623
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->registerBroadcastListener()V
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1400(Lcom/miui/fmradio/FMRadioPlayerService;)V

    .line 626
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1500(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/fmradio/FMRadioPlayer;->powerOnDevice()Z

    goto :goto_0

    .line 630
    :pswitch_3
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1500(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/fmradio/FMRadioPlayer;->powerOffDevice()Z

    goto :goto_0

    .line 634
    :pswitch_4
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1500(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/fmradio/FMRadioPlayer;->open()Z

    goto :goto_0

    .line 638
    :pswitch_5
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1500(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/fmradio/FMRadioPlayer;->close()Z

    goto :goto_0

    .line 642
    :pswitch_6
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$500(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_fm_audio_routing"

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 643
    invoke-static {}, Lcom/miui/fmradio/FMRadioUtils;->isWiredHeadsetOrHeadphoneOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 644
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #setter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I
    invoke-static {v1, v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$402(Lcom/miui/fmradio/FMRadioPlayerService;I)I

    .line 648
    :goto_1
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$500(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_fm_audio_routing"

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioPlayerService;->access$400(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v2

    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 650
    :cond_1
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1500(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayer;

    move-result-object v1

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/fmradio/FMRadioPlayer;->setBand(I)Z

    goto/16 :goto_0

    .line 646
    .restart local p0
    :cond_2
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #setter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I
    invoke-static {v1, v3}, Lcom/miui/fmradio/FMRadioPlayerService;->access$402(Lcom/miui/fmradio/FMRadioPlayerService;I)I

    goto :goto_1

    .line 654
    :pswitch_7
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1500(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayer;

    move-result-object v1

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/fmradio/FMRadioPlayer;->setEmphasisFilter(I)Z

    goto/16 :goto_0

    .line 658
    .restart local p0
    :pswitch_8
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1500(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayer;

    move-result-object v1

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/fmradio/FMRadioPlayer;->tune(I)Z

    goto/16 :goto_0

    .line 662
    .restart local p0
    :pswitch_9
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1500(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayer;

    move-result-object v1

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/fmradio/FMRadioPlayer;->seek(I)Z

    goto/16 :goto_0

    .line 666
    .restart local p0
    :pswitch_a
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1500(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayer;

    move-result-object v1

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/fmradio/FMRadioPlayer;->setVolume(I)Z

    goto/16 :goto_0

    .line 670
    .restart local p0
    :pswitch_b
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1500(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/miui/fmradio/FMRadioPlayer;->setMute(I)Z

    .line 672
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const-string v2, "com.miui.fmradio.end.running"

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v1, v2, v6}, Lcom/miui/fmradio/FMRadioPlayerService;->access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 677
    :pswitch_c
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curServiceState()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 678
    const-string v1, "RadioPlayerService"

    const-string v1, "try to set FM unmute whill FM service status is uninit!"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 681
    :cond_3
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioPlayerService;->access$400(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v2

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->audioPrepare(I)V
    invoke-static {v1, v2}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1600(Lcom/miui/fmradio/FMRadioPlayerService;I)V

    .line 683
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const-string v2, "com.miui.fmradio.start.running"

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v1, v2, v6}, Lcom/miui/fmradio/FMRadioPlayerService;->access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V

    .line 686
    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :goto_2
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1500(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/miui/fmradio/FMRadioPlayer;->setMute(I)Z

    goto/16 :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "RadioPlayerService"

    const-string v1, "Catch exception"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 695
    .end local v0           #e:Ljava/lang/InterruptedException;
    :pswitch_d
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioPlayerService;->access$400(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v2

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->audioPrepare(I)V
    invoke-static {v1, v2}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1600(Lcom/miui/fmradio/FMRadioPlayerService;I)V

    goto/16 :goto_0

    .line 699
    :pswitch_e
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x10

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 703
    :pswitch_f
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 704
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->close()Z

    .line 705
    :cond_4
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-virtual {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->stopSelf()V

    goto/16 :goto_0

    .line 709
    :pswitch_10
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->adjustVolumeUpOrDown(Z)V
    invoke-static {v1, v3}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1700(Lcom/miui/fmradio/FMRadioPlayerService;Z)V

    goto/16 :goto_0

    .line 714
    :pswitch_11
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->adjustVolumeUpOrDown(Z)V
    invoke-static {v1, v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1700(Lcom/miui/fmradio/FMRadioPlayerService;Z)V

    goto/16 :goto_0

    .line 719
    :pswitch_12
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curServiceState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 721
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->close()Z

    .line 723
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    new-instance v2, Lcom/miui/fmradio/FMRadioPlayerService$FMStateUNInit;

    iget-object v3, p0, Lcom/miui/fmradio/FMRadioPlayerService$4;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {v2, v3}, Lcom/miui/fmradio/FMRadioPlayerService$FMStateUNInit;-><init>(Lcom/miui/fmradio/FMRadioPlayerService;)V

    #setter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v1, v2}, Lcom/miui/fmradio/FMRadioPlayerService;->access$002(Lcom/miui/fmradio/FMRadioPlayerService;Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    goto/16 :goto_0

    .line 606
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_e
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_f
        :pswitch_12
        :pswitch_d
    .end packed-switch
.end method
