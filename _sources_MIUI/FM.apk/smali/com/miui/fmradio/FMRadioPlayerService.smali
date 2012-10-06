.class public Lcom/miui/fmradio/FMRadioPlayerService;
.super Landroid/app/Service;
.source "FMRadioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/FMRadioPlayerService$FMStateReady;,
        Lcom/miui/fmradio/FMRadioPlayerService$FMStateInitED;,
        Lcom/miui/fmradio/FMRadioPlayerService$FMStateInit;,
        Lcom/miui/fmradio/FMRadioPlayerService$FMStateUNInit;,
        Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    }
.end annotation


# static fields
.field private static final ACTION_AIRPLANE_MODE_CHANGED_MSG:I = 0x1

.field private static final ACTION_AIRPLANE_MODE_POWER_OFF:I = 0x10

.field private static final ACTION_DEINIT_FIRMWARE:I = 0x7

.field private static final ACTION_HEADSET_SPEAKER_SWITCH:I = 0x12

.field private static final ACTION_INIT_FIRMWARE:I = 0x4

.field private static final ACTION_POWEROFF_FMBT:I = 0x3

.field private static final ACTION_POWERON_FMBT:I = 0x2

.field private static final ACTION_SEEK_CHANNEL:I = 0x9

.field private static final ACTION_SET_BAND:I = 0x5

.field private static final ACTION_SET_DEMPHERSIZE:I = 0x6

.field private static final ACTION_SET_MUTE:I = 0xb

.field private static final ACTION_SET_UNMUTE:I = 0xc

.field private static final ACTION_SET_VOLUME:I = 0xa

.field private static final ACTION_SET_VOLUME_DOWN:I = 0xe

.field private static final ACTION_SET_VOLUME_UP:I = 0xd

.field private static final ACTION_SWITCHOFF_TIMEOUT:I = 0x11

.field private static final ACTION_TUNE_CHANNEL:I = 0x8

.field private static final AIRPLANE_FM_OFF_WAITING_TIME:I = 0xbb8

.field public static final FMRADIO_END_RUNNING:Ljava/lang/String; = "com.miui.fmradio.end.running"

.field public static final FMRADIO_MUTE:Ljava/lang/String; = "com.miui.fmradio.mute"

.field public static final FMRADIO_QUIT:Ljava/lang/String; = "com.miui.fmradio.quit"

.field public static final FMRADIO_SEEK_NEXT:Ljava/lang/String; = "com.miui.fmradio.seeknext"

.field public static final FMRADIO_SEEK_PREVIOUS:Ljava/lang/String; = "com.miui.fmradio.seekprevious"

.field public static final FMRADIO_START_RUNNING:Ljava/lang/String; = "com.miui.fmradio.start.running"

.field public static final FM_HW_ERROR_FRQ:Ljava/lang/String; = "com.miui.fmradio.freqerror"

.field public static final FM_HW_ERROR_UNKNOWN:Ljava/lang/String; = "com.miui.fmradio.hwerror"

.field public static final FM_OPEN_FAILED:Ljava/lang/String; = "com.miui.fmradio.openfailed"

.field public static final FM_OPEN_SUCCEED:Ljava/lang/String; = "com.miui.fmradio.opensucceed"

.field public static final FM_RADIO_MUTE:Ljava/lang/String; = "com.miui.fmradio.muteui"

.field public static final FM_RADIO_QUIT:Ljava/lang/String; = "com.miui.fmradio.quitui"

.field public static final FM_ROUTE_HEADSET:Ljava/lang/String; = "com.miui.fmradio.routeheadset"

.field public static final FM_ROUTE_LOUDSPEAKER:Ljava/lang/String; = "com.miui.fmradio.routeloudspeaker"

.field public static final FM_SEEK_FAILED:Ljava/lang/String; = "com.miui.fmradio.seekfailed"

.field public static final FM_SEEK_SUCCEED:Ljava/lang/String; = "com.miui.fmradio.seeksucceed"

.field public static final FM_SEEK_SUCCEED_AND_REACHLIMIT:Ljava/lang/String; = "com.miui.fmradio.seeklimit"

.field public static final FM_SWITCH_OFF_TIMEOUT:Ljava/lang/String; = "com.miui.fmradio.switchoff.timeout"

.field public static final FM_TUNE_SUCCEED:Ljava/lang/String; = "com.miui.fmradio.tunesucceed"

.field public static final FM_VOLUME_CHANGE:Ljava/lang/String; = "com.miui.fmradio.volume.change"

.field public static final FM_VOLUME_DOWN_KEY_DOWN:I = 0x0

.field public static final FM_VOLUME_DOWN_KEY_UP:I = 0x1

.field public static final FM_VOLUME_UP_KEY_DOWN:I = 0x2

.field public static final FM_VOLUME_UP_KEY_UP:I = 0x3

.field private static final HEADSET_PLUG_STATE_CHANGED_MSG:I = 0x0

.field private static final NOTIFICATION_ID:I = 0x1e240

.field private static final PREF_FM_AUDIO_ROUTING:Ljava/lang/String; = "pref_fm_audio_routing"

.field public static final ROUTE_HEADSET:I = 0x0

.field public static final ROUTE_SPEAKER:I = 0x1

.field public static final SERVICE_INIT:I = 0x0

.field public static final SERVICE_INITED:I = 0x1

.field public static final SERVICE_READY:I = 0x2

.field public static final SERVICE_STANDBY:I = 0x3

.field public static final SERVICE_UNINIT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RadioPlayerService"

.field private static final TIMEOUT_TO_POWER_OFF:I = 0x493e0

.field private static final VOLUME_LEVEL:I = 0xe

.field private static final VOLUME_STEP:I = 0x5


# instance fields
.field private mAdditionalMessage:Landroid/widget/TextView;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioMgr:Landroid/media/AudioManager;

.field private final mBinder:Lcom/miui/fmradio/IFMRadioPlayerService$Stub;

.field private final mCommandCompllistener:Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;

.field private mFMAudioRouting:I

.field private mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;

.field private mFMSwitchOffFlag:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsPoweroffCalled:Z

.field private mLastFrequency:I

.field private mLevel:Landroid/widget/ProgressBar;

.field private mNM:Landroid/app/NotificationManager;

.field private mPeriodicPending:Landroid/app/PendingIntent;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneState:I

.field private mPref:Landroid/content/SharedPreferences;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerStreamIcon:Landroid/widget/ImageView;

.field private mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

.field private mTitle:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mVolume:I

.field private mVolumeIndex:I

.field private mVolumeView:Landroid/view/View;

.field private misMuted:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 81
    iput-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;

    .line 82
    iput-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    .line 85
    const v0, 0x155cc

    iput v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mLastFrequency:I

    .line 86
    iput v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I

    .line 87
    iput-boolean v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->misMuted:Z

    .line 88
    iput-boolean v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mIsPoweroffCalled:Z

    .line 92
    iput-boolean v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mFMSwitchOffFlag:Z

    .line 103
    iput v3, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolume:I

    .line 105
    iput v3, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeIndex:I

    .line 122
    iput v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPhoneState:I

    .line 129
    new-instance v0, Lcom/miui/fmradio/FMRadioPlayerService$1;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FMRadioPlayerService$1;-><init>(Lcom/miui/fmradio/FMRadioPlayerService;)V

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 158
    iput-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 268
    new-instance v0, Lcom/miui/fmradio/FMRadioPlayerService$3;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FMRadioPlayerService$3;-><init>(Lcom/miui/fmradio/FMRadioPlayerService;)V

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 603
    new-instance v0, Lcom/miui/fmradio/FMRadioPlayerService$4;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FMRadioPlayerService$4;-><init>(Lcom/miui/fmradio/FMRadioPlayerService;)V

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;

    .line 733
    new-instance v0, Lcom/miui/fmradio/FMRadioPlayerService$5;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FMRadioPlayerService$5;-><init>(Lcom/miui/fmradio/FMRadioPlayerService;)V

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mCommandCompllistener:Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;

    .line 846
    new-instance v0, Lcom/miui/fmradio/FMRadioPlayerService$6;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FMRadioPlayerService$6;-><init>(Lcom/miui/fmradio/FMRadioPlayerService;)V

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mBinder:Lcom/miui/fmradio/IFMRadioPlayerService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/fmradio/FMRadioPlayerService;Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/fmradio/FMRadioPlayerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPhoneState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/miui/fmradio/FMRadioPlayerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mIsPoweroffCalled:Z

    return p1
.end method

.method static synthetic access$102(Lcom/miui/fmradio/FMRadioPlayerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPhoneState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/fmradio/FMRadioPlayerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FMRadioPlayerService;->listenPhoneState(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/fmradio/FMRadioPlayerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioPlayerService;->unregisterBroadcastListener()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/fmradio/FMRadioPlayerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FMRadioPlayerService;->showNotification(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/fmradio/FMRadioPlayerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioPlayerService;->registerBroadcastListener()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/fmradio/FMRadioPlayerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FMRadioPlayerService;->audioPrepare(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/fmradio/FMRadioPlayerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FMRadioPlayerService;->adjustVolumeUpOrDown(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/fmradio/FMRadioPlayerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mLastFrequency:I

    return v0
.end method

.method static synthetic access$1900(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPeriodicPending:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/fmradio/FMRadioPlayerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mFMSwitchOffFlag:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/fmradio/FMRadioPlayerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mFMSwitchOffFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/fmradio/FMRadioPlayerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I

    return v0
.end method

.method static synthetic access$402(Lcom/miui/fmradio/FMRadioPlayerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/fmradio/FMRadioPlayerService;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/miui/fmradio/FMRadioPlayerService;->turnOnOffFmAudio(ZI)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/fmradio/FMRadioPlayerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolume:I

    return v0
.end method

.method static synthetic access$802(Lcom/miui/fmradio/FMRadioPlayerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolume:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/fmradio/FMRadioPlayerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->misMuted:Z

    return v0
.end method

.method static synthetic access$902(Lcom/miui/fmradio/FMRadioPlayerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->misMuted:Z

    return p1
.end method

.method private adjustVolumeUpOrDown(Z)V
    .locals 4
    .parameter "direction"

    .prologue
    const v3, 0x1080432

    const/16 v1, 0xe

    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    if-nez v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 356
    :cond_0
    if-eqz p1, :cond_2

    .line 357
    iget v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeIndex:I

    .line 358
    iget v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeIndex:I

    if-le v0, v1, :cond_1

    .line 359
    iput v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeIndex:I

    .line 367
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    iget v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->setVolume(I)Z

    .line 368
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->getAudioRouting()I

    move-result v0

    if-nez v0, :cond_4

    .line 369
    iget v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeIndex:I

    if-nez v0, :cond_3

    .line 370
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mRingerStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 386
    :goto_2
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mLevel:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 387
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mToast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 388
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 389
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x30

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 390
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 362
    :cond_2
    iget v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeIndex:I

    .line 363
    iget v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeIndex:I

    if-gez v0, :cond_1

    .line 364
    iput v2, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeIndex:I

    goto :goto_1

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mRingerStreamIcon:Landroid/widget/ImageView;

    const v1, 0x1080431

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mAdditionalMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 377
    :cond_4
    iget v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeIndex:I

    if-nez v0, :cond_5

    .line 378
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mRingerStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    :goto_3
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mAdditionalMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 380
    :cond_5
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mRingerStreamIcon:Landroid/widget/ImageView;

    const v1, 0x108042d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method private audioPrepare(I)V
    .locals 4
    .parameter "routing"

    .prologue
    const/4 v2, 0x1

    const-string v3, "RadioPlayerService"

    .line 256
    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curServiceState()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curServiceState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    const-string v0, "RadioPlayerService"

    const-string v0, "Will execute audio prepare"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-direct {p0, v2, p1}, Lcom/miui/fmradio/FMRadioPlayerService;->turnOnOffFmAudio(ZI)V

    goto :goto_0

    .line 264
    :cond_1
    const-string v0, "RadioPlayerService"

    const-string v0, "Service state not ready, could not execute audio prepare"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLastPlayStatus()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 1000
    invoke-virtual {p0}, Lcom/miui/fmradio/FMRadioPlayerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->SAVED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->SAVED_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1002
    .local v6, saved_cur:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1003
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1004
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1005
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mLastFrequency:I

    .line 1006
    :cond_0
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1007
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolume:I

    .line 1010
    :cond_1
    iget v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolume:I

    iput v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeIndex:I

    .line 1011
    const-string v0, "RadioPlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Last frequency is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mLastFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , volume is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1014
    :cond_2
    return-void
.end method

.method private initVolumeView()V
    .locals 3

    .prologue
    .line 1026
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FMRadioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1028
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090097

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeView:Landroid/view/View;

    .line 1030
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mTitle:Landroid/widget/TextView;

    .line 1031
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f05000f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1032
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeView:Landroid/view/View;

    const v2, 0x102028b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mAdditionalMessage:Landroid/widget/TextView;

    .line 1034
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mAdditionalMessage:Landroid/widget/TextView;

    const v2, 0x7f05000d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1035
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeView:Landroid/view/View;

    const v2, 0x102028c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mLevel:Landroid/widget/ProgressBar;

    .line 1036
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mLevel:Landroid/widget/ProgressBar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1038
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mToast:Landroid/widget/Toast;

    .line 1040
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolumeView:Landroid/view/View;

    const v2, 0x102028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mRingerStreamIcon:Landroid/widget/ImageView;

    .line 1041
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mRingerStreamIcon:Landroid/widget/ImageView;

    const v2, 0x1080431

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1042
    return-void
.end method

.method private listenPhoneState(Z)V
    .locals 3
    .parameter "yesno"

    .prologue
    .line 991
    const-string v0, "RadioPlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listen phone state, yes or no = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    if-eqz p1, :cond_0

    .line 993
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 997
    :goto_0
    return-void

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method private notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "value"

    .prologue
    .line 322
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, i:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 325
    const-string v1, "freq"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 328
    return-void
.end method

.method private registerBroadcastListener()V
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Lcom/miui/fmradio/FMRadioPlayerService$2;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FMRadioPlayerService$2;-><init>(Lcom/miui/fmradio/FMRadioPlayerService;)V

    iput-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "com.miui.fmradio.routeheadset"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v1, "com.miui.fmradio.routeloudspeaker"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v1, "com.miui.fmradio.volume.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "com.miui.fmradio.quit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "com.miui.fmradio.mute"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "com.miui.fmradio.seeknext"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v1, "com.miui.fmradio.seekprevious"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v1, "com.miui.fmradio.switchoff.timeout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/fmradio/FMRadioPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private saveCurrentStatus()V
    .locals 5

    .prologue
    .line 1017
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1018
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->SAVED_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget v2, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolume:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1019
    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->SAVED_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p0}, Lcom/miui/fmradio/FMRadioPlayerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->SAVED_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=0"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1021
    const-string v1, "RadioPlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " LastVolume is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    return-void
.end method

.method private showNotification(Z)V
    .locals 9
    .parameter "yesno"

    .prologue
    const v7, 0x1e240

    const/4 v6, 0x0

    const-string v8, ""

    .line 332
    if-eqz p1, :cond_0

    .line 334
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020017

    const-string v4, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v8, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 336
    .local v2, notification:Landroid/app/Notification;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/miui/fmradio/FMRadioMain;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .local v1, i:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 339
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 340
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 342
    const v3, 0x7f050001

    invoke-virtual {p0, v3}, Lcom/miui/fmradio/FMRadioPlayerService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, p0, v3, v8, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 346
    invoke-virtual {p0, v7, v2}, Lcom/miui/fmradio/FMRadioPlayerService;->startForeground(ILandroid/app/Notification;)V

    .line 350
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #notification:Landroid/app/Notification;
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v3, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private turnOnOffFmAudio(ZI)V
    .locals 7
    .parameter "on"
    .parameter "routing"

    .prologue
    const/16 v5, 0x800

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "RadioPlayerService"

    const-string v6, ""

    .line 296
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 297
    if-nez p2, :cond_1

    .line 298
    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 302
    :goto_0
    const-string v0, "RadioPlayerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set FM speaker routing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    const-string v0, "RadioPlayerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set FM Launch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    if-eqz p1, :cond_2

    .line 307
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 309
    const-string v0, ""

    invoke-static {v5, v4, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 311
    const-string v0, ""

    invoke-static {v5, v3, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 318
    :goto_1
    return-void

    .line 300
    :cond_1
    invoke-static {v3, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_0

    .line 314
    :cond_2
    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 315
    const-string v0, ""

    invoke-static {v5, v4, v6}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_1
.end method

.method private unregisterBroadcastListener()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method getCurrentServiceStatus()I
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curServiceState()I

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1057
    const-string v0, "RadioPlayerService"

    const-string v1, "onBind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mBinder:Lcom/miui/fmradio/IFMRadioPlayerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "audio"

    .line 954
    const-string v0, "RadioPlayerService"

    const-string v1, "******** onCreate() called**********"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 956
    const-string v0, "audio"

    invoke-virtual {p0, v3}, Lcom/miui/fmradio/FMRadioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mAudioManager:Landroid/media/AudioManager;

    .line 958
    new-instance v0, Lcom/miui/fmradio/FMRadioPlayer;

    invoke-direct {v0}, Lcom/miui/fmradio/FMRadioPlayer;-><init>()V

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;

    .line 959
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mCommandCompllistener:Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/FMRadioPlayer;->setOnCommandCompleteListener(Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;)V

    .line 961
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mNM:Landroid/app/NotificationManager;

    .line 963
    const-string v0, "audio"

    invoke-virtual {p0, v3}, Lcom/miui/fmradio/FMRadioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mAudioMgr:Landroid/media/AudioManager;

    .line 965
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 968
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPhone:Landroid/telephony/TelephonyManager;

    .line 969
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    iput v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPhoneState:I

    .line 971
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FMRadioPlayerService;->listenPhoneState(Z)V

    .line 974
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.fmradio.switchoff.timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPeriodicPending:Landroid/app/PendingIntent;

    .line 978
    new-instance v0, Lcom/miui/fmradio/FMRadioPlayerService$FMStateUNInit;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FMRadioPlayerService$FMStateUNInit;-><init>(Lcom/miui/fmradio/FMRadioPlayerService;)V

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    .line 980
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioPlayerService;->registerBroadcastListener()V

    .line 982
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioPlayerService;->initVolumeView()V

    .line 984
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioPlayerService;->getLastPlayStatus()V

    .line 986
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPref:Landroid/content/SharedPreferences;

    .line 987
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pref_fm_audio_routing"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I

    .line 988
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v4, "RadioPlayerService"

    .line 1071
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1072
    const-string v0, "RadioPlayerService"

    const-string v0, "onDestroy() called"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPeriodicPending:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1076
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1078
    invoke-direct {p0, v2}, Lcom/miui/fmradio/FMRadioPlayerService;->showNotification(Z)V

    .line 1079
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mIsPoweroffCalled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curServiceState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1080
    const-string v0, "RadioPlayerService"

    const-string v0, "Killed by TaskManager"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/FMRadioPlayer;->setMute(I)Z

    .line 1083
    const-string v0, "com.miui.fmradio.end.running"

    invoke-direct {p0, v0, v3}, Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1084
    invoke-direct {p0, v2}, Lcom/miui/fmradio/FMRadioPlayerService;->listenPhoneState(Z)V

    .line 1085
    const/4 v0, -0x1

    invoke-direct {p0, v2, v0}, Lcom/miui/fmradio/FMRadioPlayerService;->turnOnOffFmAudio(ZI)V

    .line 1088
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioPlayerService;->unregisterBroadcastListener()V

    .line 1090
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1092
    const-string v0, "com.miui.fmradio.quit"

    invoke-static {p0, v0}, Lcom/miui/fmradio/SleepModeManager;->deleteTimer(Landroid/content/Context;Ljava/lang/String;)V

    .line 1093
    invoke-static {p0, v2}, Lcom/miui/fmradio/SleepModeManager;->setSelectTime(Landroid/content/Context;I)V

    .line 1095
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioPlayerService;->saveCurrentStatus()V

    .line 1096
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_fm_audio_routing"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1098
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;

    invoke-virtual {v0, v3}, Lcom/miui/fmradio/FMRadioPlayer;->setOnCommandCompleteListener(Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;)V

    .line 1099
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayer;->finalizeSelf()V

    .line 1100
    iput-object v3, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;

    .line 1101
    iput-object v3, p0, Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    .line 1102
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 1052
    const-string v0, "RadioPlayerService"

    const-string v1, "onRebind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 1046
    const-string v0, "RadioPlayerService"

    const-string v1, "onStartCommand() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 1064
    const-string v0, "RadioPlayerService"

    const-string v1, "onUnbind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 1066
    const/4 v0, 0x1

    return v0
.end method
