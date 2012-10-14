.class public Lcom/miui/fmradio/FMRadioPlayer;
.super Ljava/lang/Object;
.source "FMRadioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/FMRadioPlayer$EventHandler;,
        Lcom/miui/fmradio/FMRadioPlayer$OnErrorListener;,
        Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;,
        Lcom/miui/fmradio/FMRadioPlayer$FMRadioPlayerOPT;
    }
.end annotation


# static fields
.field public static final FMRADIO_AUDIO_MODE_MONO:I = 0x1

.field public static final FMRADIO_AUDIO_MODE_STEREO:I = 0x0

.field public static final FMRADIO_AUDIO_TARGET_ANALOG:I = 0x4

.field public static final FMRADIO_AUDIO_TARGET_I2S:I = 0x2

.field public static final FMRADIO_AUDIO_TARGET_NONE:I = 0x0

.field public static final FMRADIO_BAND_EUROPE_USA:I = 0x0

.field public static final FMRADIO_BAND_JAPAN:I = 0x1

.field public static final FMRADIO_EMPHASIS_FILTER_50_USEC:I = 0x1

.field public static final FMRADIO_EMPHASIS_FILTER_75_USEC:I = 0x2

.field public static final FMRADIO_EMPHASIS_FILTER_NONE:I = 0x0

.field public static final FMRADIO_MUTE:I = 0x0

.field public static final FMRADIO_MUTE_ATTENUATE:I = 0x2

.field public static final FMRADIO_SEEK_DIRECTION_DOWN:I = 0x0

.field public static final FMRADIO_SEEK_DIRECTION_UP:I = 0x1

.field public static final FMRADIO_UNMUTE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RadioPlayer"


# instance fields
.field private mEventHandler:Lcom/miui/fmradio/FMRadioPlayer$EventHandler;

.field private mNativeContext:I

.field private mOnCommandCompleteListener:Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;

.field private mOnErrorListener:Lcom/miui/fmradio/FMRadioPlayer$OnErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "fmradio_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 24
    const-string v1, "RadioPlayer"

    const-string v2, "Looper = Looper.myLooper()!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v1, Lcom/miui/fmradio/FMRadioPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/miui/fmradio/FMRadioPlayer$EventHandler;-><init>(Lcom/miui/fmradio/FMRadioPlayer;Lcom/miui/fmradio/FMRadioPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/fmradio/FMRadioPlayer;->mEventHandler:Lcom/miui/fmradio/FMRadioPlayer$EventHandler;

    .line 35
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/miui/fmradio/FMRadioPlayer;->native_setup(Ljava/lang/Object;)V

    .line 36
    return-void

    .line 26
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    new-instance v1, Lcom/miui/fmradio/FMRadioPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/miui/fmradio/FMRadioPlayer$EventHandler;-><init>(Lcom/miui/fmradio/FMRadioPlayer;Lcom/miui/fmradio/FMRadioPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/fmradio/FMRadioPlayer;->mEventHandler:Lcom/miui/fmradio/FMRadioPlayer$EventHandler;

    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/fmradio/FMRadioPlayer;->mEventHandler:Lcom/miui/fmradio/FMRadioPlayer$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/fmradio/FMRadioPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/miui/fmradio/FMRadioPlayer;->mNativeContext:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/fmradio/FMRadioPlayer;)Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayer;->mOnCommandCompleteListener:Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;

    return-object v0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIII)V
    .locals 4
    .parameter "fmradio_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "value"

    .prologue
    .line 235
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/fmradio/FMRadioPlayer;

    .line 237
    .local v1, mp:Lcom/miui/fmradio/FMRadioPlayer;
    if-nez v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v2, v1, Lcom/miui/fmradio/FMRadioPlayer;->mEventHandler:Lcom/miui/fmradio/FMRadioPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, v1, Lcom/miui/fmradio/FMRadioPlayer;->mEventHandler:Lcom/miui/fmradio/FMRadioPlayer$EventHandler;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/miui/fmradio/FMRadioPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 243
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Lcom/miui/fmradio/FMRadioPlayer;->mEventHandler:Lcom/miui/fmradio/FMRadioPlayer$EventHandler;

    invoke-virtual {v2, v0}, Lcom/miui/fmradio/FMRadioPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public native close()Z
.end method

.method public native currentFreq()Z
.end method

.method public native disableAudioTarget(I)Z
.end method

.method public native enableAudioTarget(I)Z
.end method

.method public finalizeSelf()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioPlayer;->native_finalize()V

    return-void
.end method

.method public native getAudioMode()Z
.end method

.method public native getBand()Z
.end method

.method public native getEmphasisFilter()Z
.end method

.method public native getVolume()Z
.end method

.method public native isMute()Z
.end method

.method public native open()Z
.end method

.method public native powerOffDevice()Z
.end method

.method public native powerOnDevice()Z
.end method

.method public native seek(I)Z
.end method

.method public native setAudioMode(I)Z
.end method

.method public native setBand(I)Z
.end method

.method public native setEmphasisFilter(I)Z
.end method

.method public native setMute(I)Z
.end method

.method public setOnCommandCompleteListener(Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioPlayer;->mOnCommandCompleteListener:Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;

    .line 96
    return-void
.end method

.method public setOnErrorListener(Lcom/miui/fmradio/FMRadioPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioPlayer;->mOnErrorListener:Lcom/miui/fmradio/FMRadioPlayer$OnErrorListener;

    .line 113
    return-void
.end method

.method public native setVolume(I)Z
.end method

.method public native stopSeek()Z
.end method

.method public native tune(I)Z
.end method
