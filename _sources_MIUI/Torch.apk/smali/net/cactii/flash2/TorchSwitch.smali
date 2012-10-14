.class public Lnet/cactii/flash2/TorchSwitch;
.super Landroid/content/BroadcastReceiver;
.source "TorchSwitch.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    new-instance v0, Lnet/cactii/flash2/TorchSwitch$1;

    invoke-direct {v0, p0}, Lnet/cactii/flash2/TorchSwitch$1;-><init>(Lnet/cactii/flash2/TorchSwitch;)V

    iput-object v0, p0, Lnet/cactii/flash2/TorchSwitch;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private TorchServiceRunning(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 79
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 81
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 83
    .local v4, svcList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_0

    move v5, v7

    .line 91
    :goto_0
    return v5

    .line 85
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 86
    .local v2, serviceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 87
    .local v3, serviceName:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".TorchService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".RootTorchService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .end local v2           #serviceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v3           #serviceName:Landroid/content/ComponentName;
    :cond_3
    move v5, v7

    .line 91
    goto :goto_0
.end method

.method static synthetic access$000(Lnet/cactii/flash2/TorchSwitch;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lnet/cactii/flash2/TorchSwitch;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const-string v10, "period"

    const-string v9, "net.cactii.flash2.EXTRA_DISABLE_NOTIFICATION"

    const-string v8, "strobe"

    const-string v7, "bright"

    .line 46
    iput-object p1, p0, Lnet/cactii/flash2/TorchSwitch;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/cactii/flash2/TorchSwitch;->mPrefs:Landroid/content/SharedPreferences;

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, p1}, Lnet/cactii/flash2/TorchSwitch;->TorchServiceRunning(Landroid/content/Context;)Z

    move-result v0

    .line 54
    const-string v1, "net.cactii.flash2.EXTRA_ENABLED"

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 55
    if-eq v0, v1, :cond_0

    .line 56
    const-string v0, "net.cactii.flash2.EXTRA_DISABLE_NOTIFICATION"

    invoke-virtual {p2, v9, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 57
    const-string v2, "bright"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lnet/cactii/flash2/TorchSwitch;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "bright"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 59
    const-string v3, "strobe"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, p0, Lnet/cactii/flash2/TorchSwitch;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "strobe"

    invoke-interface {v4, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    or-int/2addr v3, v4

    .line 61
    const-string v4, "period"

    const/16 v4, 0xc8

    invoke-virtual {p2, v10, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 63
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lnet/cactii/flash2/TorchService;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    if-nez v1, :cond_2

    .line 65
    invoke-virtual {p1, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 76
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v6

    .line 54
    goto :goto_0

    .line 67
    :cond_2
    const-string v1, "bright"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    const-string v1, "strobe"

    invoke-virtual {v5, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    const-string v1, "period"

    invoke-virtual {v5, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v1, "net.cactii.flash2.EXTRA_DISABLE_NOTIFICATION"

    invoke-virtual {v5, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    iget-object v0, p0, Lnet/cactii/flash2/TorchSwitch;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
