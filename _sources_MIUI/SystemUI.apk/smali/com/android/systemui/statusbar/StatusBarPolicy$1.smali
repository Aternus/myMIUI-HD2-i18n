.class Lcom/android/systemui/statusbar/StatusBarPolicy$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 546
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 549
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateBattery(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$100(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 554
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$200(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 556
    :cond_2
    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 557
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$300(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 559
    :cond_3
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 560
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->onBatteryLow(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$400(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 562
    :cond_4
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 564
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->onBatteryOkay(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$500(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 566
    :cond_6
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 570
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$600(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 572
    :cond_8
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 575
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateWifi(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$700(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 577
    :cond_a
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 579
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateGps(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$800(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 581
    :cond_c
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 583
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateVolume()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$900(Lcom/android/systemui/statusbar/StatusBarPolicy;)V

    goto/16 :goto_0

    .line 585
    :cond_e
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 586
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateSimState(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1000(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 588
    :cond_f
    const-string v1, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 589
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateTTY(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1100(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 591
    :cond_10
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 594
    :cond_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateConnectivity(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1200(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 596
    :cond_12
    const-string v1, "android.intent.action.PRIVACY_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 597
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updatePrivacyMode(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1300(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 599
    :cond_13
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 600
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateHeadset(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1400(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 602
    :cond_14
    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "com.htc.net.wimax.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "com.htc.net.wimax.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    :cond_15
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/StatusBarPolicy;->updateWiMAX(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/StatusBarPolicy;->access$1500(Lcom/android/systemui/statusbar/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
