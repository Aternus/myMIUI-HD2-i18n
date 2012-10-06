.class Lcom/android/phone/PhoneApp$1;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    const-string v10, "PhoneApp"

    .line 251
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 428
    .end local p0
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 258
    .restart local p0
    :sswitch_1
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 264
    :sswitch_2
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f09

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 266
    const-string v5, "PhoneApp"

    const-string v5, "Ignoring EVENT_SIM_NETWORK_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :cond_1
    const-string v5, "PhoneApp"

    const-string v5, "show sim depersonal panel"

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v2, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;)V

    .line 275
    .local v2, ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    invoke-virtual {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto :goto_0

    .line 285
    .end local v2           #ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    :sswitch_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$200()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "PhoneApp"

    const-string v5, "- updating in-call notification from handler..."

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_2
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0

    .line 290
    :sswitch_4
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto :goto_0

    .line 294
    :sswitch_5
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto :goto_0

    .line 298
    :sswitch_6
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v5, p0}, Lcom/android/phone/PhoneApp;->access$300(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 302
    .restart local p0
    :sswitch_7
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    .line 308
    :sswitch_8
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget v5, v5, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    if-eq v5, v7, :cond_3

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eq v5, v7, :cond_4

    :cond_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eq v5, v7, :cond_6

    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget v5, v5, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    if-ne v5, v7, :cond_6

    :cond_4
    move v0, v9

    .line 312
    .local v0, changed:Z
    :goto_1
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iput v6, v5, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 313
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v9}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    .line 315
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 316
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget v5, v5, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    if-ne v5, v7, :cond_5

    .line 317
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 318
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/phone/InCallScreen;->onHandsetOrHeadsetClick(Z)V

    .line 324
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->isInCallScreenForeground()Z
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 325
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->onBluetoothAvailabilityChanged()V

    goto/16 :goto_0

    .end local v0           #changed:Z
    :cond_6
    move v0, v8

    .line 308
    goto :goto_1

    .line 320
    .restart local v0       #changed:Z
    :cond_7
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_2

    .line 336
    .end local v0           #changed:Z
    :sswitch_9
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 338
    .local v3, phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 339
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_a

    .line 341
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v5}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 342
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/phone/InCallScreen;->onBluetoothClick(Z)V

    .line 350
    :goto_3
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->isInCallScreenForeground()Z
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 351
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->onHeadsetAvailabilityChanged()V

    .line 356
    :cond_8
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5, v3}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 359
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mTtyEnabled:Z
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 360
    const/16 v5, 0xe

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/PhoneApp$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/PhoneApp$1;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 344
    :cond_9
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_3

    .line 347
    :cond_a
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/phone/InCallScreen;->onHandsetOrHeadsetClick(Z)V

    goto :goto_3

    .line 368
    .end local v3           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_a
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v6, "READY"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 372
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 373
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 374
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v5, v11}, Lcom/android/phone/PhoneApp;->access$702(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;

    .line 376
    :cond_b
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 377
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 378
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v11}, Lcom/android/phone/PhoneApp;->access$802(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 390
    :sswitch_b
    const/4 v1, 0x0

    .line 391
    .local v1, inDockMode:Z
    sget v5, Lcom/android/phone/PhoneApp;->mDockState:I

    if-eq v5, v9, :cond_c

    sget v5, Lcom/android/phone/PhoneApp;->mDockState:I

    if-ne v5, v7, :cond_d

    .line 393
    :cond_c
    const/4 v1, 0x1

    .line 398
    :cond_d
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 399
    .restart local v3       #phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v5, :cond_f

    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v5}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v5

    if-nez v5, :cond_f

    .line 402
    :cond_e
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v9}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 404
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 405
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->requestUpdateTouchUi()V

    .line 412
    .end local v1           #inDockMode:Z
    .end local v3           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :cond_f
    :sswitch_c
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 413
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)I

    move-result v4

    .line 417
    .local v4, ttyMode:I
    :goto_4
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 415
    .end local v4           #ttyMode:I
    :cond_10
    const/4 v4, 0x0

    .restart local v4       #ttyMode:I
    goto :goto_4

    .line 421
    .end local v4           #ttyMode:I
    :sswitch_d
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/android/phone/PhoneApp;->access$1000(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 425
    :sswitch_e
    iget-object v5, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/android/phone/PhoneApp;->access$1100(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 251
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xc -> :sswitch_0
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_1
        0x12 -> :sswitch_8
        0x34 -> :sswitch_6
        0x35 -> :sswitch_7
    .end sparse-switch
.end method
