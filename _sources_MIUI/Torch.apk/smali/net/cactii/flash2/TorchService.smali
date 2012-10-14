.class public Lnet/cactii/flash2/TorchService;
.super Landroid/app/Service;
.source "TorchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/cactii/flash2/TorchService$IntentReceiver;,
        Lnet/cactii/flash2/TorchService$WrapperTask;
    }
.end annotation


# instance fields
.field private mBright:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mReceiver:Lnet/cactii/flash2/TorchService$IntentReceiver;

.field private mStrobePeriod:I

.field private mStrobeRunnable:Ljava/lang/Runnable;

.field private mStrobeTask:Lnet/cactii/flash2/TorchService$WrapperTask;

.field private mStrobeTimer:Ljava/util/Timer;

.field private mTorchTask:Ljava/util/TimerTask;

.field private mTorchTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lnet/cactii/flash2/TorchService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lnet/cactii/flash2/TorchService;->mBright:Z

    return v0
.end method

.method static synthetic access$100(Lnet/cactii/flash2/TorchService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lnet/cactii/flash2/TorchService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public Reshedule(I)V
    .locals 6
    .parameter "period"

    .prologue
    .line 129
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mStrobeTask:Lnet/cactii/flash2/TorchService$WrapperTask;

    invoke-virtual {v0}, Lnet/cactii/flash2/TorchService$WrapperTask;->cancel()Z

    .line 130
    new-instance v0, Lnet/cactii/flash2/TorchService$WrapperTask;

    iget-object v1, p0, Lnet/cactii/flash2/TorchService;->mStrobeRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, p0, v1}, Lnet/cactii/flash2/TorchService$WrapperTask;-><init>(Lnet/cactii/flash2/TorchService;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/cactii/flash2/TorchService;->mStrobeTask:Lnet/cactii/flash2/TorchService$WrapperTask;

    .line 132
    div-int/lit8 v0, p1, 0x4

    iput v0, p0, Lnet/cactii/flash2/TorchService;->mStrobePeriod:I

    .line 133
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mStrobeTimer:Ljava/util/Timer;

    iget-object v1, p0, Lnet/cactii/flash2/TorchService;->mStrobeTask:Lnet/cactii/flash2/TorchService$WrapperTask;

    const-wide/16 v2, 0x0

    iget v4, p0, Lnet/cactii/flash2/TorchService;->mStrobePeriod:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 134
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 48
    const-string v0, "notification"

    .line 49
    .local v0, ns:Ljava/lang/String;
    invoke-virtual {p0}, Lnet/cactii/flash2/TorchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lnet/cactii/flash2/TorchService;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p0, v0}, Lnet/cactii/flash2/TorchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lnet/cactii/flash2/TorchService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 52
    new-instance v1, Lnet/cactii/flash2/TorchService$1;

    invoke-direct {v1, p0}, Lnet/cactii/flash2/TorchService$1;-><init>(Lnet/cactii/flash2/TorchService;)V

    iput-object v1, p0, Lnet/cactii/flash2/TorchService;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v1, Lnet/cactii/flash2/TorchService$2;

    invoke-direct {v1, p0}, Lnet/cactii/flash2/TorchService$2;-><init>(Lnet/cactii/flash2/TorchService;)V

    iput-object v1, p0, Lnet/cactii/flash2/TorchService;->mTorchTask:Ljava/util/TimerTask;

    .line 60
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lnet/cactii/flash2/TorchService;->mTorchTimer:Ljava/util/Timer;

    .line 62
    new-instance v1, Lnet/cactii/flash2/TorchService$3;

    invoke-direct {v1, p0}, Lnet/cactii/flash2/TorchService$3;-><init>(Lnet/cactii/flash2/TorchService;)V

    iput-object v1, p0, Lnet/cactii/flash2/TorchService;->mStrobeRunnable:Ljava/lang/Runnable;

    .line 79
    new-instance v1, Lnet/cactii/flash2/TorchService$WrapperTask;

    iget-object v2, p0, Lnet/cactii/flash2/TorchService;->mStrobeRunnable:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2}, Lnet/cactii/flash2/TorchService$WrapperTask;-><init>(Lnet/cactii/flash2/TorchService;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lnet/cactii/flash2/TorchService;->mStrobeTask:Lnet/cactii/flash2/TorchService$WrapperTask;

    .line 81
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lnet/cactii/flash2/TorchService;->mStrobeTimer:Ljava/util/Timer;

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 119
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mReceiver:Lnet/cactii/flash2/TorchService$IntentReceiver;

    invoke-virtual {p0, v0}, Lnet/cactii/flash2/TorchService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/cactii/flash2/TorchService;->stopForeground(Z)V

    .line 121
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mTorchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 122
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mStrobeTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 123
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/cactii/flash2/FlashDevice;->instance(Landroid/content/Context;)Lnet/cactii/flash2/FlashDevice;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/cactii/flash2/FlashDevice;->setFlashMode(I)V

    .line 124
    invoke-virtual {p0}, Lnet/cactii/flash2/TorchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "torch_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.cactii.flash2.TORCH_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/cactii/flash2/TorchService;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const v8, 0x7f07001b

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 87
    const-string v0, "TorchRoot"

    const-string v1, "Starting torch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-nez p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lnet/cactii/flash2/TorchService;->stopSelf()V

    .line 90
    :cond_0
    const-string v0, "bright"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnet/cactii/flash2/TorchService;->mBright:Z

    .line 91
    const-string v0, "strobe"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    const-string v0, "period"

    const/16 v1, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lnet/cactii/flash2/TorchService;->mStrobePeriod:I

    .line 93
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mStrobeTimer:Ljava/util/Timer;

    iget-object v1, p0, Lnet/cactii/flash2/TorchService;->mStrobeTask:Lnet/cactii/flash2/TorchService$WrapperTask;

    iget v4, p0, Lnet/cactii/flash2/TorchService;->mStrobePeriod:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 98
    :goto_0
    new-instance v0, Lnet/cactii/flash2/TorchService$IntentReceiver;

    invoke-direct {v0, p0}, Lnet/cactii/flash2/TorchService$IntentReceiver;-><init>(Lnet/cactii/flash2/TorchService;)V

    iput-object v0, p0, Lnet/cactii/flash2/TorchService;->mReceiver:Lnet/cactii/flash2/TorchService$IntentReceiver;

    .line 99
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mReceiver:Lnet/cactii/flash2/TorchService$IntentReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "net.cactii.flash2.SET_STROBE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lnet/cactii/flash2/TorchService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f02000a

    invoke-virtual {p0, v8}, Lnet/cactii/flash2/TorchService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lnet/cactii/flash2/TorchService;->mNotification:Landroid/app/Notification;

    .line 103
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v8}, Lnet/cactii/flash2/TorchService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lnet/cactii/flash2/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 105
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mNotification:Landroid/app/Notification;

    const/16 v1, 0x22

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 107
    const-string v0, "net.cactii.flash2.EXTRA_DISABLE_NOTIFICATION"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lnet/cactii/flash2/TorchService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 111
    :cond_1
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v6, v0}, Lnet/cactii/flash2/TorchService;->startForeground(ILandroid/app/Notification;)V

    .line 112
    invoke-virtual {p0}, Lnet/cactii/flash2/TorchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "torch_state"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.cactii.flash2.TORCH_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/cactii/flash2/TorchService;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    return v7

    .line 95
    :cond_2
    iget-object v0, p0, Lnet/cactii/flash2/TorchService;->mTorchTimer:Ljava/util/Timer;

    iget-object v1, p0, Lnet/cactii/flash2/TorchService;->mTorchTask:Ljava/util/TimerTask;

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method
