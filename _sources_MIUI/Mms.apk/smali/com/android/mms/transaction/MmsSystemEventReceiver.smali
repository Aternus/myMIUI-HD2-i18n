.class public Lcom/android/mms/transaction/MmsSystemEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsSystemEventReceiver.java"


# static fields
.field private static sInstance:Lcom/android/mms/transaction/MmsSystemEventReceiver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsInService:Z

.field private mListening:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object p1, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    .line 97
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v1, f:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CONTENT_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    new-instance v2, Lcom/android/mms/transaction/MmsSystemEventReceiver$1;

    iget-object v3, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver$1;-><init>(Lcom/android/mms/transaction/MmsSystemEventReceiver;Landroid/os/Handler;)V

    .line 110
    .local v2, settingsObserver:Landroid/database/ContentObserver;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "mobile_data"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 114
    const-string v3, "always_enable_mms"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    return-void
.end method

.method public static getInstance()Lcom/android/mms/transaction/MmsSystemEventReceiver;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sInstance:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sInstance:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sInstance:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    goto :goto_0
.end method

.method private wakeUpService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 121
    const-string v0, "wakeUpService: start transaction service ..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    return-void
.end method


# virtual methods
.method public isMmsAllowed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 74
    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "always_enable_mms"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMmsAvailable()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mIsInService:Z

    return v0
.end method

.method public listenForMmsAvailability()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mListening:Z

    .line 88
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 129
    const-string v0, "Intent received: %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string v1, "android.intent.action.CONTENT_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const-string v0, "deleted_contents"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    .line 135
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 138
    const-string v1, "ACTION_SERVICE_STATE_CHANGED: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v5

    :goto_1
    iput-boolean v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mIsInService:Z

    .line 140
    invoke-virtual {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->updateMmsAvailability()V

    goto :goto_0

    :cond_2
    move v0, v4

    .line 139
    goto :goto_1

    .line 141
    :cond_3
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p1, v4, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public unlistenForMmsAvailability()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mListening:Z

    .line 92
    return-void
.end method

.method public updateMmsAvailability()V
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mListening:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mIsInService:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->isMmsAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;)V

    .line 84
    :cond_0
    return-void
.end method
