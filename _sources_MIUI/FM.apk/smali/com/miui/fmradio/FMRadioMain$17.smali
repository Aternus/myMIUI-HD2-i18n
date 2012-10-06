.class Lcom/miui/fmradio/FMRadioMain$17;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FMRadioMain;->registerReceiverMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FMRadioMain;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FMRadioMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1649
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v8, 0x7f05003f

    const v7, 0x155cc

    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "freq"

    .line 1652
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Main ui message receiver received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1656
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.miui.fmradio.tunesucceed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1657
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$200(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1706
    :cond_0
    :goto_0
    return-void

    .line 1659
    :cond_1
    const-string v1, "com.miui.fmradio.seeksucceed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1660
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const-string v2, "freq"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mCounter:I
    invoke-static {v1, v2}, Lcom/miui/fmradio/FMRadioMain;->access$602(Lcom/miui/fmradio/FMRadioMain;I)I

    .line 1661
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$200(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1663
    :cond_2
    const-string v1, "com.miui.fmradio.seeklimit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1664
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const-string v2, "freq"

    const v2, 0x1a5e0

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mCounter:I
    invoke-static {v1, v2}, Lcom/miui/fmradio/FMRadioMain;->access$602(Lcom/miui/fmradio/FMRadioMain;I)I

    .line 1665
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$200(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1667
    :cond_3
    const-string v1, "com.miui.fmradio.seekfailed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1668
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const-string v2, "freq"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mCounter:I
    invoke-static {v1, v2}, Lcom/miui/fmradio/FMRadioMain;->access$602(Lcom/miui/fmradio/FMRadioMain;I)I

    .line 1669
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$200(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1671
    :cond_4
    const-string v1, "com.miui.fmradio.freqerror"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1672
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$200(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1674
    :cond_5
    const-string v1, "com.miui.fmradio.hwerror"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1675
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$200(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1677
    :cond_6
    const-string v1, "com.miui.fmradio.opensucceed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1678
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$200(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1680
    :cond_7
    const-string v1, "com.miui.fmradio.openfailed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1681
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$200(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1683
    :cond_8
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1684
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-static {v1}, Lcom/miui/fmradio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1685
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsManuallyExit:Z
    invoke-static {v1, v4}, Lcom/miui/fmradio/FMRadioMain;->access$3202(Lcom/miui/fmradio/FMRadioMain;Z)Z

    .line 1686
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v2, 0x7f05003e

    #calls: Lcom/miui/fmradio/FMRadioMain;->showNoticeDialog(II)V
    invoke-static {v1, v8, v2}, Lcom/miui/fmradio/FMRadioMain;->access$3300(Lcom/miui/fmradio/FMRadioMain;II)V

    .line 1688
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->turnOffFMRadio()V
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$3400(Lcom/miui/fmradio/FMRadioMain;)V

    goto/16 :goto_0

    .line 1690
    :cond_9
    const-string v1, "com.miui.fmradio.quitui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1691
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->turnOffFMRadio()V
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$3400(Lcom/miui/fmradio/FMRadioMain;)V

    .line 1692
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsManuallyExit:Z
    invoke-static {v1, v4}, Lcom/miui/fmradio/FMRadioMain;->access$3202(Lcom/miui/fmradio/FMRadioMain;Z)Z

    .line 1693
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v1}, Lcom/miui/fmradio/FMRadioMain;->finish()V

    goto/16 :goto_0

    .line 1694
    :cond_a
    const-string v1, "com.miui.fmradio.muteui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1695
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-static {}, Lcom/miui/fmradio/FMRadioUtils;->isFMRadioMute()Z

    move-result v2

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsMute:Z
    invoke-static {v1, v2}, Lcom/miui/fmradio/FMRadioMain;->access$1902(Lcom/miui/fmradio/FMRadioMain;Z)Z

    .line 1696
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsMute:Z
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioMain;->access$1900(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v4

    :goto_1
    #calls: Lcom/miui/fmradio/FMRadioMain;->displayOnOff(Z)V
    invoke-static {v1, v2}, Lcom/miui/fmradio/FMRadioMain;->access$3500(Lcom/miui/fmradio/FMRadioMain;Z)V

    .line 1697
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$200(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xf

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_b
    move v2, v6

    .line 1696
    goto :goto_1

    .line 1698
    :cond_c
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1699
    const-string v1, "state"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1700
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsManuallyExit:Z
    invoke-static {v1, v4}, Lcom/miui/fmradio/FMRadioMain;->access$3202(Lcom/miui/fmradio/FMRadioMain;Z)Z

    .line 1701
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v2, 0x7f05003d

    #calls: Lcom/miui/fmradio/FMRadioMain;->showNoticeDialog(II)V
    invoke-static {v1, v8, v2}, Lcom/miui/fmradio/FMRadioMain;->access$3300(Lcom/miui/fmradio/FMRadioMain;II)V

    .line 1703
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$17;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->turnOffFMRadio()V
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$3400(Lcom/miui/fmradio/FMRadioMain;)V

    goto/16 :goto_0
.end method
