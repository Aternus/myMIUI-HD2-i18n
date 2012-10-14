.class public Lcom/android/gallery/app/SystemReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, action:Ljava/lang/String;
    const-string v2, "Gallery/SystemReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got intent with action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    invoke-static {}, Lcom/android/gallery/data/MediaCache;->getInstance()Lcom/android/gallery/data/MediaCache;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/gallery/data/MediaCache;->setScanningFlag(Z)V

    .line 22
    invoke-static {}, Lcom/android/gallery/data/MediaCache;->getInstance()Lcom/android/gallery/data/MediaCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery/data/MediaCache;->notifyAllScanFinished()V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25
    invoke-static {}, Lcom/android/gallery/data/MediaCache;->getInstance()Lcom/android/gallery/data/MediaCache;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/gallery/data/MediaCache;->setMediaEjectedFlag(Z)V

    .line 26
    invoke-static {}, Lcom/android/gallery/data/MediaCache;->getInstance()Lcom/android/gallery/data/MediaCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery/data/MediaCache;->notifyAllMediaMounted()V

    goto :goto_0

    .line 28
    :cond_2
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 29
    invoke-static {}, Lcom/android/gallery/data/MediaCache;->getInstance()Lcom/android/gallery/data/MediaCache;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/gallery/data/MediaCache;->setMediaEjectedFlag(Z)V

    .line 30
    invoke-static {}, Lcom/android/gallery/data/MediaCache;->getInstance()Lcom/android/gallery/data/MediaCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery/data/MediaCache;->notifyAllMediaUnmounted()V

    goto :goto_0

    .line 32
    :cond_3
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 33
    invoke-static {}, Lcom/android/gallery/data/MediaCache;->getInstance()Lcom/android/gallery/data/MediaCache;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/gallery/data/MediaCache;->setMediaEjectedFlag(Z)V

    .line 34
    invoke-static {}, Lcom/android/gallery/data/MediaCache;->getInstance()Lcom/android/gallery/data/MediaCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery/data/MediaCache;->notifyAllMediaEjected()V

    goto :goto_0

    .line 36
    :cond_4
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 37
    invoke-static {}, Lcom/android/gallery/data/MediaCache;->getInstance()Lcom/android/gallery/data/MediaCache;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/gallery/data/MediaCache;->setScanningFlag(Z)V

    goto :goto_0

    .line 39
    :cond_5
    const-string v2, "android.intent.action.PRIVACY_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 42
    .local v1, am:Landroid/app/ActivityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0
.end method
