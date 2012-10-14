.class public Lcom/miui/fmradio/FMRadioMain;
.super Landroid/app/Activity;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/miui/fmradio/SleepModeManager$SleepModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/FMRadioMain$MainHandler;,
        Lcom/miui/fmradio/FMRadioMain$DialogOnKeyListener;
    }
.end annotation


# static fields
.field public static final BY_HEADSET_ID:I = 0x5

.field public static final BY_LOUDSPEAKER_ID:I = 0x4

.field private static final CHECK_HEADSET:I = 0x0

.field private static final DIALOG_IF_SCAN_NEXT:I = 0x1

.field private static final DIALOG_LAUNCHING_PROGRESS:I = 0x2

.field private static final DIALOG_SCANNING_PROGRESS:I = 0x0

.field public static final EXIT_ID:I = 0x2

.field private static final FM_ENABLE_SWITCH_BTN:I = 0xf

.field private static final FM_FREQUENCY_ADD:I = 0xb

.field private static final FM_FREQUENCY_REDUCE:I = 0xc

.field private static final FM_HW_ERROR_FRQ:I = 0x9

.field private static final FM_HW_ERROR_UNKNOWN:I = 0x8

.field private static final FM_OPEN_FAILED:I = 0x2

.field private static final FM_OPEN_SUCCEED:I = 0x3

.field private static final FM_SEEK_BACKWARD_LONG_PRESS:I = 0xd

.field private static final FM_SEEK_FAILED:I = 0x6

.field private static final FM_SEEK_FORWARD_LONG_PRESS:I = 0xe

.field private static final FM_SEEK_SUCCEED:I = 0x5

.field private static final FM_SEEK_SUCCEED_AND_REACHLIMIT:I = 0x7

.field private static final FM_TUNE_SUCCEED:I = 0x4

.field private static final FREQUENCY_ADJUST_STEP:I = 0x64

.field public static final JUMP_STATION_ID:I = 0x7

.field private static final LIGHT_ON_TIME:I = 0x15f90

.field public static final LIST_ID:I = 0x6

.field private static final LONG_PRESS_SEEK_TIMEOUT:I = 0x7d0

.field private static final LONG_PRESS_TUNE_TIMEOUT:I = 0x64

.field public static final PLAY_MENU_ID:I = 0x1

.field private static final RANGE_START:I = 0x153d8

.field public static final SAVE_STATION_ID:I = 0x1

.field public static final SCAN_SAVE_ID:I = 0x3

.field private static final SEEK_NEXT:I = 0xa

.field public static final SLEEP_MODE_ID:I = 0x8

.field private static final START_FMRADIO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private mAddButton:Landroid/widget/ImageButton;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioRoutingView:Landroid/widget/ImageView;

.field private mComponentName:Landroid/content/ComponentName;

.field private mCounter:I

.field private mEmptyView:Landroid/widget/TextView;

.field private mFMRadioMainView:Landroid/view/View;

.field private mFMScreenView:Landroid/view/View;

.field private mFrequency_switcher1:Landroid/widget/ImageSwitcher;

.field private mFrequency_switcher2:Landroid/widget/ImageSwitcher;

.field private mFrequency_switcher3:Landroid/widget/ImageSwitcher;

.field private mFrequency_switcher4:Landroid/widget/ImageSwitcher;

.field private mFrequency_switcher5:Landroid/widget/ImageSwitcher;

.field private mHandler:Landroid/os/Handler;

.field private mImageIds_Num:[Ljava/lang/Integer;

.field private mIsCanEdit:Z

.field private mIsExitOnStart:Z

.field private mIsFMRadioEnabled:Z

.field private mIsFMServiceBind:Z

.field private mIsLastSeekInvalid:Z

.field private mIsLongPressed:Z

.field private mIsManuallyExit:Z

.field private mIsMute:Z

.field private mIsOnPauseCalled:Z

.field private mIsSeekAll:Z

.field private mIsSeekAllFininsh:Z

.field private mIsSeekbackwardLongPressed:Z

.field private mIsSeekforwardLongPressed:Z

.field private mIsTuneSync:Z

.field private mLaunchingDialog:Landroid/app/ProgressDialog;

.field private mListAdapter:Lcom/miui/fmradio/StationListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMsgListener:Landroid/content/BroadcastReceiver;

.field private mNum1:I

.field private mNum2:I

.field private mNum3:I

.field private mNum4:I

.field private mOnOffButton:Landroid/widget/ImageButton;

.field private mReduceButton:Landroid/widget/ImageButton;

.field private mScanningDialog:Landroid/app/ProgressDialog;

.field private mSeekBackButton:Landroid/widget/ImageButton;

.field private mSeekForwardButton:Landroid/widget/ImageButton;

.field private mSeekSaveCount:I

.field private mSeekbarFreq:I

.field private mSleepMode:Landroid/widget/ImageView;

.field private mStationListMode:Z

.field private mStationListView:Landroid/view/View;

.field private mStationName:Landroid/widget/TextView;

.field private mStationsListButton:Landroid/widget/ImageButton;

.field private mTuneSyncDirection:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private vibratePatternE1:[B

.field private vibratePatternE2:[B

.field private vibratePatternE3:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const v0, 0x155cc

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    .line 73
    iput v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekbarFreq:I

    .line 74
    iput v2, p0, Lcom/miui/fmradio/FMRadioMain;->mNum1:I

    iput v2, p0, Lcom/miui/fmradio/FMRadioMain;->mNum2:I

    iput v2, p0, Lcom/miui/fmradio/FMRadioMain;->mNum3:I

    iput v2, p0, Lcom/miui/fmradio/FMRadioMain;->mNum4:I

    .line 75
    iput v2, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekSaveCount:I

    .line 77
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsFMRadioEnabled:Z

    .line 78
    iput-boolean v3, p0, Lcom/miui/fmradio/FMRadioMain;->mIsCanEdit:Z

    .line 79
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekAll:Z

    .line 80
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z

    .line 81
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsExitOnStart:Z

    .line 82
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLongPressed:Z

    .line 83
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekbackwardLongPressed:Z

    .line 84
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekforwardLongPressed:Z

    .line 85
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsManuallyExit:Z

    .line 86
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsMute:Z

    .line 87
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsOnPauseCalled:Z

    .line 88
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsFMServiceBind:Z

    .line 91
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsTuneSync:Z

    .line 92
    iput v3, p0, Lcom/miui/fmradio/FMRadioMain;->mTuneSyncDirection:I

    .line 94
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekAllFininsh:Z

    .line 97
    iput-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mMsgListener:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Lcom/miui/fmradio/FMRadioMain$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/fmradio/FMRadioMain$MainHandler;-><init>(Lcom/miui/fmradio/FMRadioMain;Lcom/miui/fmradio/FMRadioMain$1;)V

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;

    .line 150
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f02000a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f02000b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const v2, 0x7f02000c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f02000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f02000e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f02000f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f020010

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f020011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f020012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f020013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mImageIds_Num:[Ljava/lang/Integer;

    .line 1429
    return-void
.end method

.method private IsFMRadioServiceStillRunning()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1730
    const-string v3, "MainActivity"

    const-string v4, "Check FMRadioService, running or not?"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    const/4 v1, 0x0

    .line 1732
    .local v1, i:I
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/miui/fmradio/FMRadioMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1733
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 1734
    .local v2, runningServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v2, :cond_0

    move v3, v5

    .line 1743
    .end local p0
    :goto_0
    return v3

    .line 1738
    .restart local p0
    :cond_0
    const/4 v1, 0x0

    .end local p0
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1739
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, p0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.miui.fmradio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1740
    const/4 v3, 0x1

    goto :goto_0

    .line 1738
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v5

    .line 1743
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/miui/fmradio/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->updateStationName()V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/fmradio/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/miui/fmradio/FMRadioMain;->mIsFMServiceBind:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/fmradio/FMRadioMain;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mScanningDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/fmradio/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekAll:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/miui/fmradio/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekAll:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/fmradio/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekAllFininsh:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/miui/fmradio/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekAllFininsh:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/miui/fmradio/FMRadioMain;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/fmradio/FMRadioMain;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekSaveCount:I

    return v0
.end method

.method static synthetic access$1508(Lcom/miui/fmradio/FMRadioMain;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekSaveCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekSaveCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/miui/fmradio/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->scanFMStation()V

    return-void
.end method

.method static synthetic access$1802(Lcom/miui/fmradio/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/miui/fmradio/FMRadioMain;->mIsFMRadioEnabled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/miui/fmradio/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsMute:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/miui/fmradio/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/miui/fmradio/FMRadioMain;->mIsMute:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/fmradio/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsOnPauseCalled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/miui/fmradio/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->saveCurrentStatus()V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/fmradio/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsTuneSync:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/miui/fmradio/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/miui/fmradio/FMRadioMain;->mIsTuneSync:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/miui/fmradio/FMRadioMain;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mTuneSyncDirection:I

    return v0
.end method

.method static synthetic access$2400(Lcom/miui/fmradio/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekbackwardLongPressed:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/miui/fmradio/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekforwardLongPressed:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/miui/fmradio/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/miui/fmradio/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/miui/fmradio/FMRadioMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLongPressed:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/miui/fmradio/FMRadioMain;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->vibratePatternE3:[B

    return-object v0
.end method

.method static synthetic access$2900(Lcom/miui/fmradio/FMRadioMain;)Landroid/os/Vibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/fmradio/FMRadioMain;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/miui/fmradio/FMRadioMain;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FMRadioMain;->changeFreqByStep(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/miui/fmradio/FMRadioMain;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mOnOffButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/miui/fmradio/FMRadioMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/miui/fmradio/FMRadioMain;->mIsManuallyExit:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/miui/fmradio/FMRadioMain;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/miui/fmradio/FMRadioMain;->showNoticeDialog(II)V

    return-void
.end method

.method static synthetic access$3400(Lcom/miui/fmradio/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->turnOffFMRadio()V

    return-void
.end method

.method static synthetic access$3500(Lcom/miui/fmradio/FMRadioMain;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FMRadioMain;->displayOnOff(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/fmradio/FMRadioMain;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/fmradio/FMRadioMain;)Lcom/miui/fmradio/StationListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mListAdapter:Lcom/miui/fmradio/StationListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/fmradio/FMRadioMain;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    return v0
.end method

.method static synthetic access$602(Lcom/miui/fmradio/FMRadioMain;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/fmradio/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->launchFMRadioMain()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/fmradio/FMRadioMain;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FMRadioMain;->formatUserInputStation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/miui/fmradio/FMRadioMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->updateDisplayPanel()V

    return-void
.end method

.method private changeFreqByStep(Z)V
    .locals 6
    .parameter "flag"

    .prologue
    const-wide/16 v4, 0x64

    const v3, 0x1a5e0

    const v2, 0x155cc

    .line 940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsCanEdit:Z

    .line 941
    if-eqz p1, :cond_1

    .line 942
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    .line 943
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    if-le v0, v3, :cond_0

    .line 945
    iput v2, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    .line 947
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->updateDisplayPanel()V

    .line 948
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 959
    :goto_0
    return-void

    .line 951
    :cond_1
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    const/16 v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    .line 952
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    if-ge v0, v2, :cond_2

    .line 954
    iput v3, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    .line 956
    :cond_2
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->updateDisplayPanel()V

    .line 957
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private checkIfCanStart()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    iget-boolean v1, p0, Lcom/miui/fmradio/FMRadioMain;->mIsManuallyExit:Z

    if-eqz v1, :cond_0

    move v1, v2

    .line 231
    :goto_0
    return v1

    .line 206
    :cond_0
    const/4 v0, 0x0

    .line 207
    .local v0, messageId:I
    invoke-static {p0}, Lcom/miui/fmradio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    const v0, 0x7f050014

    .line 229
    :goto_1
    const v1, 0x7f05003c

    invoke-direct {p0, v1, v0}, Lcom/miui/fmradio/FMRadioMain;->showNoticeDialog(II)V

    .line 230
    iput-boolean v3, p0, Lcom/miui/fmradio/FMRadioMain;->mIsExitOnStart:Z

    move v1, v2

    .line 231
    goto :goto_0

    .line 209
    :cond_1
    invoke-static {p0}, Lcom/miui/fmradio/FMRadioUtils;->isInCalling(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    const v0, 0x7f05003a

    goto :goto_1

    .line 211
    :cond_2
    invoke-static {p0}, Lcom/miui/fmradio/FMRadioUtils;->getIsNeedCheckHeadset(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/miui/fmradio/FMRadioUtils;->isWiredHeadsetOrHeadphoneOn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 212
    const v0, 0x7f05003b

    goto :goto_1

    .line 215
    :cond_3
    invoke-static {p0, v2}, Lcom/miui/fmradio/FMRadioUtils;->setIsNeedCheckHeadset(Landroid/content/Context;Z)V

    .line 216
    new-instance v1, Lcom/miui/fmradio/FMRadioMain$1;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FMRadioMain$1;-><init>(Lcom/miui/fmradio/FMRadioMain;)V

    invoke-static {p0, v1}, Lcom/miui/fmradio/FMRadioUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move v1, v3

    .line 227
    goto :goto_0
.end method

.method private convertIntArrayToByteArray([I)[B
    .locals 3
    .parameter "array"

    .prologue
    .line 1758
    if-nez p1, :cond_0

    .line 1759
    const/4 v2, 0x0

    .line 1766
    :goto_0
    return-object v2

    .line 1762
    :cond_0
    array-length v2, p1

    new-array v0, v2, [B

    .line 1763
    .local v0, byteArray:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1764
    aget v2, p1, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1763
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 1766
    goto :goto_0
.end method

.method private displayOnOff(Z)V
    .locals 2
    .parameter "onoff"

    .prologue
    .line 766
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V

    .line 767
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 768
    .local v0, isVisible:I
    :goto_0
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mFMScreenView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 769
    return-void

    .line 767
    .end local v0           #isVisible:I
    :cond_0
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0
.end method

.method private enableUI(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 612
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mReduceButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 613
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 614
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 615
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mOnOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 616
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mStationsListButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 617
    return-void
.end method

.method private formatUserInputStation(I)I
    .locals 2
    .parameter "frequency"

    .prologue
    .line 928
    move v0, p1

    .line 929
    .local v0, result:I
    const v1, 0x1a5e0

    if-le v0, v1, :cond_1

    .line 930
    const v0, 0x1a5e0

    .line 935
    :cond_0
    :goto_0
    div-int/lit8 v1, v0, 0x64

    mul-int/lit8 v0, v1, 0x64

    .line 936
    return v0

    .line 931
    :cond_1
    const v1, 0x155cc

    if-ge v0, v1, :cond_0

    .line 932
    const v0, 0x155cc

    goto :goto_0
.end method

.method private getStationsList()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 530
    invoke-virtual {p0}, Lcom/miui/fmradio/FMRadioMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    const-string v3, "CH_Freq <> \'\'"

    const/4 v4, 0x0

    const-string v5, " CH_Freq ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 532
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mListAdapter:Lcom/miui/fmradio/StationListAdapter;

    invoke-virtual {v0, v6}, Lcom/miui/fmradio/StationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 533
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initButton()V
    .locals 1

    .prologue
    .line 674
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mAddButton:Landroid/widget/ImageButton;

    .line 675
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mAddButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 678
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 681
    :cond_0
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mReduceButton:Landroid/widget/ImageButton;

    .line 682
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mReduceButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mReduceButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mReduceButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 685
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mReduceButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 688
    :cond_1
    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekBackButton:Landroid/widget/ImageButton;

    .line 689
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekBackButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 690
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 694
    :cond_2
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekForwardButton:Landroid/widget/ImageButton;

    .line 695
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekForwardButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 696
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 700
    :cond_3
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mOnOffButton:Landroid/widget/ImageButton;

    .line 701
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mOnOffButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 702
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mOnOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mOnOffButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 705
    :cond_4
    return-void
.end method

.method private initImageSwitcher()V
    .locals 1

    .prologue
    .line 620
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher1:Landroid/widget/ImageSwitcher;

    .line 621
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher1:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 622
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher2:Landroid/widget/ImageSwitcher;

    .line 623
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher2:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 624
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher3:Landroid/widget/ImageSwitcher;

    .line 625
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher3:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 626
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher4:Landroid/widget/ImageSwitcher;

    .line 627
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher4:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 628
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher5:Landroid/widget/ImageSwitcher;

    .line 629
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher5:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 630
    return-void
.end method

.method private initResourceRefs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 589
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mStationsListButton:Landroid/widget/ImageButton;

    .line 590
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mStationsListButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mStationsListButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 592
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mStationName:Landroid/widget/TextView;

    .line 593
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mStationName:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    iput-boolean v1, p0, Lcom/miui/fmradio/FMRadioMain;->mStationListMode:Z

    .line 595
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFMRadioMainView:Landroid/view/View;

    .line 596
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mStationListView:Landroid/view/View;

    .line 597
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mAudioRoutingView:Landroid/widget/ImageView;

    .line 598
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSleepMode:Landroid/widget/ImageView;

    .line 599
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFMScreenView:Landroid/view/View;

    .line 600
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFMScreenView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->initImageSwitcher()V

    .line 603
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->initButton()V

    .line 605
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->initVibratePatterns()V

    .line 607
    invoke-direct {p0, v1}, Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V

    .line 608
    return-void
.end method

.method private initVibratePatterns()V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/miui/fmradio/FMRadioMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->convertIntArrayToByteArray([I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->vibratePatternE1:[B

    .line 195
    invoke-virtual {p0}, Lcom/miui/fmradio/FMRadioMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->convertIntArrayToByteArray([I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->vibratePatternE2:[B

    .line 197
    invoke-virtual {p0}, Lcom/miui/fmradio/FMRadioMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->convertIntArrayToByteArray([I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->vibratePatternE3:[B

    .line 199
    return-void
.end method

.method private launchFMRadioMain()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 374
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->updateDisplayPanel()V

    .line 375
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mListAdapter:Lcom/miui/fmradio/StationListAdapter;

    invoke-virtual {v1}, Lcom/miui/fmradio/StationListAdapter;->getPlayingFreq()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 376
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    invoke-static {v0}, Lcom/miui/fmradio/FMRadioUtils;->setFMRadioFrequency(I)V

    .line 378
    :cond_0
    iput-boolean v3, p0, Lcom/miui/fmradio/FMRadioMain;->mStationListMode:Z

    .line 379
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFMRadioMainView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mStationListView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mListAdapter:Lcom/miui/fmradio/StationListAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/fmradio/StationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 382
    iput-object v2, p0, Lcom/miui/fmradio/FMRadioMain;->mListAdapter:Lcom/miui/fmradio/StationListAdapter;

    .line 383
    iput-object v2, p0, Lcom/miui/fmradio/FMRadioMain;->mListView:Landroid/widget/ListView;

    .line 384
    return-void
.end method

.method private launchStationList()V
    .locals 2

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mStationListMode:Z

    .line 388
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFMRadioMainView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mStationListView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 390
    new-instance v0, Lcom/miui/fmradio/StationListAdapter;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/StationListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mListAdapter:Lcom/miui/fmradio/StationListAdapter;

    .line 391
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mListAdapter:Lcom/miui/fmradio/StationListAdapter;

    iget v1, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/StationListAdapter;->setPlayingFreq(I)V

    .line 392
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mListAdapter:Lcom/miui/fmradio/StationListAdapter;

    new-instance v1, Lcom/miui/fmradio/FMRadioMain$4;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FMRadioMain$4;-><init>(Lcom/miui/fmradio/FMRadioMain;)V

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/StationListAdapter;->setOnDatasetChangedListener(Lcom/miui/fmradio/StationListAdapter$OnDatasetChangedListener;)V

    .line 405
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mListView:Landroid/widget/ListView;

    .line 406
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mEmptyView:Landroid/widget/TextView;

    .line 407
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mListAdapter:Lcom/miui/fmradio/StationListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 408
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/fmradio/FMRadioMain$5;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FMRadioMain$5;-><init>(Lcom/miui/fmradio/FMRadioMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 420
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/fmradio/FMRadioMain$6;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FMRadioMain$6;-><init>(Lcom/miui/fmradio/FMRadioMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 433
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->getStationsList()V

    .line 434
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsFMRadioEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/fmradio/FMRadioUtils;->isDBEmpty(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->scanFMStation()V

    .line 437
    :cond_0
    return-void
.end method

.method private registerReceiverMsg()V
    .locals 2

    .prologue
    .line 1648
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mMsgListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1649
    new-instance v1, Lcom/miui/fmradio/FMRadioMain$17;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FMRadioMain$17;-><init>(Lcom/miui/fmradio/FMRadioMain;)V

    iput-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mMsgListener:Landroid/content/BroadcastReceiver;

    .line 1709
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1710
    .local v0, i:Landroid/content/IntentFilter;
    const-string v1, "com.miui.fmradio.opensucceed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1711
    const-string v1, "com.miui.fmradio.openfailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1712
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1713
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1714
    const-string v1, "com.miui.fmradio.tunesucceed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1715
    const-string v1, "com.miui.fmradio.seeksucceed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1716
    const-string v1, "com.miui.fmradio.seeklimit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1717
    const-string v1, "com.miui.fmradio.seekfailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1718
    const-string v1, "com.miui.fmradio.freqerror"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1719
    const-string v1, "com.miui.fmradio.hwerror"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1720
    const-string v1, "com.miui.fmradio.quitui"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1721
    const-string v1, "com.miui.fmradio.muteui"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1723
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mMsgListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/fmradio/FMRadioMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1725
    .end local v0           #i:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 444
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 445
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 447
    return-void
.end method

.method private restoreLastStatus()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 565
    const/4 v7, 0x0

    .line 567
    .local v7, saved_cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/fmradio/FMRadioMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/fmradio/FMRadioUtils;->SAVED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->SAVED_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 569
    if-nez v7, :cond_0

    .line 586
    :goto_0
    return-void

    .line 572
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 573
    .local v6, e:Landroid/database/sqlite/SQLiteFullException;
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/fmradio/FMRadioUtils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsExitOnStart:Z

    .line 575
    invoke-virtual {p0}, Lcom/miui/fmradio/FMRadioMain;->finish()V

    goto :goto_0

    .line 579
    .end local v6           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 580
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 581
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    .line 582
    :cond_1
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 583
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsCanEdit:Z

    .line 584
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 585
    const/4 v7, 0x0

    .line 586
    goto :goto_0
.end method

.method private saveCurrentStatus()V
    .locals 5

    .prologue
    const-string v3, "isLastPlayChannel"

    .line 544
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 545
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "Last_Freq"

    iget v2, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 546
    iget-boolean v1, p0, Lcom/miui/fmradio/FMRadioMain;->mIsCanEdit:Z

    if-eqz v1, :cond_0

    .line 547
    const-string v1, "isLastPlayChannel"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :goto_0
    invoke-virtual {p0}, Lcom/miui/fmradio/FMRadioMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->SAVED_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=0"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 553
    return-void

    .line 549
    :cond_0
    const-string v1, "isLastPlayChannel"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveCurrentVolume()V
    .locals 6

    .prologue
    .line 557
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 558
    .local v0, cv:Landroid/content/ContentValues;
    invoke-static {}, Lcom/miui/fmradio/FMRadioUtils;->getCurrentVolume()I

    move-result v1

    .line 559
    .local v1, volume:I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->SAVED_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Lcom/miui/fmradio/FMRadioMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/fmradio/FMRadioUtils;->SAVED_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=0"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveLastStation(FLjava/lang/String;)V
    .locals 5
    .parameter "freq"
    .parameter "chNum"

    .prologue
    .line 1089
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1090
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "Last_ChNum"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v1, "Last_Freq"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1092
    invoke-virtual {p0}, Lcom/miui/fmradio/FMRadioMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/fmradio/FMRadioUtils;->SAVED_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id = 0"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1093
    return-void
.end method

.method private scanFMStation()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1300
    const v0, 0x155cc

    iput v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    .line 1301
    iput v3, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekSaveCount:I

    .line 1303
    iput-boolean v1, p0, Lcom/miui/fmradio/FMRadioMain;->mIsTuneSync:Z

    .line 1304
    iput v1, p0, Lcom/miui/fmradio/FMRadioMain;->mTuneSyncDirection:I

    .line 1306
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    invoke-static {v0}, Lcom/miui/fmradio/FMRadioUtils;->setFMRadioFrequency(I)V

    .line 1307
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x15f90

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1310
    invoke-virtual {p0, v3}, Lcom/miui/fmradio/FMRadioMain;->showDialog(I)V

    .line 1311
    return-void
.end method

.method private showEditStationDialog(I)V
    .locals 9
    .parameter "freq"

    .prologue
    const/4 v4, 0x0

    .line 450
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 451
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const v0, 0x7f05001d

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 452
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 453
    .local v8, view:Landroid/view/View;
    const v0, 0x7f060001

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 454
    .local v2, etStationName:Landroid/widget/EditText;
    const/high16 v0, 0x7f06

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 455
    .local v3, etStationFreq:Landroid/widget/EditText;
    invoke-static {p0, p1}, Lcom/miui/fmradio/FMRadioUtils;->getStationName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 456
    invoke-static {p1}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 458
    const v0, 0x104000a

    invoke-virtual {v6, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 459
    const/high16 v0, 0x104

    invoke-virtual {v6, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 460
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    .line 461
    .local v5, dialog:Landroid/app/Dialog;
    invoke-direct {p0, v5}, Lcom/miui/fmradio/FMRadioMain;->requestInputMethod(Landroid/app/Dialog;)V

    .line 462
    const v0, 0x1020019

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 463
    .local v7, positive:Landroid/widget/Button;
    new-instance v0, Lcom/miui/fmradio/FMRadioMain$7;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/fmradio/FMRadioMain$7;-><init>(Lcom/miui/fmradio/FMRadioMain;Landroid/widget/EditText;Landroid/widget/EditText;ILandroid/app/Dialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    return-void
.end method

.method private showNoticeDialog(II)V
    .locals 3
    .parameter "titleId"
    .parameter "messageId"

    .prologue
    .line 235
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0, p1}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {p0, p2}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 238
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 239
    const v1, 0x104000a

    new-instance v2, Lcom/miui/fmradio/FMRadioMain$2;

    invoke-direct {v2, p0}, Lcom/miui/fmradio/FMRadioMain$2;-><init>(Lcom/miui/fmradio/FMRadioMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 248
    return-void
.end method

.method private showSaveStationDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1232
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1233
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f050030

    invoke-virtual {p0, v6}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1234
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/high16 v7, 0x7f03

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1235
    .local v5, view:Landroid/view/View;
    const v6, 0x7f060001

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1236
    .local v3, etStationName:Landroid/widget/EditText;
    const/high16 v6, 0x7f06

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1237
    .local v2, etStationFreq:Landroid/widget/EditText;
    const v6, 0x104000a

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1238
    const/high16 v6, 0x104

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1239
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1240
    .local v1, dialog:Landroid/app/Dialog;
    invoke-direct {p0, v1}, Lcom/miui/fmradio/FMRadioMain;->requestInputMethod(Landroid/app/Dialog;)V

    .line 1241
    const v6, 0x1020019

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1242
    .local v4, positive:Landroid/widget/Button;
    new-instance v6, Lcom/miui/fmradio/FMRadioMain$11;

    invoke-direct {v6, p0, v3, v2, v1}, Lcom/miui/fmradio/FMRadioMain$11;-><init>(Lcom/miui/fmradio/FMRadioMain;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1296
    return-void
.end method

.method private showSaveStationWithoutInputFreqDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1189
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1190
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030003

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1191
    .local v3, view:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1192
    const v4, 0x7f05002f

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1193
    const v4, 0x7f05001a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    invoke-static {v7}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/miui/fmradio/FMRadioMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1194
    const v4, 0x104000a

    invoke-virtual {v0, v4, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1195
    const/high16 v4, 0x104

    invoke-virtual {v0, v4, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1196
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1197
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1198
    invoke-direct {p0, v1}, Lcom/miui/fmradio/FMRadioMain;->requestInputMethod(Landroid/app/Dialog;)V

    .line 1199
    const v4, 0x1020019

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1200
    .local v2, positive:Landroid/widget/Button;
    new-instance v4, Lcom/miui/fmradio/FMRadioMain$10;

    invoke-direct {v4, p0, v3, v1}, Lcom/miui/fmradio/FMRadioMain$10;-><init>(Lcom/miui/fmradio/FMRadioMain;Landroid/view/View;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1228
    return-void
.end method

.method private showSetStationDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 886
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 887
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030001

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 888
    .local v3, view:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 889
    const v4, 0x7f05002e

    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 890
    const v4, 0x104000a

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 891
    const/high16 v4, 0x104

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 892
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 893
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 894
    invoke-direct {p0, v1}, Lcom/miui/fmradio/FMRadioMain;->requestInputMethod(Landroid/app/Dialog;)V

    .line 895
    const v4, 0x1020019

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 896
    .local v2, positive:Landroid/widget/Button;
    new-instance v4, Lcom/miui/fmradio/FMRadioMain$8;

    invoke-direct {v4, p0, v3, v1}, Lcom/miui/fmradio/FMRadioMain$8;-><init>(Lcom/miui/fmradio/FMRadioMain;Landroid/view/View;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 925
    return-void
.end method

.method private turnOffFMRadio()V
    .locals 2

    .prologue
    .line 333
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/fmradio/FMRadioUtils;->setIsNeedCheckHeadset(Landroid/content/Context;Z)V

    .line 334
    invoke-static {}, Lcom/miui/fmradio/FMRadioUtils;->powerOffFMRadioDevice()Z

    .line 335
    invoke-static {p0}, Lcom/miui/fmradio/FMRadioUtils;->unbindFromService(Landroid/content/Context;)V

    .line 336
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->stopService(Landroid/content/Intent;)Z

    .line 337
    return-void
.end method

.method private updateDisplayPanel()V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->updateFrequencyDisplay()V

    .line 710
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->updateStationName()V

    .line 711
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->updateSleepMode()V

    .line 712
    return-void
.end method

.method private updateFrequencyDisplay()V
    .locals 5

    .prologue
    const v4, 0x7f020014

    const v1, 0x155cc

    const/4 v3, 0x0

    const v2, 0x186a0

    .line 740
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    if-ge v0, v1, :cond_0

    .line 741
    iput v1, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    .line 743
    :cond_0
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/miui/fmradio/FMRadioMain;->mNum1:I

    .line 744
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    iget v1, p0, Lcom/miui/fmradio/FMRadioMain;->mNum1:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/miui/fmradio/FMRadioMain;->mNum2:I

    .line 745
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    iget v1, p0, Lcom/miui/fmradio/FMRadioMain;->mNum1:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/fmradio/FMRadioMain;->mNum2:I

    mul-int/lit16 v1, v1, 0x2710

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/miui/fmradio/FMRadioMain;->mNum3:I

    .line 746
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    iget v1, p0, Lcom/miui/fmradio/FMRadioMain;->mNum1:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/fmradio/FMRadioMain;->mNum2:I

    mul-int/lit16 v1, v1, 0x2710

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/fmradio/FMRadioMain;->mNum3:I

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/miui/fmradio/FMRadioMain;->mNum4:I

    .line 748
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mNum1:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 749
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher1:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mImageIds_Num:[Ljava/lang/Integer;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 750
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher1:Landroid/widget/ImageSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mImageIds_Num:[Ljava/lang/Integer;

    iget v2, p0, Lcom/miui/fmradio/FMRadioMain;->mNum2:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 752
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mImageIds_Num:[Ljava/lang/Integer;

    iget v2, p0, Lcom/miui/fmradio/FMRadioMain;->mNum3:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 753
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher4:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v4}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 754
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher5:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mImageIds_Num:[Ljava/lang/Integer;

    iget v2, p0, Lcom/miui/fmradio/FMRadioMain;->mNum4:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 763
    :goto_0
    return-void

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher1:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v3}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher1:Landroid/widget/ImageSwitcher;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 758
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mImageIds_Num:[Ljava/lang/Integer;

    iget v2, p0, Lcom/miui/fmradio/FMRadioMain;->mNum2:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 759
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mImageIds_Num:[Ljava/lang/Integer;

    iget v2, p0, Lcom/miui/fmradio/FMRadioMain;->mNum3:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 760
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher4:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v4}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 761
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mFrequency_switcher5:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mImageIds_Num:[Ljava/lang/Integer;

    iget v2, p0, Lcom/miui/fmradio/FMRadioMain;->mNum4:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateSleepMode()V
    .locals 2

    .prologue
    .line 725
    invoke-static {p0}, Lcom/miui/fmradio/SleepModeManager;->isSleepModeSet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSleepMode:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 730
    :goto_0
    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSleepMode:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateStationName()V
    .locals 3

    .prologue
    .line 715
    iget v1, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    invoke-static {p0, v1}, Lcom/miui/fmradio/FMRadioUtils;->getStationName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mStationName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 722
    :goto_0
    return-void

    .line 719
    :cond_0
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mStationName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mStationName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 633
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 634
    .local v0, i:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 635
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mStationListMode:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->launchFMRadioMain()V

    .line 371
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x1a5e0

    const v4, 0x155cc

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 817
    const-string v0, "MainActivity"

    const-string v1, "onClick() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 883
    :goto_0
    return-void

    .line 820
    :sswitch_0
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsCanEdit:Z

    .line 821
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    .line 822
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    if-le v0, v5, :cond_0

    .line 823
    iput v4, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    .line 825
    :cond_0
    invoke-direct {p0, v2}, Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V

    .line 826
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    invoke-static {v0}, Lcom/miui/fmradio/FMRadioUtils;->setFMRadioFrequency(I)V

    .line 882
    :goto_1
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->updateDisplayPanel()V

    goto :goto_0

    .line 830
    :sswitch_1
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsCanEdit:Z

    .line 831
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    const/16 v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    .line 832
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    if-ge v0, v4, :cond_1

    .line 834
    iput v5, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    .line 836
    :cond_1
    invoke-direct {p0, v2}, Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V

    .line 837
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    invoke-static {v0}, Lcom/miui/fmradio/FMRadioUtils;->setFMRadioFrequency(I)V

    goto :goto_1

    .line 846
    :sswitch_2
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsCanEdit:Z

    .line 847
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z

    .line 848
    invoke-direct {p0, v2}, Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V

    .line 849
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioUtils;->seekFMRadioStation(I)V

    goto :goto_0

    .line 853
    :sswitch_3
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsCanEdit:Z

    .line 854
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z

    .line 855
    invoke-direct {p0, v2}, Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V

    .line 856
    invoke-static {v3}, Lcom/miui/fmradio/FMRadioUtils;->seekFMRadioStation(I)V

    goto :goto_0

    .line 860
    :sswitch_4
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsMute:Z

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->displayOnOff(Z)V

    .line 861
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsMute:Z

    if-eqz v0, :cond_2

    .line 862
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioUtils;->setFMSwitchOffFlag(Z)V

    .line 863
    invoke-static {v3}, Lcom/miui/fmradio/FMRadioUtils;->setFMRadioMute(I)V

    .line 864
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 869
    :goto_2
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsMute:Z

    if-nez v0, :cond_3

    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsMute:Z

    .line 871
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 866
    :cond_2
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioUtils;->setFMRadioMute(I)V

    .line 867
    invoke-static {v3}, Lcom/miui/fmradio/FMRadioUtils;->setFMSwitchOffFlag(Z)V

    goto :goto_2

    :cond_3
    move v0, v2

    .line 869
    goto :goto_3

    .line 874
    :sswitch_5
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->launchStationList()V

    goto :goto_1

    .line 877
    :sswitch_6
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->showSetStationDialog()V

    goto :goto_1

    .line 818
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060004 -> :sswitch_4
        0x7f060005 -> :sswitch_6
        0x7f060012 -> :sswitch_1
        0x7f060013 -> :sswitch_0
        0x7f060014 -> :sswitch_5
        0x7f060015 -> :sswitch_2
        0x7f060016 -> :sswitch_3
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1042
    iget-boolean v6, p0, Lcom/miui/fmradio/FMRadioMain;->mStationListMode:Z

    if-eqz v6, :cond_0

    .line 1043
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1045
    .local v5, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v4, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 1046
    .local v4, index:I
    iget-object v6, p0, Lcom/miui/fmradio/FMRadioMain;->mListAdapter:Lcom/miui/fmradio/StationListAdapter;

    invoke-virtual {v6, v4}, Lcom/miui/fmradio/StationListAdapter;->getItemCursor(I)Landroid/database/Cursor;

    move-result-object v2

    .line 1047
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1048
    .local v1, chNum:Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    .line 1049
    .local v3, freq:F
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    move v6, v7

    .line 1085
    .end local v1           #chNum:Ljava/lang/String;
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #freq:F
    .end local v4           #index:I
    .end local v5           #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_0
    return v6

    .line 1051
    .restart local v1       #chNum:Ljava/lang/String;
    .restart local v2       #cursor:Landroid/database/Cursor;
    .restart local v3       #freq:F
    .restart local v4       #index:I
    .restart local v5       #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_1
    const/high16 v6, 0x447a

    mul-float/2addr v6, v3

    float-to-int v6, v6

    iput v6, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    .line 1052
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->launchFMRadioMain()V

    .line 1053
    invoke-direct {p0, v3, v1}, Lcom/miui/fmradio/FMRadioMain;->saveLastStation(FLjava/lang/String;)V

    move v6, v8

    .line 1054
    goto :goto_0

    .line 1056
    :pswitch_2
    invoke-static {v3}, Lcom/miui/fmradio/FMRadioUtils;->convertFloatToIntFreq(F)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/miui/fmradio/FMRadioMain;->showEditStationDialog(I)V

    move v6, v8

    .line 1057
    goto :goto_0

    .line 1059
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1060
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f05002a

    invoke-virtual {p0, v6}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1061
    const v6, 0x1080027

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1062
    const v6, 0x7f05002b

    invoke-virtual {p0, v6}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1063
    const v6, 0x104000a

    new-instance v7, Lcom/miui/fmradio/FMRadioMain$9;

    invoke-direct {v7, p0, v3}, Lcom/miui/fmradio/FMRadioMain$9;-><init>(Lcom/miui/fmradio/FMRadioMain;F)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1077
    const/high16 v6, 0x104

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1078
    sget-object v6, Landroid/app/AlertDialog$Indicator;->Delete:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    .line 1079
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v6, v8

    .line 1080
    goto :goto_0

    .line 1085
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #chNum:Ljava/lang/String;
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #freq:F
    .end local v4           #index:I
    .end local v5           #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 1049
    :pswitch_data_0
    .packed-switch 0x7f05001f
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 165
    const-string v1, "MainActivity"

    const-string v2, "**************onCreate() called!****************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FMRadioMain;->setContentView(I)V

    .line 171
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->initResourceRefs()V

    .line 173
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FMRadioMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mVibrator:Landroid/os/Vibrator;

    .line 174
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FMRadioMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mAudioManager:Landroid/media/AudioManager;

    .line 175
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/fmradio/FMRadioMain;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/miui/fmradio/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mComponentName:Landroid/content/ComponentName;

    .line 181
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->checkIfCanStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->registerReceiverMsg()V

    .line 186
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FMRadioMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 187
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 188
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 190
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const v1, 0x7f05000b

    const v3, 0x7f050003

    const/4 v2, 0x1

    .line 1314
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 1377
    :goto_0
    return-object v0

    .line 1316
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mLaunchingDialog:Landroid/app/ProgressDialog;

    .line 1317
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mLaunchingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mLaunchingDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f050016

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1319
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mLaunchingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1320
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mLaunchingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mLaunchingDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 1325
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mScanningDialog:Landroid/app/ProgressDialog;

    .line 1326
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mScanningDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1327
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mScanningDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1328
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mScanningDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f050010

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FMRadioMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1329
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mScanningDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1330
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mScanningDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1331
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mScanningDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v3}, Lcom/miui/fmradio/FMRadioMain;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/miui/fmradio/FMRadioMain$12;

    invoke-direct {v2, p0}, Lcom/miui/fmradio/FMRadioMain$12;-><init>(Lcom/miui/fmradio/FMRadioMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1336
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mScanningDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/miui/fmradio/FMRadioMain$13;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FMRadioMain$13;-><init>(Lcom/miui/fmradio/FMRadioMain;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1342
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mScanningDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/miui/fmradio/FMRadioMain$14;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FMRadioMain$14;-><init>(Lcom/miui/fmradio/FMRadioMain;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1356
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mScanningDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/miui/fmradio/FMRadioMain$DialogOnKeyListener;

    invoke-direct {v1, p0, v4}, Lcom/miui/fmradio/FMRadioMain$DialogOnKeyListener;-><init>(Lcom/miui/fmradio/FMRadioMain;Lcom/miui/fmradio/FMRadioMain$1;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1358
    :cond_1
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mScanningDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 1361
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050002

    new-instance v2, Lcom/miui/fmradio/FMRadioMain$16;

    invoke-direct {v2, p0}, Lcom/miui/fmradio/FMRadioMain$16;-><init>(Lcom/miui/fmradio/FMRadioMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/fmradio/FMRadioMain$15;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FMRadioMain$15;-><init>(Lcom/miui/fmradio/FMRadioMain;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1097
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1098
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 341
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 342
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 343
    const-string v0, "MainActivity"

    const-string v1, "onDestroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsExitOnStart:Z

    if-eqz v0, :cond_1

    .line 345
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsMute:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsManuallyExit:Z

    if-nez v0, :cond_2

    .line 350
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->turnOffFMRadio()V

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mMsgListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mMsgListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mMsgListener:Landroid/content/BroadcastReceiver;

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 359
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsManuallyExit:Z

    if-eqz v0, :cond_0

    .line 360
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const-string v4, "type"

    const-string v3, "com.miui.fmradio.volume.change"

    .line 785
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    .line 786
    iget-boolean v1, p0, Lcom/miui/fmradio/FMRadioMain;->mIsFMRadioEnabled:Z

    if-nez v1, :cond_0

    move v1, v2

    .line 813
    :goto_0
    return v1

    .line 794
    :cond_0
    const/16 v1, 0x52

    if-ne v1, p1, :cond_1

    .line 795
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 796
    goto :goto_0

    .line 801
    :cond_1
    const/16 v1, 0x18

    if-ne v1, p1, :cond_2

    .line 802
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.fmradio.volume.change"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 803
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 804
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->sendBroadcast(Landroid/content/Intent;)V

    move v1, v2

    .line 805
    goto :goto_0

    .line 806
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const/16 v1, 0x19

    if-ne v1, p1, :cond_3

    .line 807
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.fmradio.volume.change"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 808
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 809
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->sendBroadcast(Landroid/content/Intent;)V

    move v1, v2

    .line 810
    goto :goto_0

    .line 813
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 776
    const/16 v0, 0x18

    if-eq v0, p1, :cond_0

    const/16 v0, 0x19

    if-ne v0, p1, :cond_1

    .line 778
    :cond_0
    const/4 v0, 0x1

    .line 781
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 962
    const-string v0, "MainActivity"

    const-string v1, "onLongClick() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v3

    .line 988
    :goto_0
    return v0

    .line 965
    :pswitch_1
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLongPressed:Z

    .line 966
    invoke-direct {p0, v2}, Lcom/miui/fmradio/FMRadioMain;->changeFreqByStep(Z)V

    move v0, v2

    .line 967
    goto :goto_0

    .line 970
    :pswitch_2
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLongPressed:Z

    .line 971
    invoke-direct {p0, v3}, Lcom/miui/fmradio/FMRadioMain;->changeFreqByStep(Z)V

    move v0, v2

    .line 972
    goto :goto_0

    .line 975
    :pswitch_3
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekbackwardLongPressed:Z

    .line 976
    iput-boolean v3, p0, Lcom/miui/fmradio/FMRadioMain;->mIsCanEdit:Z

    .line 977
    invoke-static {v3}, Lcom/miui/fmradio/FMRadioUtils;->seekFMRadioStation(I)V

    .line 978
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z

    move v0, v2

    .line 979
    goto :goto_0

    .line 982
    :pswitch_4
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekforwardLongPressed:Z

    .line 983
    iput-boolean v3, p0, Lcom/miui/fmradio/FMRadioMain;->mIsCanEdit:Z

    .line 984
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioUtils;->seekFMRadioStation(I)V

    .line 985
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z

    move v0, v2

    .line 986
    goto :goto_0

    .line 963
    :pswitch_data_0
    .packed-switch 0x7f060012
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 1139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1185
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 1141
    :pswitch_0
    iput-boolean v4, p0, Lcom/miui/fmradio/FMRadioMain;->mIsManuallyExit:Z

    .line 1142
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->turnOffFMRadio()V

    .line 1143
    invoke-virtual {p0}, Lcom/miui/fmradio/FMRadioMain;->finish()V

    goto :goto_0

    .line 1147
    :pswitch_1
    invoke-static {p0}, Lcom/miui/fmradio/FMRadioUtils;->isDBEmpty(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1148
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->scanFMStation()V

    goto :goto_0

    .line 1151
    :cond_0
    invoke-virtual {p0, v4}, Lcom/miui/fmradio/FMRadioMain;->showDialog(I)V

    goto :goto_0

    .line 1156
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.miui.fmradio.routeloudspeaker"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1157
    .local v1, iLoudspeaker:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FMRadioMain;->sendBroadcast(Landroid/content/Intent;)V

    .line 1158
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain;->mAudioRoutingView:Landroid/widget/ImageView;

    const v4, 0x7f020026

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1162
    .end local v1           #iLoudspeaker:Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.miui.fmradio.routeheadset"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1163
    .local v0, iHeadset:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->sendBroadcast(Landroid/content/Intent;)V

    .line 1164
    iget-object v3, p0, Lcom/miui/fmradio/FMRadioMain;->mAudioRoutingView:Landroid/widget/ImageView;

    const v4, 0x7f020005

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1167
    .end local v0           #iHeadset:Landroid/content/Intent;
    :pswitch_4
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->launchStationList()V

    goto :goto_0

    .line 1170
    :pswitch_5
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->showSetStationDialog()V

    goto :goto_0

    .line 1173
    :pswitch_6
    iget-boolean v3, p0, Lcom/miui/fmradio/FMRadioMain;->mStationListMode:Z

    if-eqz v3, :cond_1

    .line 1174
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->showSaveStationDialog()V

    goto :goto_0

    .line 1176
    :cond_1
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->showSaveStationWithoutInputFreqDialog()V

    goto :goto_0

    .line 1180
    :pswitch_7
    new-instance v2, Lcom/miui/fmradio/SleepModeManager;

    invoke-direct {v2}, Lcom/miui/fmradio/SleepModeManager;-><init>()V

    .line 1181
    .local v2, sleepModeManager:Lcom/miui/fmradio/SleepModeManager;
    invoke-virtual {v2, p0}, Lcom/miui/fmradio/SleepModeManager;->setSleepModeChangedListener(Lcom/miui/fmradio/SleepModeManager$SleepModeChangedListener;)V

    .line 1182
    invoke-virtual {v2, p0}, Lcom/miui/fmradio/SleepModeManager;->showSelectTimeDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 1139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 308
    const-string v0, "MainActivity"

    const-string v1, "onPause() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsOnPauseCalled:Z

    .line 311
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLongPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekbackwardLongPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekforwardLongPressed:Z

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    invoke-static {v0}, Lcom/miui/fmradio/FMRadioUtils;->setFMRadioFrequency(I)V

    .line 313
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLongPressed:Z

    .line 314
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekbackwardLongPressed:Z

    .line 315
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekforwardLongPressed:Z

    .line 318
    :cond_1
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->saveCurrentStatus()V

    .line 320
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsManuallyExit:Z

    if-nez v0, :cond_2

    .line 321
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->saveCurrentVolume()V

    .line 324
    :cond_2
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1397
    packed-switch p1, :pswitch_data_0

    .line 1405
    :goto_0
    return-void

    .line 1399
    :pswitch_0
    iput-boolean v1, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekAll:Z

    .line 1400
    iput-boolean v1, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z

    .line 1401
    iput-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekAllFininsh:Z

    .line 1402
    iput v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekSaveCount:I

    goto :goto_0

    .line 1397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const v9, 0x7f050028

    const v8, 0x7f02001a

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1103
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1104
    const/4 v1, 0x0

    .line 1105
    .local v1, order:I
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1106
    iget-boolean v3, p0, Lcom/miui/fmradio/FMRadioMain;->mIsFMRadioEnabled:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/miui/fmradio/FMRadioMain;->mIsMute:Z

    if-nez v3, :cond_4

    .line 1107
    iget-boolean v3, p0, Lcom/miui/fmradio/FMRadioMain;->mStationListMode:Z

    if-eqz v3, :cond_0

    .line 1108
    const/4 v3, 0x3

    add-int/lit8 v2, v1, 0x1

    .end local v1           #order:I
    .local v2, order:I
    const v4, 0x7f050024

    invoke-interface {p1, v5, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020020

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1109
    add-int/lit8 v1, v2, 0x1

    .end local v2           #order:I
    .restart local v1       #order:I
    const v3, 0x7f050029

    invoke-interface {p1, v5, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02001e

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1134
    :goto_0
    return v6

    .line 1111
    :cond_0
    const/4 v3, 0x6

    add-int/lit8 v2, v1, 0x1

    .end local v1           #order:I
    .restart local v2       #order:I
    const v4, 0x7f050025

    invoke-interface {p1, v5, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020022

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1112
    invoke-static {}, Lcom/miui/fmradio/FMRadioUtils;->getFMRadioAudioRouting()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v6

    .line 1113
    .local v0, isByHeadset:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 1114
    const/4 v3, 0x4

    add-int/lit8 v1, v2, 0x1

    .end local v2           #order:I
    .restart local v1       #order:I
    const v4, 0x7f050026

    invoke-interface {p1, v5, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02001d

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1121
    :goto_2
    iget v3, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    invoke-static {v3}, Lcom/miui/fmradio/FMRadioUtils;->convertIntToFloatFreq(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/miui/fmradio/FMRadioUtils;->isFreqExistInDatabase(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1123
    add-int/lit8 v2, v1, 0x1

    .end local v1           #order:I
    .restart local v2       #order:I
    const v3, 0x7f050022

    invoke-interface {p1, v5, v6, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02001f

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v1, v2

    .line 1127
    .end local v2           #order:I
    .restart local v1       #order:I
    :cond_1
    const/16 v3, 0x8

    add-int/lit8 v2, v1, 0x1

    .end local v1           #order:I
    .restart local v2       #order:I
    const v4, 0x7f050040

    invoke-interface {p1, v5, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020021

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1128
    const/4 v3, 0x7

    add-int/lit8 v1, v2, 0x1

    .end local v2           #order:I
    .restart local v1       #order:I
    const v4, 0x7f050021

    invoke-interface {p1, v5, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02001c

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1129
    add-int/lit8 v2, v1, 0x1

    .end local v1           #order:I
    .restart local v2       #order:I
    invoke-interface {p1, v5, v7, v1, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v1, v2

    .line 1130
    .end local v2           #order:I
    .restart local v1       #order:I
    goto :goto_0

    .end local v0           #isByHeadset:Z
    .end local v1           #order:I
    .restart local v2       #order:I
    :cond_2
    move v0, v5

    .line 1112
    goto :goto_1

    .line 1117
    .restart local v0       #isByHeadset:Z
    :cond_3
    const/4 v3, 0x5

    add-int/lit8 v1, v2, 0x1

    .end local v2           #order:I
    .restart local v1       #order:I
    const v4, 0x7f050027

    invoke-interface {p1, v5, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02001b

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 1132
    .end local v0           #isByHeadset:Z
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1           #order:I
    .restart local v2       #order:I
    invoke-interface {p1, v5, v7, v1, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v1, v2

    .end local v2           #order:I
    .restart local v1       #order:I
    goto/16 :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUserTouch"

    .prologue
    .line 647
    if-eqz p3, :cond_0

    .line 649
    const v0, 0x153d8

    add-int/2addr v0, p2

    iput v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekbarFreq:I

    .line 651
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekbarFreq:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekbarFreq:I

    .line 652
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->updateFrequencyDisplay()V

    .line 654
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 262
    const-string v0, "MainActivity"

    const-string v1, "onRestart() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->checkIfCanStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsFMServiceBind:Z

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->IsFMRadioServiceStillRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-static {p0}, Lcom/miui/fmradio/FMRadioUtils;->unbindFromService(Landroid/content/Context;)V

    .line 278
    new-instance v0, Lcom/miui/fmradio/FMRadioMain$3;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FMRadioMain$3;-><init>(Lcom/miui/fmradio/FMRadioMain;)V

    invoke-static {p0, v0}, Lcom/miui/fmradio/FMRadioUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 292
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 297
    const-string v0, "MainActivity"

    const-string v1, "onResume() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsOnPauseCalled:Z

    .line 299
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 300
    invoke-static {}, Lcom/miui/fmradio/FMRadioUtils;->isFMRadioMute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-static {}, Lcom/miui/fmradio/FMRadioUtils;->unmuteFMOnResume()V

    .line 303
    :cond_0
    return-void
.end method

.method public onSleepModeChanged()V
    .locals 0

    .prologue
    .line 1749
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->updateSleepMode()V

    .line 1750
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 253
    const-string v0, "MainActivity"

    const-string v1, "onStart() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->restoreLastStatus()V

    .line 256
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->updateDisplayPanel()V

    .line 257
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsCanEdit:Z

    .line 658
    invoke-direct {p0}, Lcom/miui/fmradio/FMRadioMain;->updateDisplayPanel()V

    .line 659
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 328
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 329
    const-string v0, "MainActivity"

    const-string v1, "onStop() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    const v1, 0x155cc

    .line 662
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mSeekbarFreq:I

    iput v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    .line 664
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    if-ge v0, v1, :cond_0

    .line 665
    iput v1, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    .line 667
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FMRadioMain;->enableUI(Z)V

    .line 668
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    invoke-static {v0}, Lcom/miui/fmradio/FMRadioUtils;->setFMRadioFrequency(I)V

    .line 669
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 992
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 993
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLongPressed:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060013

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060012

    if-ne v0, v1, :cond_3

    .line 994
    :cond_0
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLongPressed:Z

    .line 995
    iget v0, p0, Lcom/miui/fmradio/FMRadioMain;->mCounter:I

    invoke-static {v0}, Lcom/miui/fmradio/FMRadioUtils;->setFMRadioFrequency(I)V

    .line 1011
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/fmradio/FMRadioMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 1013
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 1014
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1037
    :cond_2
    :goto_1
    return v2

    .line 997
    :cond_3
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekbackwardLongPressed:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060015

    if-ne v0, v1, :cond_4

    .line 998
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 999
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekbackwardLongPressed:Z

    .line 1000
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsCanEdit:Z

    if-nez v0, :cond_1

    .line 1001
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z

    goto :goto_0

    .line 1003
    :cond_4
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekforwardLongPressed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060016

    if-ne v0, v1, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1005
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsSeekforwardLongPressed:Z

    .line 1006
    iget-boolean v0, p0, Lcom/miui/fmradio/FMRadioMain;->mIsCanEdit:Z

    if-nez v0, :cond_1

    .line 1007
    iput-boolean v2, p0, Lcom/miui/fmradio/FMRadioMain;->mIsLastSeekInvalid:Z

    goto :goto_0

    .line 1016
    :sswitch_0
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->vibratePatternE3:[B

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateEx([B)V

    goto :goto_1

    .line 1019
    :sswitch_1
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->vibratePatternE3:[B

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateEx([B)V

    goto :goto_1

    .line 1022
    :sswitch_2
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->vibratePatternE2:[B

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateEx([B)V

    goto :goto_1

    .line 1025
    :sswitch_3
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->vibratePatternE1:[B

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateEx([B)V

    goto :goto_1

    .line 1028
    :sswitch_4
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->vibratePatternE1:[B

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateEx([B)V

    goto :goto_1

    .line 1031
    :sswitch_5
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain;->vibratePatternE1:[B

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateEx([B)V

    goto :goto_1

    .line 1014
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060004 -> :sswitch_2
        0x7f060012 -> :sswitch_1
        0x7f060013 -> :sswitch_0
        0x7f060014 -> :sswitch_5
        0x7f060015 -> :sswitch_3
        0x7f060016 -> :sswitch_4
    .end sparse-switch
.end method
