.class public Lnet/cactii/flash2/FlashDevice;
.super Ljava/lang/Object;
.source "FlashDevice.java"


# static fields
.field private static flashDevice:Ljava/lang/String;

.field private static instance:Lnet/cactii/flash2/FlashDevice;

.field private static useCameraInterface:Z

.field private static useDeathRay:Z

.field private static useZeppDeathRay:Z

.field private static useZeppOn:Z

.field private static valueOn:I


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mFlashMode:I

.field private mParams:Landroid/hardware/Camera$Parameters;

.field private mWriter:Ljava/io/FileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v5, "zepp"

    const-string v4, "sholes"

    .line 33
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "supersonic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "glacier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    sput-boolean v0, Lnet/cactii/flash2/FlashDevice;->useDeathRay:Z

    .line 36
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "zepp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "sholes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lnet/cactii/flash2/FlashDevice;->useZeppDeathRay:Z

    .line 39
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "zepp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mione"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "ace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v0, v2

    :goto_2
    sput-boolean v0, Lnet/cactii/flash2/FlashDevice;->useZeppOn:Z

    .line 43
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "crespo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "p990"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "p999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "galaxys2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v0, v2

    :goto_3
    sput-boolean v0, Lnet/cactii/flash2/FlashDevice;->useCameraInterface:Z

    .line 47
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "sholes"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "jordan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    const-string v0, "/sys/class/leds/spotlight/brightness"

    :goto_4
    sput-object v0, Lnet/cactii/flash2/FlashDevice;->flashDevice:Ljava/lang/String;

    .line 49
    sget-boolean v0, Lnet/cactii/flash2/FlashDevice;->useZeppOn:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x64

    :goto_5
    sput v0, Lnet/cactii/flash2/FlashDevice;->valueOn:I

    return-void

    :cond_4
    move v0, v3

    .line 33
    goto/16 :goto_0

    :cond_5
    move v0, v3

    .line 36
    goto :goto_1

    :cond_6
    move v0, v3

    .line 39
    goto :goto_2

    :cond_7
    move v0, v3

    .line 43
    goto :goto_3

    .line 47
    :cond_8
    const-string v0, "/sys/class/leds/flashlight/brightness"

    goto :goto_4

    :cond_9
    move v0, v2

    .line 49
    goto :goto_5
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lnet/cactii/flash2/FlashDevice;->mWriter:Ljava/io/FileWriter;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lnet/cactii/flash2/FlashDevice;->mFlashMode:I

    .line 55
    iput-object v1, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lnet/cactii/flash2/FlashDevice;->valueOn:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/cactii/flash2/FlashDevice;->flashDevice:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lnet/cactii/flash2/FlashDevice;->useCameraInterface:Z

    .line 65
    :cond_0
    return-void
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lnet/cactii/flash2/FlashDevice;
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    const-class v0, Lnet/cactii/flash2/FlashDevice;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/cactii/flash2/FlashDevice;->instance:Lnet/cactii/flash2/FlashDevice;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lnet/cactii/flash2/FlashDevice;

    invoke-direct {v1, p0}, Lnet/cactii/flash2/FlashDevice;-><init>(Landroid/content/Context;)V

    sput-object v1, Lnet/cactii/flash2/FlashDevice;->instance:Lnet/cactii/flash2/FlashDevice;

    .line 71
    :cond_0
    sget-object v1, Lnet/cactii/flash2/FlashDevice;->instance:Lnet/cactii/flash2/FlashDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getFlashMode()I
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnet/cactii/flash2/FlashDevice;->mFlashMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFlashMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, -0x1

    .line 76
    monitor-enter p0

    move v1, p1

    .line 77
    .local v1, value:I
    packed-switch p1, :pswitch_data_0

    .line 89
    :goto_0
    :pswitch_0
    :try_start_0
    sget-boolean v2, Lnet/cactii/flash2/FlashDevice;->useCameraInterface:Z

    if-eqz v2, :cond_5

    .line 90
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 91
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    .line 93
    :cond_0
    if-nez v1, :cond_4

    .line 94
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mParams:Landroid/hardware/Camera$Parameters;

    .line 95
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mParams:Landroid/hardware/Camera$Parameters;

    const-string v3, "off"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 97
    if-eq p1, v4, :cond_1

    .line 98
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 99
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 100
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    .line 121
    :cond_1
    :goto_1
    iput p1, p0, Lnet/cactii/flash2/FlashDevice;->mFlashMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    monitor-exit p0

    return-void

    .line 79
    :pswitch_1
    const/4 v1, 0x0

    .line 80
    goto :goto_0

    .line 82
    :pswitch_2
    :try_start_1
    sget-boolean v2, Lnet/cactii/flash2/FlashDevice;->useDeathRay:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    move v1, v2

    .line 83
    :goto_2
    sget-boolean v2, Lnet/cactii/flash2/FlashDevice;->useZeppDeathRay:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lnet/cactii/flash2/FlashDevice;->useDeathRay:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    move v1, v2

    .line 84
    :cond_2
    goto :goto_0

    .line 82
    :cond_3
    const/16 v2, 0x80

    move v1, v2

    goto :goto_2

    .line 86
    :pswitch_3
    sget v1, Lnet/cactii/flash2/FlashDevice;->valueOn:I

    goto :goto_0

    .line 103
    :cond_4
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mParams:Landroid/hardware/Camera$Parameters;

    .line 104
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mParams:Landroid/hardware/Camera$Parameters;

    const-string v3, "torch"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 106
    iget v2, p0, Lnet/cactii/flash2/FlashDevice;->mFlashMode:I

    if-eq v2, v4, :cond_1

    .line 107
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 122
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 123
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t open flash device: /sys/class/leds/flashlight/brightness"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 111
    :cond_5
    :try_start_3
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mWriter:Ljava/io/FileWriter;

    if-nez v2, :cond_6

    .line 112
    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Lnet/cactii/flash2/FlashDevice;->flashDevice:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mWriter:Ljava/io/FileWriter;

    .line 114
    :cond_6
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mWriter:Ljava/io/FileWriter;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mWriter:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 116
    if-nez p1, :cond_1

    .line 117
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mWriter:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 118
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mWriter:Ljava/io/FileWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 77
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
