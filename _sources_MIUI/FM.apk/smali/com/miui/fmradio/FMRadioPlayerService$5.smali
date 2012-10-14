.class Lcom/miui/fmradio/FMRadioPlayerService$5;
.super Ljava/lang/Object;
.source "FMRadioPlayerService.java"

# interfaces
.implements Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;


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
    .line 733
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandComplete(IILjava/lang/Object;)V
    .locals 6
    .parameter "what"
    .parameter "status"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "com.miui.fmradio.openfailed"

    const-string v3, "RadioPlayerService"

    .line 735
    const-string v0, "RadioPlayerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command complete listener receive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    packed-switch p1, :pswitch_data_0

    .line 829
    :pswitch_0
    const-string v0, "RadioPlayerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FM radio default cmd, value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 831
    const-string v0, "RadioPlayerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnCommandCompleteListener : FM_CMD_NONE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_0
    :goto_0
    if-ne p2, v5, :cond_1

    .line 836
    const-string v0, "RadioPlayerService"

    const-string v0, "OnCommandCompleteListener : FM_HW_ERROR_UNKNOWN"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const-string v1, "com.miui.fmradio.hwerror"

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1, v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V

    .line 841
    :cond_1
    :goto_1
    :pswitch_1
    return-void

    .line 738
    :pswitch_2
    if-nez p2, :cond_2

    .line 739
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    new-instance v1, Lcom/miui/fmradio/FMRadioPlayerService$FMStateInit;

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {v1, v2}, Lcom/miui/fmradio/FMRadioPlayerService$FMStateInit;-><init>(Lcom/miui/fmradio/FMRadioPlayerService;)V

    #setter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0, v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$002(Lcom/miui/fmradio/FMRadioPlayerService;Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    .line 741
    const-string v0, "RadioPlayerService"

    const-string v0, "Power on FM radio succeed, open FM radio stack now!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->open()Z

    goto :goto_1

    .line 745
    :cond_2
    const-string v0, "RadioPlayerService"

    const-string v0, "Power on failed!  Bluetooth enables failed!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const-string v1, "com.miui.fmradio.openfailed"

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v2, v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V

    .line 747
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->stopSelf()V

    goto :goto_1

    .line 755
    :pswitch_3
    if-nez p2, :cond_4

    .line 756
    const-string v0, "RadioPlayerService"

    const-string v0, "Open FM radio stack succeed!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    new-instance v1, Lcom/miui/fmradio/FMRadioPlayerService$FMStateInitED;

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {v1, v2}, Lcom/miui/fmradio/FMRadioPlayerService$FMStateInitED;-><init>(Lcom/miui/fmradio/FMRadioPlayerService;)V

    #setter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0, v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$002(Lcom/miui/fmradio/FMRadioPlayerService;Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    .line 759
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->prepare()Z

    .line 761
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    new-instance v1, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {v1, v2}, Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;-><init>(Lcom/miui/fmradio/FMRadioPlayerService;)V

    #setter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0, v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$002(Lcom/miui/fmradio/FMRadioPlayerService;Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    .line 763
    const-string v0, "RadioPlayerService"

    const-string v0, "Notify the PhoneWindowManager to set flag since FM Radio will start playing"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const-string v1, "com.miui.fmradio.start.running"

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1, v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V

    .line 766
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->listenPhoneState(Z)V
    invoke-static {v0, v5}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1100(Lcom/miui/fmradio/FMRadioPlayerService;Z)V

    .line 768
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mVolume:I
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$800(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->setVolume(I)Z

    .line 770
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const-string v1, "com.miui.fmradio.opensucceed"

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1, v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V

    .line 772
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mPhoneState:I
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$100(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 773
    const-string v0, "RadioPlayerService"

    const-string v0, "Phone is not in IDLE state, will mute FM Radio"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->setMute(I)Z

    .line 780
    :goto_2
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mLastFrequency:I
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$1800(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->tune(I)Z

    goto/16 :goto_1

    .line 776
    :cond_3
    const-string v0, "RadioPlayerService"

    const-string v0, "Phone is in IDLE state, will unmute FM Radio"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->setMute(I)Z

    goto :goto_2

    .line 783
    :cond_4
    const-string v0, "RadioPlayerService"

    const-string v0, "Open fmradio stack failed!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const-string v1, "com.miui.fmradio.openfailed"

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v2, v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V

    .line 785
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->stopSelf()V

    goto/16 :goto_1

    .line 802
    :pswitch_4
    if-ne p2, v5, :cond_5

    .line 803
    const-string v0, "RadioPlayerService"

    const-string v0, "FM radio set frequency failed!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const-string v1, "com.miui.fmradio.freqerror"

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1, v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 807
    :cond_5
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const-string v1, "com.miui.fmradio.tunesucceed"

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1, p3}, Lcom/miui/fmradio/FMRadioPlayerService;->access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V

    .line 808
    const-string v0, "RadioPlayerService"

    const-string v0, "FM radio set frequency succeed!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 813
    :pswitch_5
    const-string v0, "RadioPlayerService"

    const-string v0, "OnCommandCompleteListener : FM_CMD_SEEK"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    if-nez p2, :cond_6

    .line 815
    const-string v0, "RadioPlayerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Seek completed, frequency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const-string v1, "com.miui.fmradio.seeksucceed"

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1, p3}, Lcom/miui/fmradio/FMRadioPlayerService;->access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 818
    :cond_6
    const/4 v0, 0x2

    if-ne p2, v0, :cond_7

    .line 819
    const-string v0, "RadioPlayerService"

    const-string v0, "Seek opt reach limit"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const-string v1, "com.miui.fmradio.seeklimit"

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1, p3}, Lcom/miui/fmradio/FMRadioPlayerService;->access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 823
    :cond_7
    const-string v0, "RadioPlayerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Seek failed!, frequency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$5;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const-string v1, "com.miui.fmradio.seekfailed"

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1, p3}, Lcom/miui/fmradio/FMRadioPlayerService;->access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 832
    :cond_8
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 833
    const-string v0, "RadioPlayerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnCommandCompleteListener : FM_CMD_SET_VOLUME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
