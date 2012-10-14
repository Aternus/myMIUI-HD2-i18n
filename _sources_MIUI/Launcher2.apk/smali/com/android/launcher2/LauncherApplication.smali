.class public Lcom/android/launcher2/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# instance fields
.field private final RESERVE_EXTERNAL_MEMORY:I

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mModel:Lcom/android/launcher2/LauncherModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 31
    const/high16 v0, 0x500

    iput v0, p0, Lcom/android/launcher2/LauncherApplication;->RESERVE_EXTERNAL_MEMORY:I

    return-void
.end method


# virtual methods
.method getIconCache()Lcom/android/launcher2/IconCache;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mIconCache:Lcom/android/launcher2/IconCache;

    return-object v0
.end method

.method getLauncher()Lcom/android/launcher2/Launcher;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const-wide/32 v2, 0x400000

    invoke-virtual {v1, v2, v3}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 36
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    sget-boolean v2, Landroid/os/Build;->IS_RICH_MEMORY_DEVICE:Z

    if-eqz v2, :cond_0

    const-wide/32 v2, 0xa000000

    :goto_0
    invoke-virtual {v1, v2, v3}, Ldalvik/system/VMRuntime;->reserveExternalMemory(J)V

    .line 39
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 41
    new-instance v1, Lcom/android/launcher2/IconCache;

    invoke-direct {v1, p0}, Lcom/android/launcher2/IconCache;-><init>(Lcom/android/launcher2/LauncherApplication;)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 42
    new-instance v1, Lcom/android/launcher2/LauncherModel;

    iget-object v2, p0, Lcom/android/launcher2/LauncherApplication;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/LauncherModel;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/IconCache;)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    return-void

    .line 36
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    const-wide/32 v2, 0x5000000

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 65
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    return-void
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;
    .locals 1
    .parameter "launcher"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/launcher2/LauncherApplication;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 70
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/LauncherModel;->initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method
