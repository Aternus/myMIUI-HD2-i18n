.class public Lcom/android/settings/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    }
.end annotation


# static fields
.field private static GRACE_PERIOD_TO_SHOW_DIALOGS_IN_FOREGROUND:J

.field private static INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mEventRedirector:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

.field private mForegroundActivity:Landroid/app/Activity;

.field private mInitialized:Z

.field private mLastScan:J

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->GRACE_PERIOD_TO_SHOW_DIALOGS_IN_FOREGROUND:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    .line 63
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mState:I

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    .line 307
    return-void
.end method

.method private dispatchScanningStateChanged(Z)V
    .locals 4
    .parameter "started"

    .prologue
    .line 272
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 273
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;

    .line 274
    .local v0, callback:Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 276
    .end local v0           #callback:Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 2
    .parameter

    .prologue
    .line 88
    const-class v0, Lcom/android/settings/bluetooth/LocalBluetoothManager;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;-><init>()V

    sput-object v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 93
    :cond_0
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->init(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    .line 99
    :goto_0
    return-object v0

    .line 97
    :cond_1
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->init(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 99
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private init(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 104
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mInitialized:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 122
    :goto_0
    return v0

    .line 105
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mInitialized:Z

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 111
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 112
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 117
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mEventRedirector:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    .line 118
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mEventRedirector:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->start()V

    .line 120
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move v0, v1

    .line 122
    goto :goto_0
.end method

.method private syncBluetoothState()V
    .locals 2

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    move v0, v1

    .line 239
    .local v0, bluetoothState:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothStateInt(I)V

    .line 240
    return-void

    .line 232
    .end local v0           #bluetoothState:I
    :cond_0
    const/16 v1, 0xa

    move v0, v1

    goto :goto_0

    .line 236
    :cond_1
    const/high16 v0, -0x8000

    .restart local v0       #bluetoothState:I
    goto :goto_0
.end method


# virtual methods
.method public getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public getBluetoothState()I
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mState:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->syncBluetoothState()V

    .line 216
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mState:I

    return v0
.end method

.method public getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDockAutoConnectSetting(Ljava/lang/String;)Z
    .locals 3
    .parameter "addr"

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getForegroundActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public hasDockAutoConnectSetting(Ljava/lang/String;)Z
    .locals 3
    .parameter "addr"

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onScanningStateChanged(Z)V

    .line 268
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->dispatchScanningStateChanged(Z)V

    .line 269
    return-void
.end method

.method persistSelectedDeviceInPicker(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceAddress"

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 355
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_selected_device"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 357
    const-string v1, "last_selected_device_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 359
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 360
    return-void
.end method

.method public registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onCallBackRegistered(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V

    .line 161
    monitor-exit v0

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeDockAutoConnectSetting(Ljava/lang/String;)V
    .locals 3
    .parameter "addr"

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 379
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 381
    return-void
.end method

.method public saveDockAutoConnectSetting(Ljava/lang/String;Z)V
    .locals 3
    .parameter "addr"
    .parameter "autoConnect"

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 373
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 374
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 375
    return-void
.end method

.method public setBluetoothEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 243
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    move v0, v1

    .line 247
    .local v0, wasSetStateSuccessful:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 248
    if-eqz p1, :cond_1

    const/16 v1, 0xb

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothStateInt(I)V

    .line 260
    :goto_2
    return-void

    .line 243
    .end local v0           #wasSetStateSuccessful:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 248
    .restart local v0       #wasSetStateSuccessful:Z
    :cond_1
    const/16 v1, 0xd

    goto :goto_1

    .line 258
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->syncBluetoothState()V

    goto :goto_2
.end method

.method setBluetoothStateInt(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/16 v1, 0xc

    .line 220
    iput p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mState:I

    .line 221
    if-eq p1, v1, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onBluetoothStateChanged(Z)V

    .line 226
    :cond_1
    return-void

    .line 223
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setForegroundActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    .line 142
    :cond_0
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    .line 143
    return-void
.end method

.method public shouldShowDialogInForeground(Ljava/lang/String;)Z
    .locals 12
    .parameter "deviceAddress"

    .prologue
    .line 315
    iget-object v8, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    .line 350
    :goto_0
    return v8

    .line 317
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 318
    .local v0, currentTimeMillis:J
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 321
    .local v7, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v8, "discoverable_end_timestamp"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 323
    .local v4, lastDiscoverableEndTime:J
    sget-wide v8, Lcom/android/settings/bluetooth/LocalBluetoothManager;->GRACE_PERIOD_TO_SHOW_DIALOGS_IN_FOREGROUND:J

    add-long/2addr v8, v4

    cmp-long v8, v8, v0

    if-lez v8, :cond_1

    .line 325
    const/4 v8, 0x1

    goto :goto_0

    .line 329
    :cond_1
    iget-object v8, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 330
    const/4 v8, 0x1

    goto :goto_0

    .line 331
    :cond_2
    const-string v8, "last_discovering_time"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sget-wide v10, Lcom/android/settings/bluetooth/LocalBluetoothManager;->GRACE_PERIOD_TO_SHOW_DIALOGS_IN_FOREGROUND:J

    add-long/2addr v8, v10

    cmp-long v8, v8, v0

    if-lez v8, :cond_3

    .line 333
    const/4 v8, 0x1

    goto :goto_0

    .line 337
    :cond_3
    if-eqz p1, :cond_4

    .line 338
    const-string v8, "last_selected_device"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 341
    .local v6, lastSelectedDevice:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 342
    const-string v8, "last_selected_device_time"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 344
    .local v2, lastDeviceSelectedTime:J
    sget-wide v8, Lcom/android/settings/bluetooth/LocalBluetoothManager;->GRACE_PERIOD_TO_SHOW_DIALOGS_IN_FOREGROUND:J

    add-long/2addr v8, v2

    cmp-long v8, v8, v0

    if-lez v8, :cond_4

    .line 346
    const/4 v8, 0x1

    goto :goto_0

    .line 350
    .end local v2           #lastDeviceSelectedTime:J
    .end local v6           #lastSelectedDevice:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public showError(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 7
    .parameter "device"
    .parameter "titleResId"
    .parameter "messageResId"

    .prologue
    const/4 v6, 0x1

    .line 280
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v3, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 281
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    const/4 v2, 0x0

    .line 282
    .local v2, name:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 283
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 285
    :cond_0
    if-nez v2, :cond_1

    .line 286
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0900fb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, p3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 295
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    .line 305
    :goto_1
    return-void

    .line 289
    .end local v1           #message:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 303
    .restart local v1       #message:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public startScanning(Z)V
    .locals 7
    .parameter "force"

    .prologue
    .line 171
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->dispatchScanningStateChanged(Z)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    if-nez p1, :cond_3

    .line 183
    iget-wide v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLastScan:J

    const-wide/32 v5, 0x493e0

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v2

    .line 189
    .local v2, sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_3

    .line 190
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 191
    .local v1, sink:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 198
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sink:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLastScan:J

    goto :goto_0
.end method

.method public stopScanning()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 208
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 167
    monitor-exit v0

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
