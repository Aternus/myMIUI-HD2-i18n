.class Lcom/miui/fmradio/FMRadioMain$MainHandler;
.super Landroid/os/Handler;
.source "FMRadioMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FMRadioMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FMRadioMain;


# direct methods
.method private constructor <init>(Lcom/miui/fmradio/FMRadioMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmradio/FMRadioMain;Lcom/miui/fmradio/FMRadioMain$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1429
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FMRadioMain$MainHandler;-><init>(Lcom/miui/fmradio/FMRadioMain;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const-wide/16 v8, 0x7d0

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v3, "MainActivity"

    .line 1432
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1643
    :cond_0
    :goto_0
    return-void

    .line 1434
    :pswitch_0
    invoke-static {}, Lcom/miui/fmradio/FMRadioUtils;->getFMServiceStatus()I

    move-result v0

    .line 1435
    .local v0, ret:I
    const-string v1, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FM utils get service status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    if-eq v0, v4, :cond_1

    .line 1437
    const-string v1, "MainActivity"

    const-string v1, "service state is not ready, it will power on FM radio device"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v1, v4}, Lcom/miui/fmradio/FMRadioMain;->showDialog(I)V

    .line 1439
    invoke-static {}, Lcom/miui/fmradio/FMRadioUtils;->powerOnFMRadioDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1440
    const-string v1, "MainActivity"

    const-string v1, "can not power on, will finish()"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v1, v4}, Lcom/miui/fmradio/FMRadioMain;->removeDialog(I)V

    .line 1442
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v3, 0x7f050018

    invoke-virtual {v2, v3}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/miui/fmradio/FMRadioUtils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1443
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v1}, Lcom/miui/fmradio/FMRadioMain;->finish()V

    goto :goto_0

    .line 1447
    :cond_1
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsFMRadioEnabled:Z
    invoke-static {v1, v6}, Lcom/miui/fmradio/FMRadioMain;->access$1802(Lcom/miui/fmradio/FMRadioMain;Z)Z

    .line 1448
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V
    invoke-static {v1, v6}, Lcom/miui/fmradio/FMRadioMain;->access$1400(Lcom/miui/fmradio/FMRadioMain;Z)V

    goto :goto_0

    .line 1453
    .end local v0           #ret:I
    :pswitch_1
    const-string v1, "MainActivity"

    const-string v1, "FM open failed! Will finish()!"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v1, v4}, Lcom/miui/fmradio/FMRadioMain;->removeDialog(I)V

    .line 1455
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v3, 0x7f050018

    invoke-virtual {v2, v3}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/miui/fmradio/FMRadioUtils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1456
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v1}, Lcom/miui/fmradio/FMRadioMain;->finish()V

    goto :goto_0

    .line 1460
    :pswitch_2
    const-string v1, "MainActivity"

    const-string v1, "FM open succeed callback"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsFMRadioEnabled:Z
    invoke-static {v1, v6}, Lcom/miui/fmradio/FMRadioMain;->access$1802(Lcom/miui/fmradio/FMRadioMain;Z)Z

    .line 1462
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v1, v4}, Lcom/miui/fmradio/FMRadioMain;->removeDialog(I)V

    .line 1463
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V
    invoke-static {v1, v6}, Lcom/miui/fmradio/FMRadioMain;->access$1400(Lcom/miui/fmradio/FMRadioMain;Z)V

    goto/16 :goto_0

    .line 1467
    :pswitch_3
    const-string v1, "MainActivity"

    const-string v1, "FM tune succeed callback"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsMute:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$1900(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1469
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V
    invoke-static {v1, v6}, Lcom/miui/fmradio/FMRadioMain;->access$1400(Lcom/miui/fmradio/FMRadioMain;Z)V

    .line 1473
    :cond_2
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsSeekAllFininsh:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$1300(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsOnPauseCalled:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2000(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1475
    const-string v1, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Paused status saved at init frequency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mCounter:I
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioMain;->access$600(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsSeekAllFininsh:Z
    invoke-static {v1, v7}, Lcom/miui/fmradio/FMRadioMain;->access$1302(Lcom/miui/fmradio/FMRadioMain;Z)Z

    .line 1477
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->saveCurrentStatus()V
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2100(Lcom/miui/fmradio/FMRadioMain;)V

    goto/16 :goto_0

    .line 1482
    :cond_3
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsTuneSync:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2200(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mTuneSyncDirection:I
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2300(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v1

    if-nez v1, :cond_4

    .line 1484
    invoke-static {v7}, Lcom/miui/fmradio/FMRadioUtils;->seekFMRadioStation(I)V

    .line 1485
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsTuneSync:Z
    invoke-static {v1, v7}, Lcom/miui/fmradio/FMRadioMain;->access$2202(Lcom/miui/fmradio/FMRadioMain;Z)Z

    goto/16 :goto_0

    .line 1487
    :cond_4
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsTuneSync:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2200(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mTuneSyncDirection:I
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2300(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 1489
    invoke-static {v6}, Lcom/miui/fmradio/FMRadioUtils;->seekFMRadioStation(I)V

    .line 1490
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsTuneSync:Z
    invoke-static {v1, v7}, Lcom/miui/fmradio/FMRadioMain;->access$2202(Lcom/miui/fmradio/FMRadioMain;Z)Z

    goto/16 :goto_0

    .line 1495
    :pswitch_4
    const-string v1, "MainActivity"

    const-string v1, "FM Seek failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsSeekAll:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$1200(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1497
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v1, v7}, Lcom/miui/fmradio/FMRadioMain;->removeDialog(I)V

    .line 1503
    :goto_1
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsTuneSync:Z
    invoke-static {v1, v7}, Lcom/miui/fmradio/FMRadioMain;->access$2202(Lcom/miui/fmradio/FMRadioMain;Z)Z

    .line 1504
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsSeekAll:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$1200(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1506
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->updateDisplayPanel()V
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$900(Lcom/miui/fmradio/FMRadioMain;)V

    .line 1507
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mCounter:I
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$600(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v1

    invoke-static {v1}, Lcom/miui/fmradio/FMRadioUtils;->setFMRadioFrequency(I)V

    goto/16 :goto_0

    .line 1500
    :cond_5
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V
    invoke-static {v1, v6}, Lcom/miui/fmradio/FMRadioMain;->access$1400(Lcom/miui/fmradio/FMRadioMain;Z)V

    goto :goto_1

    .line 1513
    :pswitch_5
    const-string v1, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seek forward/backward callback, the new frequency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mCounter:I
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioMain;->access$600(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsTuneSync:Z
    invoke-static {v1, v7}, Lcom/miui/fmradio/FMRadioMain;->access$2202(Lcom/miui/fmradio/FMRadioMain;Z)Z

    .line 1517
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsSeekbackwardLongPressed:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2400(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1518
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->updateDisplayPanel()V
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$900(Lcom/miui/fmradio/FMRadioMain;)V

    .line 1519
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$200(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1521
    :cond_6
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsSeekforwardLongPressed:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2500(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1522
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->updateDisplayPanel()V
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$900(Lcom/miui/fmradio/FMRadioMain;)V

    .line 1523
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$200(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1527
    :cond_7
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsSeekAll:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$1200(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1528
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mListAdapter:Lcom/miui/fmradio/StationListAdapter;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$500(Lcom/miui/fmradio/FMRadioMain;)Lcom/miui/fmradio/StationListAdapter;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1529
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mListAdapter:Lcom/miui/fmradio/StationListAdapter;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$500(Lcom/miui/fmradio/FMRadioMain;)Lcom/miui/fmradio/StationListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mCounter:I
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioMain;->access$600(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/fmradio/StationListAdapter;->setPlayingFreq(I)V

    .line 1531
    :cond_8
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mSeekSaveCount:I
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioMain;->access$1500(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mCounter:I
    invoke-static {v3}, Lcom/miui/fmradio/FMRadioMain;->access$600(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/miui/fmradio/FMRadioUtils;->saveToDB(Landroid/content/Context;IILjava/lang/String;)V

    .line 1532
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$1508(Lcom/miui/fmradio/FMRadioMain;)I

    .line 1533
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mScanningDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$1100(Lcom/miui/fmradio/FMRadioMain;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v3, 0x7f050011

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mCounter:I
    invoke-static {v5}, Lcom/miui/fmradio/FMRadioMain;->access$600(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v5

    invoke-static {v5}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/miui/fmradio/FMRadioMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1536
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$200(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1538
    :cond_9
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2600(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1539
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z
    invoke-static {v1, v7}, Lcom/miui/fmradio/FMRadioMain;->access$2602(Lcom/miui/fmradio/FMRadioMain;Z)Z

    goto/16 :goto_0

    .line 1542
    :cond_a
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->updateDisplayPanel()V
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$900(Lcom/miui/fmradio/FMRadioMain;)V

    .line 1543
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V
    invoke-static {v1, v6}, Lcom/miui/fmradio/FMRadioMain;->access$1400(Lcom/miui/fmradio/FMRadioMain;Z)V

    goto/16 :goto_0

    .line 1550
    :pswitch_6
    const-string v1, "MainActivity"

    const-string v1, "Received SEEK_NEXT message"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsSeekAll:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$1200(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mCounter:I
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$600(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v1

    const v2, 0x1a5e0

    if-lt v1, v2, :cond_b

    .line 1555
    const-string v1, "MainActivity"

    const-string v1, "Seek reaching limit frequency"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v1, v7}, Lcom/miui/fmradio/FMRadioMain;->removeDialog(I)V

    goto/16 :goto_0

    .line 1561
    :cond_b
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mSeekSaveCount:I
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$1500(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_c

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsSeekAll:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$1200(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1562
    const-string v1, "MainActivity"

    const-string v1, "Scanning not be canceled, seek next station"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    invoke-static {v6}, Lcom/miui/fmradio/FMRadioUtils;->seekFMRadioStation(I)V

    .line 1565
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z
    invoke-static {v1, v6}, Lcom/miui/fmradio/FMRadioMain;->access$2602(Lcom/miui/fmradio/FMRadioMain;Z)Z

    goto/16 :goto_0

    .line 1568
    :cond_c
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mSeekSaveCount:I
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$1500(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 1569
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v1, v7}, Lcom/miui/fmradio/FMRadioMain;->removeDialog(I)V

    goto/16 :goto_0

    .line 1574
    :pswitch_7
    const-string v1, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seeking reaching limit , current frequency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mCounter:I
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioMain;->access$600(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsSeekAll:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$1200(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1576
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v1, v7}, Lcom/miui/fmradio/FMRadioMain;->removeDialog(I)V

    .line 1577
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v3, 0x7f050012

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mSeekSaveCount:I
    invoke-static {v5}, Lcom/miui/fmradio/FMRadioMain;->access$1500(Lcom/miui/fmradio/FMRadioMain;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/miui/fmradio/FMRadioMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1579
    :cond_d
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsSeekbackwardLongPressed:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2400(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsSeekforwardLongPressed:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2500(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1580
    :cond_e
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->updateDisplayPanel()V
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$900(Lcom/miui/fmradio/FMRadioMain;)V

    goto/16 :goto_0

    .line 1582
    :cond_f
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2600(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1583
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z
    invoke-static {v1, v7}, Lcom/miui/fmradio/FMRadioMain;->access$2602(Lcom/miui/fmradio/FMRadioMain;Z)Z

    goto/16 :goto_0

    .line 1586
    :cond_10
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->updateDisplayPanel()V
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$900(Lcom/miui/fmradio/FMRadioMain;)V

    .line 1587
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V
    invoke-static {v1, v6}, Lcom/miui/fmradio/FMRadioMain;->access$1400(Lcom/miui/fmradio/FMRadioMain;Z)V

    goto/16 :goto_0

    .line 1593
    :pswitch_8
    const-string v1, "MainActivity"

    const-string v1, "FM received hardware unknown error!"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V
    invoke-static {v1, v6}, Lcom/miui/fmradio/FMRadioMain;->access$1400(Lcom/miui/fmradio/FMRadioMain;Z)V

    goto/16 :goto_0

    .line 1598
    :pswitch_9
    const-string v1, "MainActivity"

    const-string v1, "FM received tune frequency error!"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    invoke-static {v7}, Lcom/miui/fmradio/FMRadioUtils;->setFMRadioMute(I)V

    .line 1601
    invoke-static {v6}, Lcom/miui/fmradio/FMRadioUtils;->setFMRadioMute(I)V

    .line 1602
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V
    invoke-static {v1, v6}, Lcom/miui/fmradio/FMRadioMain;->access$1400(Lcom/miui/fmradio/FMRadioMain;Z)V

    goto/16 :goto_0

    .line 1606
    :pswitch_a
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsLongPressed:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2700(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1607
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v1}, Lcom/miui/fmradio/FMRadioMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v6, v1, :cond_11

    .line 1609
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2900(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Vibrator;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->vibratePatternE3:[B
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioMain;->access$2800(Lcom/miui/fmradio/FMRadioMain;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Vibrator;->vibrateEx([B)V

    .line 1611
    :cond_11
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->changeFreqByStep(Z)V
    invoke-static {v1, v6}, Lcom/miui/fmradio/FMRadioMain;->access$3000(Lcom/miui/fmradio/FMRadioMain;Z)V

    goto/16 :goto_0

    .line 1616
    :pswitch_b
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsLongPressed:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2700(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1617
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v1}, Lcom/miui/fmradio/FMRadioMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v6, v1, :cond_12

    .line 1619
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2900(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Vibrator;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->vibratePatternE3:[B
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioMain;->access$2800(Lcom/miui/fmradio/FMRadioMain;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Vibrator;->vibrateEx([B)V

    .line 1621
    :cond_12
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->changeFreqByStep(Z)V
    invoke-static {v1, v7}, Lcom/miui/fmradio/FMRadioMain;->access$3000(Lcom/miui/fmradio/FMRadioMain;Z)V

    goto/16 :goto_0

    .line 1626
    :pswitch_c
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsSeekbackwardLongPressed:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2400(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1627
    invoke-static {v7}, Lcom/miui/fmradio/FMRadioUtils;->seekFMRadioStation(I)V

    .line 1628
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z
    invoke-static {v1, v6}, Lcom/miui/fmradio/FMRadioMain;->access$2602(Lcom/miui/fmradio/FMRadioMain;Z)Z

    goto/16 :goto_0

    .line 1633
    :pswitch_d
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mIsSeekforwardLongPressed:Z
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$2500(Lcom/miui/fmradio/FMRadioMain;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1634
    invoke-static {v6}, Lcom/miui/fmradio/FMRadioUtils;->seekFMRadioStation(I)V

    .line 1635
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z
    invoke-static {v1, v6}, Lcom/miui/fmradio/FMRadioMain;->access$2602(Lcom/miui/fmradio/FMRadioMain;Z)Z

    goto/16 :goto_0

    .line 1640
    :pswitch_e
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$MainHandler;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mOnOffButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioMain;->access$3100(Lcom/miui/fmradio/FMRadioMain;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
