.class public Lcom/android/voicedialer/BluetoothVoiceDialerActivity;
.super Landroid/app/Activity;
.source "BluetoothVoiceDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;,
        Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;,
        Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;,
        Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener;,
        Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;,
        Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;,
        Lcom/android/voicedialer/BluetoothVoiceDialerActivity$FallbackRunnable;,
        Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;
    }
.end annotation


# static fields
.field private static final mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

.field private static final mPhoneTypeChoiceEngine:Lcom/android/voicedialer/PhoneTypeChoiceRecognizerEngine;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAvailableChoices:[Landroid/content/Intent;

.field private mBluetoothAudioState:I

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

.field private mBluetoothVoiceVolume:I

.field private mChoiceClient:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;

.field private mChosenAction:Landroid/content/Intent;

.field private mCommandClient:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

.field private mFallbackRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mMicFlasher:Ljava/lang/Runnable;

.field private mReceiver:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;

.field private mRecognizerThread:Ljava/lang/Thread;

.field private mState:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTtsParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingForScoConnection:Z

.field private mWaitingForTts:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/android/voicedialer/CommandRecognizerEngine;

    invoke-direct {v0}, Lcom/android/voicedialer/CommandRecognizerEngine;-><init>()V

    sput-object v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    .line 153
    new-instance v0, Lcom/android/voicedialer/PhoneTypeChoiceRecognizerEngine;

    invoke-direct {v0}, Lcom/android/voicedialer/PhoneTypeChoiceRecognizerEngine;-><init>()V

    sput-object v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mPhoneTypeChoiceEngine:Lcom/android/voicedialer/PhoneTypeChoiceRecognizerEngine;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    .line 372
    new-instance v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$1;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    iput-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    .line 942
    new-instance v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$4;

    invoke-direct {v0, p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$4;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    iput-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->exitActivity()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWaitingForTts:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWaitingForTts:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothVoiceVolume:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothVoiceVolume:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWaitingForScoConnection:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWaitingForScoConnection:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothAudioState:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothAudioState:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)[Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;[Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    invoke-static {p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->spaceOutDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mChosenAction:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mChosenAction:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->speakChoices()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->startActivityHelp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mCommandClient:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    invoke-static {p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700()Lcom/android/voicedialer/CommandRecognizerEngine;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mChoiceClient:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;

    return-object v0
.end method

.method static synthetic access$2900()Lcom/android/voicedialer/PhoneTypeChoiceRecognizerEngine;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mPhoneTypeChoiceEngine:Lcom/android/voicedialer/PhoneTypeChoiceRecognizerEngine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->playSound(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->onSpeechCompletion()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method private acquireWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 928
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 929
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 930
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "BluetoothVoiceDialer"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 931
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 933
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private exitActivity()V
    .locals 4

    .prologue
    .line 819
    monitor-enter p0

    .line 820
    :try_start_0
    iget v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 821
    const-string v0, "VoiceDialerActivity"

    const-string v1, "exitActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I

    .line 823
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;

    const-string v1, "utteranceId"

    const-string v2, "goodbye"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const v1, 0x7f040015

    invoke-virtual {p0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 833
    new-instance v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$FallbackRunnable;

    invoke-direct {v0, p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$FallbackRunnable;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    iput-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;

    .line 834
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 836
    :cond_0
    monitor-exit p0

    .line 837
    return-void

    .line 836
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 840
    if-nez p1, :cond_0

    move-object v1, v3

    .line 844
    :goto_0
    return-object v1

    .line 841
    :cond_0
    invoke-virtual {p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, arg:Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 843
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app.voicedialer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v1, v3

    goto :goto_0
.end method

.method private listenForChoice()V
    .locals 3

    .prologue
    .line 804
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenForChoice(): MICROPHONE_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "microphone"

    invoke-direct {p0, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I

    .line 808
    new-instance v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$3;

    invoke-direct {v0, p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$3;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    iput-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    .line 815
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 816
    return-void
.end method

.method private listenForCommand()V
    .locals 3

    .prologue
    .line 787
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command(): MICROPHONE_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "microphone"

    invoke-direct {p0, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CONTACTS_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "contacts"

    invoke-direct {p0, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I

    .line 792
    new-instance v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$2;

    invoke-direct {v0, p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$2;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    iput-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    .line 800
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 801
    return-void
.end method

.method private static newFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "name"

    .prologue
    .line 848
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSpeechCompletion()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 358
    iget v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->listenForCommand()V

    .line 370
    :cond_1
    :goto_0
    return-void

    .line 360
    :cond_2
    iget v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 361
    invoke-direct {p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->listenForChoice()V

    goto :goto_0

    .line 362
    :cond_3
    iget v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 363
    iput v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I

    .line 364
    invoke-virtual {p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->finish()V

    goto :goto_0

    .line 365
    :cond_4
    iget v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 366
    iput v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I

    .line 367
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mChosenAction:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->startActivityHelp(Landroid/content/Intent;)V

    .line 368
    invoke-virtual {p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->finish()V

    goto :goto_0
.end method

.method private playSound(I)I
    .locals 7
    .parameter "toneType"

    .prologue
    const/16 v6, 0x12c

    .line 852
    const/4 v2, 0x1

    .line 855
    .local v2, msecDelay:I
    iget-object v4, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v4, :cond_0

    .line 856
    iget-object v4, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v4, p1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 857
    invoke-static {v2, v6}, Ljava/lang/StrictMath;->max(II)I

    move-result v2

    .line 860
    :cond_0
    iget-object v4, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 861
    const/16 v1, 0x96

    .line 862
    .local v1, VIBRATOR_TIME:I
    const/16 v0, 0x96

    .line 863
    .local v0, VIBRATOR_GUARD_TIME:I
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    .line 864
    .local v3, vibrator:Landroid/os/Vibrator;
    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 865
    invoke-static {v2, v6}, Ljava/lang/StrictMath;->max(II)I

    move-result v2

    .line 870
    .end local v0           #VIBRATOR_GUARD_TIME:I
    .end local v1           #VIBRATOR_TIME:I
    .end local v3           #vibrator:Landroid/os/Vibrator;
    :cond_1
    return v2
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 938
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 940
    :cond_0
    return-void
.end method

.method private static spaceOutDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "sentenceDisplay"

    .prologue
    const-string v7, " "

    .line 756
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 757
    .local v0, buffer:[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .local v1, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 759
    .local v2, buildingNumber:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 760
    .local v5, l:I
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 761
    aget-char v3, v0, v4

    .line 762
    .local v3, c:C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 763
    if-eqz v2, :cond_0

    .line 764
    const-string v6, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    :cond_0
    const/4 v2, 0x1

    .line 767
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 760
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 768
    :cond_1
    const/16 v6, 0x20

    if-ne v3, v6, :cond_3

    .line 769
    if-eqz v2, :cond_2

    .line 770
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 772
    :cond_2
    const-string v6, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 775
    :cond_3
    const/4 v2, 0x0

    .line 776
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 779
    .end local v3           #c:C
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private speakChoices()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const-string v10, "sentence"

    const-string v8, " "

    .line 713
    const-string v6, "VoiceDialerActivity"

    const-string v7, "speakChoices"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I

    .line 716
    iget-object v6, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string v7, "sentence"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->spaceOutDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 725
    .local v3, sentenceSpoken:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    iget-object v6, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;

    array-length v1, v6

    .line 729
    .local v1, count:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 730
    sub-int v6, v1, v9

    if-ne v2, v6, :cond_0

    .line 731
    const-string v6, " or "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    :goto_1
    iget-object v6, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;

    aget-object v6, v6, v2

    const-string v7, "sentence"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 737
    .local v4, tmpSentence:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 738
    .local v5, words:[Ljava/lang/String;
    array-length v6, v5

    sub-int/2addr v6, v9

    aget-object v6, v5, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 733
    .end local v4           #tmpSentence:Ljava/lang/String;
    .end local v5           #words:[Ljava/lang/String;
    :cond_0
    const-string v6, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 740
    :cond_1
    iget-object v6, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;

    const-string v7, "utteranceId"

    const-string v8, "choices"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-object v6, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v9, v8}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 745
    return-void
.end method

.method private startActivityHelp(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 783
    invoke-virtual {p0, p1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 784
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 179
    const-string v0, "VoiceDialerActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;

    .line 182
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 183
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x2

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 185
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 955
    const-string v0, "VoiceDialerActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 957
    return-void
.end method

.method protected onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 188
    const-string v2, "VoiceDialerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 191
    invoke-direct {p0, p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->acquireWakeLock(Landroid/content/Context;)V

    .line 193
    iput v6, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I

    .line 194
    iput-object v5, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mChosenAction:Landroid/content/Intent;

    .line 195
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v5, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 200
    const/high16 v1, 0x8

    .line 201
    .local v1, flags:I
    invoke-virtual {p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 204
    const v2, 0x103000b

    invoke-virtual {p0, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->setTheme(I)V

    .line 205
    const v2, 0x7f040005

    invoke-virtual {p0, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->setTitle(I)V

    .line 206
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->setContentView(I)V

    .line 207
    const v2, 0x7f050003

    invoke-virtual {p0, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 208
    const v2, 0x7f050005

    invoke-virtual {p0, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 209
    const v2, 0x7f050004

    invoke-virtual {p0, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-static {p0}, Lcom/android/voicedialer/RecognizerLogger;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    const v2, 0x7f050002

    invoke-virtual {p0, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f040010

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 216
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 217
    .local v0, audioStateFilter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    new-instance v2, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Lcom/android/voicedialer/BluetoothVoiceDialerActivity$1;)V

    iput-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mReceiver:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;

    .line 219
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mReceiver:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 221
    sget-object v2, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    const-string v3, "contacts"

    invoke-direct {p0, v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/voicedialer/CommandRecognizerEngine;->setContactsFile(Ljava/io/File;)V

    .line 222
    sget-object v2, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    invoke-virtual {v2, v7}, Lcom/android/voicedialer/CommandRecognizerEngine;->setMinimizeResults(Z)V

    .line 223
    sget-object v2, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    invoke-virtual {v2, v6}, Lcom/android/voicedialer/CommandRecognizerEngine;->setAllowOpenEntries(Z)V

    .line 224
    new-instance v2, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    invoke-direct {v2, p0, v5}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Lcom/android/voicedialer/BluetoothVoiceDialerActivity$1;)V

    iput-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mCommandClient:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    .line 225
    new-instance v2, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;

    invoke-direct {v2, p0, v5}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Lcom/android/voicedialer/BluetoothVoiceDialerActivity$1;)V

    iput-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mChoiceClient:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;

    .line 227
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothAudioState:I

    .line 229
    invoke-static {p0}, Landroid/bluetooth/BluetoothHeadset;->isBluetoothVoiceDialingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    iput-boolean v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWaitingForScoConnection:Z

    .line 234
    new-instance v2, Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    invoke-direct {v2, p0, v3}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 237
    iput-boolean v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWaitingForTts:Z

    .line 238
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    new-instance v3, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;

    invoke-direct {v3, p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    invoke-direct {v2, p0, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 239
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;

    .line 240
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;

    const-string v3, "streamType"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->finish()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v6, "VoiceDialerActivity"

    .line 874
    const-string v1, "VoiceDialerActivity"

    const-string v1, "onStop"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    monitor-enter p0

    .line 877
    const/16 v1, 0x8

    :try_start_0
    iput v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I

    .line 878
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 885
    :cond_0
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x6

    iget v3, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothVoiceVolume:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 887
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 890
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    .line 891
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition()Z

    .line 892
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->close()V

    .line 893
    iput-object v4, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 897
    :cond_1
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 898
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 900
    :try_start_1
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 904
    :goto_0
    iput-object v4, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    .line 908
    :cond_2
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 909
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 911
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_3

    .line 912
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 913
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 914
    iput-object v4, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 916
    :cond_3
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mReceiver:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 918
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 920
    invoke-direct {p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->releaseWakeLock()V

    .line 924
    invoke-virtual {p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->finish()V

    .line 925
    return-void

    .line 878
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 901
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 902
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop mRecognizerThread.join exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
