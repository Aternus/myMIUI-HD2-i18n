.class public Lcom/miui/player/helper/ShakeListener;
.super Ljava/lang/Object;
.source "ShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final ACCELATION_FACTOR_X:F = 1.0f

.field public static final ACCELATION_FACTOR_Y:F = 0.45f

.field private static final ACTIVE_INTERVAL:J = 0x3e8L

.field public static final SHORT_SHAKE:J = 0x64L

.field public static final TAG:Ljava/lang/String; = "com.miui.player.helper.ShakeListener"


# instance fields
.field private mIsFirstSensorEvent:Z

.field private mIsRegister:Z

.field private mLastActiveTime:J

.field private mLastTime:J

.field private mLastX:F

.field private mLastY:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mService:Lcom/miui/player/MediaPlaybackService;

.field private mSoundEffectId:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Lcom/miui/player/MediaPlaybackService;)V
    .locals 5
    .parameter "service"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/helper/ShakeListener;->mIsFirstSensorEvent:Z

    .line 34
    iput-wide v3, p0, Lcom/miui/player/helper/ShakeListener;->mLastTime:J

    .line 36
    iput-wide v3, p0, Lcom/miui/player/helper/ShakeListener;->mLastActiveTime:J

    .line 38
    iput v1, p0, Lcom/miui/player/helper/ShakeListener;->mLastX:F

    .line 40
    iput v1, p0, Lcom/miui/player/helper/ShakeListener;->mLastY:F

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/helper/ShakeListener;->mSoundPool:Landroid/media/SoundPool;

    .line 46
    iput v2, p0, Lcom/miui/player/helper/ShakeListener;->mSoundEffectId:I

    .line 48
    iput-boolean v2, p0, Lcom/miui/player/helper/ShakeListener;->mIsRegister:Z

    .line 51
    iput-object p1, p0, Lcom/miui/player/helper/ShakeListener;->mService:Lcom/miui/player/MediaPlaybackService;

    .line 52
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Lcom/miui/player/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/miui/player/helper/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 53
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 133
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/miui/player/helper/ShakeListener;->mSoundPool:Landroid/media/SoundPool;

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/helper/ShakeListener;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "/system/media/audio/ui/MusicShake.ogg"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/player/helper/ShakeListener;->mSoundEffectId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 137
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "paramSensor"
    .parameter "paramInt"

    .prologue
    .line 58
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 20
    .parameter "sensorEvent"

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShakeListener;->mService:Lcom/miui/player/MediaPlaybackService;

    move-object v3, v0

    const-string v4, "shake"

    invoke-static {v3, v4}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShakeListener;->mService:Lcom/miui/player/MediaPlaybackService;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_2

    .line 67
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/player/helper/ShakeListener;->mIsFirstSensorEvent:Z

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 72
    .local v13, currentTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/helper/ShakeListener;->mLastTime:J

    move-wide v3, v0

    sub-long v3, v13, v3

    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 73
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object v3, v0

    const/4 v4, 0x0

    aget v15, v3, v4

    .line 74
    .local v15, currentX:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object v3, v0

    const/4 v4, 0x1

    aget v16, v3, v4

    .line 75
    .local v16, currentY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/helper/ShakeListener;->mIsFirstSensorEvent:Z

    move v3, v0

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/helper/ShakeListener;->mLastActiveTime:J

    move-wide v3, v0

    sub-long v3, v13, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 76
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/helper/ShakeListener;->mLastX:F

    move v3, v0

    sub-float v3, v15, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 77
    .local v17, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/helper/ShakeListener;->mLastY:F

    move v3, v0

    sub-float v3, v16, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 78
    .local v18, deltaY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShakeListener;->mService:Lcom/miui/player/MediaPlaybackService;

    move-object v3, v0

    const-string v4, "shake_degree"

    invoke-static {v3, v4}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsInteger(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 79
    .local v12, accuracy:I
    int-to-float v3, v12

    const/high16 v4, 0x3f80

    mul-float v10, v3, v4

    .line 80
    .local v10, accelationX:F
    int-to-float v3, v12

    const v4, 0x3ee66666

    mul-float v11, v3, v4

    .line 81
    .local v11, accelationY:F
    cmpl-float v3, v17, v10

    if-lez v3, :cond_3

    cmpl-float v3, v18, v11

    if-lez v3, :cond_3

    .line 82
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    new-instance v19, Landroid/content/Intent;

    const-string v3, "com.miui.player.musicservicecommand.next"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v19, nextIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShakeListener;->mService:Lcom/miui/player/MediaPlaybackService;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/miui/player/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/player/helper/ShakeListener;->mLastActiveTime:J

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShakeListener;->mSoundPool:Landroid/media/SoundPool;

    move-object v3, v0

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/helper/ShakeListener;->mSoundEffectId:I

    move v3, v0

    if-eqz v3, :cond_3

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShakeListener;->mSoundPool:Landroid/media/SoundPool;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/helper/ShakeListener;->mSoundEffectId:I

    move v4, v0

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 92
    .end local v10           #accelationX:F
    .end local v11           #accelationY:F
    .end local v12           #accuracy:I
    .end local v17           #deltaX:F
    .end local v18           #deltaY:F
    .end local v19           #nextIntent:Landroid/content/Intent;
    :cond_3
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/helper/ShakeListener;->mLastX:F

    .line 93
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/helper/ShakeListener;->mLastY:F

    .line 94
    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/player/helper/ShakeListener;->mLastTime:J

    .line 95
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/player/helper/ShakeListener;->mIsFirstSensorEvent:Z

    goto/16 :goto_0
.end method

.method public onUpdatePref()V
    .locals 2

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/helper/ShakeListener;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/ShakeListener;->mService:Lcom/miui/player/MediaPlaybackService;

    const-string v1, "shake"

    invoke-static {v0, v1}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/miui/player/helper/ShakeListener;->register()V

    .line 129
    :goto_0
    monitor-exit p0

    .line 130
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/helper/ShakeListener;->unregister()V

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/player/helper/ShakeListener;->mIsRegister:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/helper/ShakeListener;->mService:Lcom/miui/player/MediaPlaybackService;

    const-string v2, "shake"

    invoke-static {v1, v2}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/miui/player/helper/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 104
    .local v0, localSensor:Landroid/hardware/Sensor;
    iget-object v1, p0, Lcom/miui/player/helper/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/helper/ShakeListener;->mIsRegister:Z

    .line 106
    const-string v1, "com.miui.player.helper.ShakeListener"

    const-string v2, "register success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0           #localSensor:Landroid/hardware/Sensor;
    :cond_0
    monitor-exit p0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/miui/player/helper/ShakeListener;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/helper/ShakeListener;->mSoundPool:Landroid/media/SoundPool;

    .line 144
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/player/helper/ShakeListener;->mIsRegister:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/player/helper/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/helper/ShakeListener;->mIsRegister:Z

    .line 116
    const-string v0, "com.miui.player.helper.ShakeListener"

    const-string v1, "unregister success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    monitor-exit p0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
