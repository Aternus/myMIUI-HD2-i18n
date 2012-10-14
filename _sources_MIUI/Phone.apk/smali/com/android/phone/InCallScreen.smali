.class public Lcom/android/phone/InCallScreen;
.super Landroid/app/Activity;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallScreen$17;,
        Lcom/android/phone/InCallScreen$ActivityAfterCallSession;,
        Lcom/android/phone/InCallScreen$InCallInitStatus;,
        Lcom/android/phone/InCallScreen$InCallScreenMode;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final mDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private mActivityAfterCallSession:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field mBottomCenterButtons:Landroid/view/ViewGroup;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field mCallCard:Lcom/android/phone/CallCard;

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field private mCallRecorder:Landroid/media/MediaRecorder;

.field private mCurrentRecordFileName:Ljava/lang/String;

.field mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field private mExitingECMDialog:Landroid/app/AlertDialog;

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mInCallControlState:Lcom/android/phone/InCallControlState;

.field private mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field private mInCallPanel:Landroid/view/ViewGroup;

.field private mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field private mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

.field private mIsDestroyed:Z

.field private mIsForegroundActivity:Z

.field private mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field private mMainFrame:Landroid/view/ViewGroup;

.field private mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mNeedShowCallLostDialog:Z

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Landroid/app/AlertDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPostDialStrAfterPause:Ljava/lang/String;

.field private mProviderAddress:Ljava/lang/String;

.field private mProviderGatewayUri:Landroid/net/Uri;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderLabel:Ljava/lang/CharSequence;

.field private mProviderOverlayVisible:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredForPhoneStates:Z

.field private mSmsBackNumber:Ljava/lang/String;

.field private mSmsReject:Z

.field private mStorageMonitor:Lcom/android/phone/StorageMonitor;

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mTouchLockFadeIn:Landroid/view/animation/Animation;

.field private mTouchLockIcon:Landroid/view/View;

.field private mTouchLockLastTouchTime:J

.field private mTouchLockOverlay:Landroid/view/View;

.field private mUseTouchLockOverlay:Z

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptText:Landroid/widget/EditText;

.field public otaUtils:Lcom/android/phone/OtaUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    .line 336
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/InCallScreen;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 234
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 284
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 322
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 323
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 327
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 349
    sget-object v0, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;->NOTHING:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mActivityAfterCallSession:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    .line 351
    new-instance v0, Lcom/android/phone/InCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$1;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    .line 526
    new-instance v0, Lcom/android/phone/InCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$2;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMMICancel()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->touchLockTimerExpired()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->startCallRecord()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/InCallScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/phone/InCallScreen;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/phone/InCallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->stopCallRecord(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private addVoiceMailNumberPanel()V
    .locals 2

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2852
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2853
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2855
    :cond_0
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "addVoiceMailNumberPanel: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2856
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 2858
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "show vm setting"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2861
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2862
    const-class v1, Lcom/android/phone/CallFeaturesMoreSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2863
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 2864
    return-void
.end method

.method private bailOutAfterErrorDialog()V
    .locals 1

    .prologue
    .line 3736
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 3737
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3738
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 3741
    :cond_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "bailOutAfterErrorDialog(): end InCallScreen session..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3749
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 3750
    return-void
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 3
    .parameter

    .prologue
    .line 2780
    packed-switch p1, :pswitch_data_0

    .line 2805
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2783
    :pswitch_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 2802
    :goto_0
    return-object v0

    .line 2787
    :pswitch_1
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 2798
    :pswitch_2
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 2802
    :pswitch_3
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->OUT_OF_SERVICE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 2780
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkIsOtaCall(Landroid/content/Intent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4911
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    .line 4979
    :goto_0
    return v0

    .line 4915
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    .line 4916
    goto :goto_0

    .line 4919
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4921
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v1, :cond_5

    .line 4923
    :cond_3
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "checkIsOtaCall: OtaUtils.CdmaOtaScreenState not initialized"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_4
    move v0, v3

    .line 4924
    goto :goto_0

    .line 4927
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 4929
    const-string v2, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4930
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "checkIsOtaCall action = ACTION_SHOW_ACTIVATION"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4931
    :cond_6
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v1, :cond_8

    .line 4932
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "checkIsOtaCall: ACTION_SHOW_ACTIVATION is not handled before"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4933
    :cond_7
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v4, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 4934
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    :cond_8
    move v6, v4

    .line 4973
    :goto_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIsOtaCall: isOtaCall ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4974
    :cond_9
    if-eqz v6, :cond_b

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_b

    .line 4975
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "checkIsOtaCall: creating OtaUtils..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4976
    :cond_a
    new-instance v0, Lcom/android/phone/OtaUtils;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;Lcom/android/phone/DTMFTwelveKeyDialer;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    :cond_b
    move v0, v6

    .line 4979
    goto/16 :goto_0

    .line 4938
    :cond_c
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4942
    :cond_d
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4947
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4948
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "checkIsOtaCall action ACTION_CALL, it is valid OTA number"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_e
    move v0, v4

    :goto_2
    move v6, v0

    .line 4951
    goto :goto_1

    .line 4943
    :catch_0
    move-exception v0

    .line 4944
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "Error retrieving number using the api getInitialNumber()"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_f
    move v0, v3

    .line 4945
    goto/16 :goto_0

    .line 4951
    :cond_10
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4952
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_11

    const-string v1, "checkIsOtaCall action ACTION_MAIN"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4953
    :cond_11
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    .line 4954
    if-eqz v1, :cond_13

    .line 4955
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIsOtaCall isRingingCall: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_12
    move v0, v3

    .line 4956
    goto/16 :goto_0

    .line 4957
    :cond_13
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-eq v1, v2, :cond_14

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v2, :cond_16

    .line 4961
    :cond_14
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_15

    const-string v0, "checkIsOtaCall action ACTION_MAIN, OTA call already in progress"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_15
    move v6, v4

    .line 4962
    goto/16 :goto_1

    .line 4964
    :cond_16
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_18

    .line 4966
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_17

    const-string v0, "checkIsOtaCall action ACTION_MAIN, OTA call in progress with UNDEFINED"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_17
    move v6, v4

    .line 4968
    goto/16 :goto_1

    :cond_18
    move v6, v3

    goto/16 :goto_1

    :cond_19
    move v0, v3

    goto :goto_2
.end method

.method private clearProvider()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5052
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 5053
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    .line 5054
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 5055
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    .line 5056
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    .line 5057
    return-void
.end method

.method private createWildPromptView()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/high16 v7, 0x4160

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x5

    .line 2337
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2338
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2339
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2341
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2345
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2346
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2347
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2348
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2350
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2352
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    .line 2353
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 2354
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2355
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 2356
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 2357
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 2358
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const v2, 0x1080018

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 2360
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2363
    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2365
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2367
    return-object v0
.end method

.method private delayedCleanupAfterDisconnect()V
    .locals 1

    .prologue
    .line 2904
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2906
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2908
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- delayedCleanupAfterDisconnect: phone is idle..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2912
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_2

    .line 2913
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- delayedCleanupAfterDisconnect: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2934
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showActivityAfterCallSession()V

    .line 2936
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 2944
    :cond_2
    :goto_0
    return-void

    .line 2941
    :cond_3
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "- delayedCleanupAfterDisconnect: staying on the InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2942
    :cond_4
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    goto :goto_0
.end method

.method private dismissAllDialogs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3759
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "dismissAllDialogs()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3766
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 3768
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3769
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3771
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 3773
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3774
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 3776
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 3778
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3779
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 3781
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 3783
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3784
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3786
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 3788
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3789
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3791
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 3793
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3794
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 3796
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 3798
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3799
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 3801
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_9

    .line 3804
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 3806
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    .line 3807
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3808
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3809
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 3811
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    .line 3812
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3813
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3814
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 3816
    :cond_d
    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .locals 1

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2868
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2871
    :cond_0
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "dontAddVoiceMailNumber: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2872
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 2873
    return-void
.end method

.method private enableTouchLock(Z)V
    .locals 2
    .parameter

    .prologue
    .line 4652
    if-eqz p1, :cond_3

    .line 4655
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    if-nez v0, :cond_1

    .line 4656
    const-string v0, "InCallScreen"

    const-string v1, "enableTouchLock: touch lock isn\'t used on this device!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4692
    :cond_0
    :goto_0
    return-void

    .line 4662
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4668
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4674
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-nez v0, :cond_2

    .line 4675
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initTouchLock()V

    .line 4679
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4680
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mTouchLockFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 4690
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private endInCallScreenSession(Z)V
    .locals 2
    .parameter "forceFinish"

    .prologue
    .line 1106
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endInCallScreenSession("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1108
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1110
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1111
    sget-object v0, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;->NOTHING:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mActivityAfterCallSession:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    .line 1112
    if-eqz p1, :cond_2

    .line 1113
    const-string v0, "InCallScreen"

    const-string v1, "endInCallScreenSession(): FORCING a call to super.finish()!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1119
    :goto_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 1121
    :cond_1
    return-void

    .line 1117
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method private getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    const-string v2, "android.intent.extra.PHONE_NUMBER"

    .line 2571
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2573
    if-nez v0, :cond_0

    .line 2574
    const/4 v0, 0x0

    .line 2582
    :goto_0
    return-object v0

    .line 2577
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2579
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2582
    :cond_1
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleCallKey()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1420
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 1421
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 1422
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    .line 1424
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 1425
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 1429
    if-eqz v0, :cond_2

    .line 1431
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "answerCall: First Incoming and Call Waiting scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1432
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 1491
    :cond_1
    :goto_0
    return v5

    .line 1434
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1436
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "answerCall: Merge 3-way call scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1438
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 1439
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1442
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "answerCall: Switch btwn 2 calls scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1443
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 1445
    :cond_6
    if-eq v3, v5, :cond_7

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    .line 1447
    :cond_7
    if-eqz v0, :cond_8

    .line 1458
    const-string v0, "InCallScreen"

    const-string v1, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 1465
    :cond_8
    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    .line 1467
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "handleCallKey: both lines in use ==> swap calls."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1468
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 1469
    :cond_a
    if-eqz v2, :cond_1

    .line 1472
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "handleCallKey: call on hold ==> unhold."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1473
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 1486
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1358
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMissingVoiceMailNumber()V
    .locals 5

    .prologue
    .line 2810
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "handleMissingVoiceMailNumber"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2812
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 2813
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2815
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 2816
    const/16 v2, 0x6a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2818
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c002b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c002c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0024

    new-instance v4, Lcom/android/phone/InCallScreen$13;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/InCallScreen$13;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c002d

    new-instance v4, Lcom/android/phone/InCallScreen$12;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/InCallScreen$12;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/InCallScreen$11;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InCallScreen$11;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2844
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2847
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2848
    return-void
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 2157
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2159
    if-eqz v0, :cond_0

    .line 2160
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 2166
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v2, v0}, Lcom/android/phone/CallCard;->updateForPostDialCharProcessed(Lcom/android/internal/telephony/Connection;)V

    .line 2168
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2169
    sget-object v3, Lcom/android/phone/InCallScreen$17;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 2229
    :cond_0
    :goto_0
    return-void

    .line 2171
    :pswitch_0
    if-ne v2, v4, :cond_2

    .line 2172
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 2173
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    if-eqz v1, :cond_1

    .line 2174
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->showPausePromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 2176
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 2177
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->startLocalToneCdma(C)V

    goto :goto_0

    .line 2179
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalDtmfTone()V

    .line 2180
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/16 v1, 0x78

    invoke-virtual {v0, p2, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->playLocalDtmfTone(CI)V

    goto :goto_0

    .line 2190
    :pswitch_1
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "handlePostOnDialChars: show WAIT prompt..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2191
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v1

    .line 2192
    if-ne v2, v4, :cond_4

    .line 2193
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 2194
    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 2195
    :cond_4
    if-ne v2, v5, :cond_5

    .line 2196
    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogGSM(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 2197
    :cond_5
    const/4 v0, 0x3

    if-ne v2, v0, :cond_6

    .line 2198
    const-string v0, "InCallScreen"

    const-string v1, "SipPhone doesn\'t support post dial yet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2200
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2205
    :pswitch_2
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "handlePostOnDialChars: show WILD prompt"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2206
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 2210
    :pswitch_3
    if-ne v2, v4, :cond_8

    .line 2211
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    goto :goto_0

    .line 2213
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalDtmfTone()V

    goto/16 :goto_0

    .line 2218
    :pswitch_4
    if-ne v2, v4, :cond_0

    .line 2219
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    .line 2220
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 2221
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    goto/16 :goto_0

    .line 2169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V
    .locals 5
    .parameter

    .prologue
    const v3, 0x7f0c0147

    const/4 v2, 0x1

    const-string v4, "InCallScreen"

    .line 3529
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError(): status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3541
    :cond_0
    sget-object v0, Lcom/android/phone/InCallScreen$17;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3611
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError: unexpected status code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    invoke-direct {p0, v3, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    .line 3615
    :cond_1
    :goto_0
    return-void

    .line 3547
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleMissingVoiceMailNumber()V

    goto :goto_0

    .line 3558
    :pswitch_1
    const v0, 0x7f0c0143

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 3565
    :pswitch_2
    const v0, 0x7f0c0144

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 3570
    :pswitch_3
    const v0, 0x7f0c0145

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 3576
    :pswitch_4
    const-string v0, "InCallScreen"

    const-string v0, "handleStartupError: unexpected PHONE_NOT_IN_USE status"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3584
    :pswitch_5
    const v0, 0x7f0c0146

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 3596
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 3597
    const v0, 0x7f0c0148

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3607
    :pswitch_7
    invoke-direct {p0, v3, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 3541
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private initInCallScreen()V
    .locals 2

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1323
    const v0, 0x7f070074

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    .line 1324
    const v0, 0x7f070075

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    .line 1325
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBottomCenterButtons:Landroid/view/ViewGroup;

    .line 1328
    const v0, 0x7f070076

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCard;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    .line 1330
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1333
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallTouchUi()V

    .line 1336
    new-instance v0, Lcom/android/phone/InCallControlState;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/InCallControlState;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    .line 1339
    new-instance v0, Lcom/android/phone/ManageConferenceUtils;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/ManageConferenceUtils;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    .line 1340
    return-void
.end method

.method private initInCallTouchUi()V
    .locals 3

    .prologue
    .line 4295
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "initInCallTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4300
    :cond_0
    const v0, 0x7f070078

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallTouchUi;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    .line 4301
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0, p0}, Lcom/android/phone/InCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 4302
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/InCallSlidingPanel;

    const v1, 0x7f070079

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070020

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/InCallSlidingPanel;->setSlidingTarget(Landroid/view/View;Landroid/view/View;)V

    .line 4303
    return-void
.end method

.method private initOtaState()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4996
    .line 4998
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4999
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5001
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v1, :cond_2

    .line 5002
    :cond_0
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "initOtaState func - All CdmaOTA utility classes not initialized"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_1
    move v0, v2

    .line 5031
    :goto_0
    return v0

    .line 5006
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->checkIsOtaCall(Landroid/content/Intent;)Z

    move-result v1

    .line 5007
    if-eqz v1, :cond_a

    .line 5008
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v2

    .line 5010
    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v2, v3, :cond_4

    .line 5011
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "initOtaState - in OTA Normal mode"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5012
    :cond_3
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    :goto_1
    move v0, v1

    .line 5025
    goto :goto_0

    .line 5013
    :cond_4
    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v2, v3, :cond_6

    .line 5015
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "initOtaState - in OTA END mode"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5016
    :cond_5
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 5017
    :cond_6
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v2, :cond_8

    .line 5019
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "initOtaState - set OTA END Mode"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5020
    :cond_7
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 5022
    :cond_8
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "initOtaState - Set OTA NORMAL Mode"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5023
    :cond_9
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 5026
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_b

    .line 5027
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0, v2}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    move v0, v2

    goto :goto_0
.end method

.method private initTouchLock()V
    .locals 2

    .prologue
    const-string v1, "InCallScreen"

    .line 4604
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4605
    const-string v0, "InCallScreen"

    const-string v0, "initTouchLock: already initialized!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4625
    :goto_0
    return-void

    .line 4609
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    if-nez v0, :cond_1

    .line 4610
    const-string v0, "InCallScreen"

    const-string v0, "initTouchLock: touch lock isn\'t used on this device!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4614
    :cond_1
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    .line 4616
    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    .line 4621
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4622
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4624
    const/high16 v0, 0x7f04

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockFadeIn:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method private internalSmsBack()V
    .locals 6

    .prologue
    .line 3467
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getCurrentCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3468
    if-nez v0, :cond_1

    .line 3484
    :cond_0
    :goto_0
    return-void

    .line 3471
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mSmsBackNumber:Ljava/lang/String;

    .line 3472
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSmsBackNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3474
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    .line 3476
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "predefined_hangup_sms"

    const v2, 0x7f0c01d7

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3479
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "quicksmsto"

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mSmsBackNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3481
    const-string v2, "sms_body"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3482
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private internalSwapCalls()V
    .locals 2

    .prologue
    .line 3917
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalSwapCalls()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3922
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 3927
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3932
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3933
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 3934
    if-eqz v0, :cond_1

    .line 3935
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    .line 3938
    :cond_1
    return-void
.end method

.method private isTouchLocked()Z
    .locals 1

    .prologue
    .line 4628
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 5122
    const-string v0, "InCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5123
    return-void
.end method

.method private okToDialDTMFTones()Z
    .locals 5

    .prologue
    .line 4248
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 4249
    .local v2, hasRingingCall:Z
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 4264
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_1

    :cond_0
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 4275
    .local v0, canDial:Z
    :goto_0
    return v0

    .line 4264
    .end local v0           #canDial:Z
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private onContactClick()V
    .locals 2

    .prologue
    .line 3461
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3462
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3463
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3464
    return-void
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, "InCallScreen"

    .line 1793
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1794
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1795
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1799
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1801
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v10

    .line 1802
    :goto_0
    if-eqz v3, :cond_1

    .line 1803
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopCallRecord()V

    .line 1807
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v13, :cond_4

    move v4, v10

    .line 1808
    :goto_1
    if-eqz v4, :cond_23

    .line 1811
    if-eqz v3, :cond_23

    .line 1812
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_auto_retry"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1818
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    .line 1819
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v7, v8, :cond_5

    iget-object v7, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v7, :cond_5

    iget-object v7, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v7, v7, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v7, :cond_5

    .line 1822
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 1823
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2090
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v3, v9

    .line 1801
    goto :goto_0

    :cond_4
    move v4, v9

    .line 1807
    goto :goto_1

    .line 1825
    :cond_5
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v7, v8, :cond_6

    iget-object v7, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v7, :cond_7

    iget-object v7, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v7, v7, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-eqz v7, :cond_7

    .line 1827
    :cond_6
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "onDisconnect: OTA Call end already handled"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1834
    :cond_7
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v7, :cond_8

    .line 1835
    const v0, 0x7f0c0019

    invoke-direct {p0, v0, v9}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1837
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v7, :cond_9

    .line 1838
    const v0, 0x7f0c0018

    invoke-direct {p0, v0, v9}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1840
    :cond_9
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v7, :cond_a

    .line 1841
    const v0, 0x7f0c001a

    invoke-direct {p0, v0, v9}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1843
    :cond_a
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v7, :cond_b

    .line 1844
    const v0, 0x7f0c001b

    invoke-direct {p0, v0, v9}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1846
    :cond_b
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v7, :cond_c

    .line 1847
    const v0, 0x7f0c001c

    invoke-direct {p0, v0, v9}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1851
    :cond_c
    if-eqz v4, :cond_d

    .line 1852
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 1853
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_11

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v7, :cond_11

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v7, :cond_11

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v7, :cond_11

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v7, :cond_11

    .line 1858
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 1892
    :cond_d
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1893
    if-eqz v0, :cond_f

    .line 1902
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1903
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v10, :cond_f

    .line 1904
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1905
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v5, :cond_e

    .line 1915
    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1916
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 1925
    :cond_f
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "emergency_call_retry_count"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1941
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1947
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v4, :cond_10

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v4, :cond_10

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v4, :cond_15

    if-lez v0, :cond_15

    :cond_10
    if-eqz v3, :cond_15

    move v4, v10

    .line 1954
    :goto_5
    if-eqz v4, :cond_16

    .line 1961
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    .line 1968
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v3, :cond_2

    if-lez v0, :cond_2

    .line 1970
    const-string v1, "InCallScreen"

    const-string v1, "onDisconnect: OUT_OF_SERVICE; need to retry emergency call!"

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    const-string v1, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- emergencyCallRetryCount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    const-class v0, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1985
    const-string v1, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- launching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1859
    :cond_11
    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v7, :cond_12

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_d

    :cond_12
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v4, :cond_d

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v4, :cond_d

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v4, :cond_d

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v4, :cond_d

    .line 1865
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v4, :cond_13

    .line 1867
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 1868
    iput-boolean v9, p0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 1870
    :cond_13
    if-nez v5, :cond_14

    .line 1872
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 1873
    iput-boolean v9, p0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 1877
    :cond_14
    iput-boolean v10, p0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    :cond_15
    move v4, v9

    .line 1947
    goto/16 :goto_5

    .line 2008
    :cond_16
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2012
    if-eqz v3, :cond_18

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2015
    :cond_17
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 2020
    :cond_18
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 2021
    if-nez v0, :cond_1c

    .line 2026
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_19

    .line 2028
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2029
    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2031
    :cond_19
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1a

    .line 2033
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2034
    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2036
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1c

    .line 2037
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1b

    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2038
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2039
    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 2053
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v13, :cond_1e

    .line 2054
    if-nez v3, :cond_1e

    .line 2058
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2062
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "onDisconnect: Call Collision case - staying on InCallScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2063
    :cond_1d
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    goto/16 :goto_3

    .line 2073
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v2, :cond_21

    .line 2074
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v0, :cond_20

    const/16 v0, 0xc8

    .line 2086
    :cond_1f
    :goto_6
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2087
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 2074
    :cond_20
    const/16 v0, 0x14

    goto :goto_6

    .line 2077
    :cond_21
    const/16 v0, 0xc8

    .line 2078
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v2, :cond_1f

    .line 2079
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager;->getNetworkType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 2080
    const/16 v0, 0xfa0

    goto :goto_6

    .line 2082
    :cond_22
    const/16 v0, 0x7d0

    goto :goto_6

    :cond_23
    move v5, v9

    goto/16 :goto_2
.end method

.method private onHoldClick()V
    .locals 4

    .prologue
    .line 3104
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 3105
    .local v0, hasActiveCall:Z
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 3108
    .local v1, hasHoldingCall:Z
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 3110
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3117
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 3118
    return-void

    .line 3111
    :cond_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 3113
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private onMMICancel()V
    .locals 1

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 2143
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onMMICancel: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2144
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 2145
    return-void
.end method

.method private onMMIInitiate(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 2103
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v2, :cond_0

    .line 2120
    :goto_0
    return-void

    .line 2112
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 2114
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 2117
    .local v1, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x35

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2118
    .local v0, message:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v1, v0, v2}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private onMuteClick()V
    .locals 2

    .prologue
    .line 3151
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 3152
    .local v0, newMuteState:Z
    :goto_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3153
    return-void

    .line 3151
    .end local v0           #newMuteState:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private onNoteClick()V
    .locals 5

    .prologue
    .line 3076
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getCurrentCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3077
    if-nez v0, :cond_0

    .line 3099
    :goto_0
    return-void

    .line 3082
    :cond_0
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/phone/CallNotifier;->getLogNumber(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v1

    .line 3089
    if-nez v1, :cond_1

    .line 3090
    const-string v2, "InCallScreen"

    const-string v3, "number is null when record through note"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    .line 3093
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3094
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3095
    const-string v4, "vnd.android.cursor.item/call_note"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3096
    const-string v4, "android.intent.extra.PHONE_NUMBER"

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3097
    const-string v1, "com.miui.notes.call_date"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3098
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter

    .prologue
    .line 1750
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onPhoneStateChanged()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1752
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1753
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_key_auto_record_call"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isCallRecording()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1758
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1764
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_4

    .line 1765
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "onPhoneStateChanged: Activity not in foreground! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1774
    :cond_3
    :goto_0
    return-void

    .line 1769
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 1773
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto :goto_0
.end method

.method private onShowHideDialpad()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3192
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3193
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 3197
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 3198
    return-void

    .line 3195
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private placeCall(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const-string v8, "\'."

    const-string v7, "InCallScreen"

    .line 2594
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall()...  intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2601
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    .line 2605
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 2613
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 2614
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 2615
    :goto_0
    const-string v3, "android.phone.extra.SIP_PHONE_URI"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2617
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4, v2, v1, v3}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2621
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2636
    if-nez v1, :cond_5

    .line 2637
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 2761
    :cond_1
    :goto_1
    return-object v0

    .line 2614
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 2623
    :catch_0
    move-exception v1

    .line 2628
    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v1, :cond_3

    .line 2629
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "Voicemail number not reachable in current SIM card state."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2632
    :cond_3
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2633
    :cond_4
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_1

    .line 2641
    :cond_5
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    .line 2642
    const-string v4, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2644
    if-eqz v3, :cond_6

    if-nez v4, :cond_6

    .line 2645
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-CALL_EMERGENCY Intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " attempted to call emergency number "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_1

    .line 2649
    :cond_6
    if-nez v3, :cond_7

    if-eqz v4, :cond_7

    .line 2650
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received CALL_EMERGENCY Intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with non-emergency number "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- failing call."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 2664
    :cond_7
    if-eqz v3, :cond_a

    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v5, :cond_8

    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->OUT_OF_SERVICE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v0, v5, :cond_a

    .line 2667
    :cond_8
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: Emergency number detected with status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2668
    :cond_9
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 2669
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> UPDATING status to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2672
    :cond_a
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v5, :cond_b

    .line 2678
    if-eqz v3, :cond_1

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v0, v1, :cond_1

    .line 2679
    const-string v0, "InCallScreen"

    const-string v0, "placeCall: Trying to make emergency call while POWER_OFF!"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    const-string v0, "InCallScreen"

    const-string v0, "- starting EmergencyCallHandler, finishing InCallScreen..."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    const-class v0, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 2682
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 2683
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 2689
    :cond_b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2691
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2692
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_c

    const-string v5, "placeCall: isOtaSpNumber() returns true"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2693
    :cond_c
    sget-object v5, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 2694
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v5, :cond_d

    .line 2695
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v9, v5, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 2699
    :cond_d
    iput-boolean v9, p0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    .line 2706
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 2708
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    if-eqz v6, :cond_e

    if-nez v3, :cond_e

    if-nez v4, :cond_e

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isRoutableViaGateway(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2712
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    invoke-static {p0, v2, v1, v5, v4}, Lcom/android/phone/PhoneUtils;->placeCallVia(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v4

    .line 2718
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 2759
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: unknown callStatus "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 2715
    :cond_e
    invoke-static {v2, v1, v5}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v4

    goto :goto_2

    .line 2723
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v4, :cond_f

    .line 2724
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 2726
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2734
    :cond_f
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez v3, :cond_10

    .line 2735
    const-string v0, "InCallScreen"

    const-string v0, "About to exit ECM because of an outgoing non-emergency call"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showExitingECMDialog()V

    .line 2739
    :cond_10
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 2741
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2751
    :cond_11
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->DIALED_MMI:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 2753
    :pswitch_2
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 2718
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private registerForPhoneStates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1128
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1130
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1131
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1137
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1138
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1139
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1141
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1144
    :cond_0
    return-void
.end method

.method private resetTouchLockTimer()V
    .locals 5

    .prologue
    const/16 v4, 0x71

    .line 4710
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    if-nez v1, :cond_1

    .line 4728
    :cond_0
    :goto_0
    return-void

    .line 4712
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4713
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4722
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "short_keylight_delay_ms"

    const/16 v3, 0x1770

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4726
    .local v0, touchLockDelay:I
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V
    .locals 6
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "InCallScreen"

    .line 3948
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInCallScreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3949
    :cond_0
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 3950
    sget-object v0, Lcom/android/phone/InCallScreen$17;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4059
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 4063
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4064
    :goto_1
    return-void

    .line 3952
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3953
    const-string v0, "InCallScreen"

    const-string v0, "MANAGE_CONFERENCE: no active conference call!"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 3958
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 3961
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_3

    .line 3962
    :cond_2
    const-string v1, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MANAGE_CONFERENCE: Bogus TRUE from isConferenceCall(); connections = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 3975
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v1}, Lcom/android/phone/ManageConferenceUtils;->initManageConferencePanel()V

    .line 3977
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v1, v0}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    .line 3981
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v0, v3}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 3983
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 3994
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v0, v2}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 3997
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 4002
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4003
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v0, v2}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    goto :goto_0

    .line 4007
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 4009
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 4013
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 4015
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 4041
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 4045
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_5

    .line 4046
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_4

    .line 4047
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0, v3}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 4053
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 4050
    :cond_5
    const-string v0, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3950
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showActivityAfterCallSession()V
    .locals 3

    .prologue
    .line 2947
    const/4 v0, 0x0

    .line 2948
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mActivityAfterCallSession:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    sget-object v2, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;->CALL_LOG:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    if-ne v1, v2, :cond_0

    .line 2949
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2952
    :cond_0
    if-eqz v0, :cond_1

    .line 2953
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2954
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 2956
    :cond_1
    return-void
.end method

.method private showCallLostDialog()V
    .locals 2

    .prologue
    .line 3662
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3665
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    .line 3666
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3681
    :cond_1
    :goto_0
    return-void

    .line 3671
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 3672
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3676
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c001e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 3680
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showExitingECMDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3716
    const-string v0, "InCallScreen"

    const-string v1, "showExitingECMDialog()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 3719
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3720
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3721
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 3725
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0182

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 3730
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3732
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3733
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3622
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3623
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showGenericErrorDialog(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3627
    :cond_0
    if-eqz p2, :cond_1

    .line 3628
    new-instance v1, Lcom/android/phone/InCallScreen$15;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$15;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 3645
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0204

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 3651
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3655
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3658
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3659
    return-void

    .line 3635
    :cond_1
    new-instance v1, Lcom/android/phone/InCallScreen$16;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$16;-><init>(Lcom/android/phone/InCallScreen;)V

    goto :goto_0
.end method

.method private showPausePromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2316
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2318
    const v2, 0x7f0c0026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2319
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2321
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2322
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2323
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 2327
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 2330
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2332
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2333
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2334
    return-void
.end method

.method private showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2276
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showWaitPromptDialogCDMA: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2278
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2280
    const v2, 0x7f0c0025

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2281
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2284
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 2285
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2286
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2290
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0028

    new-instance v2, Lcom/android/phone/InCallScreen$8;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$8;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0029

    new-instance v2, Lcom/android/phone/InCallScreen$7;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$7;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2306
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2308
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2309
    return-void
.end method

.method private showWaitPromptDialogGSM(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2232
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showWaitPromptDialogGSM: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2234
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2236
    const v2, 0x7f0c0025

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2237
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 2241
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2242
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2246
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0027

    new-instance v2, Lcom/android/phone/InCallScreen$6;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$6;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InCallScreen$5;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/InCallScreen$5;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2263
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2265
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2266
    return-void
.end method

.method private showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .parameter

    .prologue
    .line 2371
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->createWildPromptView()Landroid/view/View;

    move-result-object v0

    .line 2373
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 2375
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2376
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2379
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0027

    new-instance v2, Lcom/android/phone/InCallScreen$10;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$10;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InCallScreen$9;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/InCallScreen$9;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2404
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2406
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2408
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2409
    return-void
.end method

.method private startCallRecord()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3306
    invoke-static {}, Lcom/android/phone/InCallControlState;->isSupportCallRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3418
    :cond_0
    :goto_0
    return-void

    .line 3310
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    if-nez v0, :cond_2

    .line 3311
    new-instance v0, Lcom/android/phone/StorageMonitor;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/StorageMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    .line 3314
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    new-instance v1, Lcom/android/phone/InCallScreen$14;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$14;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/StorageMonitor;->startMonitor(Lcom/android/phone/StorageMonitor$Listener;)I

    move-result v0

    .line 3321
    if-eqz v0, :cond_6

    .line 3322
    if-ne v0, v6, :cond_3

    .line 3323
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    invoke-virtual {v0}, Lcom/android/phone/StorageMonitor;->isUsingExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3324
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01a5

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3331
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_4

    .line 3332
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->onStopCallRecord()V

    .line 3334
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    invoke-virtual {v0}, Lcom/android/phone/StorageMonitor;->stopMonitor()V

    goto :goto_0

    .line 3326
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040017

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3338
    :cond_6
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    invoke-virtual {v2}, Lcom/android/phone/StorageMonitor;->isUsingExternalStorage()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroid/os/Environment;->getMIUIExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/sound_recorder/call_rec"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3342
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3343
    const/16 v0, 0x1ff

    invoke-static {v1, v0, v3, v3}, Landroid/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3344
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01a4

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3346
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_7

    .line 3347
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->onStopCallRecord()V

    .line 3349
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    invoke-virtual {v0}, Lcom/android/phone/StorageMonitor;->stopMonitor()V

    goto/16 :goto_0

    .line 3338
    :cond_8
    invoke-static {}, Landroid/os/Environment;->getMIUIInternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 3354
    :cond_9
    const-string v0, "start CallRecord!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3355
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_a

    .line 3356
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 3358
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 3359
    sget-boolean v0, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_c

    .line 3360
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 3364
    :goto_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 3365
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 3367
    :try_start_0
    sget-object v0, Lcom/android/phone/InCallScreen;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 3369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3370
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01a6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3371
    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3373
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v6

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3374
    const/4 v5, 0x0

    invoke-static {p0, v0, v5}, Lcom/android/phone/CallNotifier;->getLogNumber(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v0

    .line 3375
    if-nez v4, :cond_b

    .line 3376
    const/16 v4, 0x5f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3379
    :cond_b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v8

    .line 3380
    goto :goto_4

    .line 3362
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    goto :goto_3

    .line 3381
    :cond_d
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3382
    const/4 v5, 0x0

    invoke-static {p0, v0, v5}, Lcom/android/phone/CallNotifier;->getLogNumber(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v0

    .line 3383
    if-nez v4, :cond_e

    .line 3384
    const/16 v4, 0x5f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3387
    :cond_e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v8

    .line 3388
    goto :goto_5

    .line 3389
    :cond_f
    const-string v0, ".amr"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3391
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2c

    const/16 v4, 0x70

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v4, "00"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2a

    const/16 v4, 0x73

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3393
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    .line 3394
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 3395
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 3396
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 3397
    const-string v0, "CallRecord is started!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3398
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_10

    .line 3399
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->onStartCallRecord()V

    .line 3401
    :cond_10
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->notifyCallRecord()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3413
    :goto_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    invoke-virtual {v0}, Lcom/android/phone/StorageMonitor;->isUsingExternalStorage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3414
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040019

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3402
    :catch_0
    move-exception v0

    .line 3403
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 3404
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 3405
    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 3406
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_11

    .line 3407
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->onStopCallRecord()V

    .line 3409
    :cond_11
    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    .line 3410
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    invoke-virtual {v0}, Lcom/android/phone/StorageMonitor;->stopMonitor()V

    goto :goto_6
.end method

.method private stopCallRecord()V
    .locals 1

    .prologue
    .line 3421
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->stopCallRecord(I)V

    .line 3422
    return-void
.end method

.method private stopCallRecord(I)V
    .locals 10
    .parameter

    .prologue
    const/16 v9, 0x1ff

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 3425
    const-string v0, "stop CallRecord!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3426
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_5

    .line 3427
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    invoke-virtual {v0}, Lcom/android/phone/StorageMonitor;->stopMonitor()V

    .line 3428
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 3429
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 3430
    iput-object v8, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    .line 3431
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 3432
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->onStopCallRecord()V

    .line 3434
    :cond_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelCallRecord()V

    .line 3435
    if-nez p1, :cond_3

    .line 3436
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_call_recording_notification"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3438
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c01f9

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/phone/NotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V

    .line 3442
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-static {v0, v9, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3453
    :cond_2
    :goto_0
    iput-object v8, p0, Lcom/android/phone/InCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    .line 3457
    :goto_1
    return-void

    .line 3443
    :cond_3
    if-ne p1, v5, :cond_4

    .line 3444
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c01fb

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/phone/NotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V

    .line 3447
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCurrentRecordFileName:Ljava/lang/String;

    invoke-static {v0, v9, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0

    .line 3448
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3449
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c01fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1, v8}, Lcom/android/phone/NotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3455
    :cond_5
    const-string v0, "CallRecord is stopped already!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->stopTimer()V

    .line 1315
    :cond_0
    return-void
.end method

.method private syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2518
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "syncWithPhoneState()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2519
    :cond_0
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    .line 2527
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2529
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v2, v3, :cond_3

    .line 2534
    :cond_2
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 2550
    :goto_0
    return-object v2

    .line 2539
    :cond_3
    if-ne v1, v4, :cond_5

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v4

    .line 2542
    .local v0, hasPendingMmiCodes:Z
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_6

    .line 2545
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2546
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 2539
    .end local v0           #hasPendingMmiCodes:Z
    :cond_5
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1

    .line 2549
    .restart local v0       #hasPendingMmiCodes:Z
    :cond_6
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "syncWithPhoneState: phone is idle; we shouldn\'t be here!"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2550
    :cond_7
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0
.end method

.method private touchLockTimerExpired()V
    .locals 1

    .prologue
    .line 4738
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 4739
    return-void
.end method

.method private unregisterForPhoneStates()V
    .locals 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1148
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1149
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1150
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1151
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1152
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1153
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 1154
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1156
    return-void
.end method

.method private updateDialpadVisibility()V
    .locals 2

    .prologue
    .line 4132
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_1

    .line 4140
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 4141
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 4150
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 4160
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->usingSlidingDrawer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4161
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_1

    .line 4162
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f02000d

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setKeysBackgroundResource(I)V

    .line 4168
    :cond_1
    return-void

    .line 4162
    :cond_2
    const v1, 0x7f02000f

    goto :goto_0
.end method

.method private updateInCallTouchUi()V
    .locals 2

    .prologue
    .line 4309
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 4310
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 4312
    :cond_0
    return-void
.end method

.method private updateManageConferencePanelIfNecessary()V
    .locals 7

    .prologue
    const-string v6, "InCallScreen"

    const-string v5, "- syncWithPhoneState failed! status = "

    .line 4084
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 4085
    .local v0, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-nez v0, :cond_2

    .line 4088
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 4089
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v2

    .line 4090
    .local v2, status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v2, v3, :cond_1

    .line 4091
    const-string v3, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- syncWithPhoneState failed! status = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4094
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "updateManageConferencePanelIfNecessary: endInCallScreenSession... 1"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4095
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 4124
    .end local v2           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_1
    :goto_0
    return-void

    .line 4101
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4102
    .local v1, numConnections:I
    const/4 v3, 0x1

    if-gt v1, v3, :cond_4

    .line 4105
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 4106
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v2

    .line 4107
    .restart local v2       #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v2, v3, :cond_1

    .line 4108
    const-string v3, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- syncWithPhoneState failed! status = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4111
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "updateManageConferencePanelIfNecessary: endInCallScreenSession... 2"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4112
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_0

    .line 4120
    .end local v2           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3}, Lcom/android/phone/ManageConferenceUtils;->getNumCallersInConference()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 4122
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v3, v0}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    goto :goto_0
.end method

.method private updateProviderOverlay()V
    .locals 8

    .prologue
    const/16 v7, 0x79

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3497
    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3499
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    if-eqz v1, :cond_0

    .line 3500
    const v1, 0x7f0c018c

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3501
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3504
    const v1, 0x7f07007e

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3505
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3506
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3508
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3512
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 3513
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3514
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3518
    :goto_0
    return-void

    .line 3516
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 4

    .prologue
    .line 2416
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2423
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    .line 2424
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2504
    :cond_1
    :goto_0
    return-void

    .line 2428
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2430
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v2, :cond_5

    .line 2431
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "- updateScreen: OTA call state NORMAL..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2432
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 2433
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "- updateScreen: otaUtils is not null, call otaShowProperScreen"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2434
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    goto :goto_0

    .line 2437
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v2, :cond_c

    .line 2438
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "- updateScreen: OTA call ended state ..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2440
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 2441
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_9

    .line 2443
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "- updateScreen: OTA_STATUS_ACTIVATION"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2444
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 2445
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "- updateScreen: otaUtils is not null, call otaShowActivationScreen"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2447
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    goto :goto_0

    .line 2450
    :cond_9
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "- updateScreen: OTA Call end state for Dialogs"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2451
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 2452
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "- updateScreen: Show OTA Success Failure dialog"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2453
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowSuccessFailure()V

    goto :goto_0

    .line 2457
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_e

    .line 2458
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "- updateScreen: manage conference mode (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2459
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateManageConferencePanelIfNecessary()V

    goto/16 :goto_0

    .line 2461
    :cond_e
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_f

    .line 2462
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- updateScreen: call ended state (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2466
    :cond_f
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_10

    const-string v0, "- updateScreen: updating the in-call UI..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2467
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 2468
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 2469
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 2470
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 2473
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2474
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    goto/16 :goto_0

    .line 2480
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 2481
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2482
    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 2483
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2484
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2485
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v3, :cond_12

    .line 2487
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_13

    const-string v0, "show the Wait dialog for CDMA"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2488
    :cond_13
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    .line 2489
    invoke-direct {p0, v1, v0}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_1

    .line 2492
    :cond_14
    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    .line 2494
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2495
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_16

    .line 2496
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    .line 2497
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogGSM(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_2

    .line 2501
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method connectBluetoothAudio()V
    .locals 2

    .prologue
    .line 4553
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 4554
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 4564
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 4565
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    .line 4566
    return-void
.end method

.method disconnectBluetoothAudio()V
    .locals 1

    .prologue
    .line 4570
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 4571
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 4573
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 4574
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 1527
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1546
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1536
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1537
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- ignoring DPAD event while touch-locked..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1538
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1527
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 5061
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 5062
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 5063
    const/4 v0, 0x1

    return v0
.end method

.method public endInCallScreenSession()V
    .locals 1

    .prologue
    .line 1094
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "endInCallScreenSession()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1095
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 1096
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1082
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1083
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1084
    return-void
.end method

.method public getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;
    .locals 1

    .prologue
    .line 5039
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    invoke-virtual {v0}, Lcom/android/phone/InCallControlState;->update()V

    .line 5040
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    return-object v0
.end method

.method handleOnscreenButtonClick(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 3204
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnscreenButtonClick(id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3206
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 3277
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnscreenButtonClick: unexpected ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 3298
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 3299
    return-void

    .line 3214
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 3218
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    .line 3221
    :sswitch_2
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mSmsReject:Z

    .line 3222
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSmsBack()V

    goto :goto_0

    .line 3226
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onNoteClick()V

    goto :goto_0

    .line 3229
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->startCallRecord()V

    goto :goto_0

    .line 3232
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopCallRecord()V

    goto :goto_0

    .line 3235
    :sswitch_6
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    goto :goto_0

    .line 3239
    :sswitch_7
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 3242
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangup()V

    goto :goto_0

    .line 3245
    :sswitch_9
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onContactClick()V

    goto :goto_0

    .line 3248
    :sswitch_a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    goto :goto_0

    .line 3251
    :sswitch_b
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->onBluetoothClick(Z)V

    goto :goto_0

    .line 3254
    :sswitch_c
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->onHandsetOrHeadsetClick(Z)V

    goto :goto_0

    .line 3257
    :sswitch_d
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3258
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->onSpeakerClick()V

    goto :goto_0

    .line 3262
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->onSpeakerClick()V

    goto :goto_0

    .line 3265
    :sswitch_f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 3269
    :sswitch_10
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 3273
    :sswitch_11
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_0

    .line 3206
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070016 -> :sswitch_11
        0x7f070081 -> :sswitch_0
        0x7f070082 -> :sswitch_1
        0x7f070088 -> :sswitch_2
        0x7f070089 -> :sswitch_1
        0x7f07008d -> :sswitch_a
        0x7f07008e -> :sswitch_6
        0x7f07008f -> :sswitch_7
        0x7f070090 -> :sswitch_10
        0x7f070091 -> :sswitch_7
        0x7f070092 -> :sswitch_4
        0x7f070093 -> :sswitch_5
        0x7f070095 -> :sswitch_9
        0x7f070096 -> :sswitch_f
        0x7f070097 -> :sswitch_10
        0x7f070098 -> :sswitch_3
        0x7f07009a -> :sswitch_b
        0x7f07009b -> :sswitch_c
        0x7f07009c -> :sswitch_d
        0x7f07009e -> :sswitch_e
        0x7f0700a2 -> :sswitch_8
    .end sparse-switch
.end method

.method public handleOtaCallEnd()V
    .locals 3

    .prologue
    .line 4882
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4884
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "handleOtaCallEnd entering"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4885
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_3

    .line 4891
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "handleOtaCallEnd - Set OTA Call End stater"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4892
    :cond_2
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 4893
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 4895
    :cond_3
    return-void
.end method

.method internalAnswerAndEnd()V
    .locals 2

    .prologue
    .line 3887
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalAnswerAndEnd()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3891
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 3892
    return-void
.end method

.method internalAnswerCall()V
    .locals 4

    .prologue
    .line 3830
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 3832
    if-eqz v0, :cond_1

    .line 3833
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3834
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3835
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 3836
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 3837
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3839
    :cond_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 3869
    :cond_1
    :goto_0
    return-void

    .line 3841
    :cond_2
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    .line 3847
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 3848
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    .line 3850
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 3851
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3855
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 3861
    :cond_5
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "internalAnswerCall: answering..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3862
    :cond_6
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 3866
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method internalHangup()V
    .locals 1

    .prologue
    .line 3909
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3910
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 3911
    return-void
.end method

.method internalHangupRingingCall()V
    .locals 1

    .prologue
    .line 3898
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3902
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 3903
    return-void
.end method

.method internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v4, "com.android.phone.ShowDialpad"

    .line 1201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1202
    :cond_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1309
    :cond_1
    :goto_0
    return-object v0

    .line 1205
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->checkIsOtaCall(Landroid/content/Intent;)Z

    .line 1207
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1208
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalResolveIntent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1215
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 1219
    const-string v2, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1220
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 1221
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 1222
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v0, :cond_4

    .line 1224
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v5, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 1225
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1229
    :cond_4
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 1230
    :cond_5
    const-string v2, "android.intent.action.ANSWER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1231
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 1232
    invoke-virtual {v1, v3}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1233
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 1234
    :cond_6
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1236
    :cond_7
    invoke-virtual {v1, v3}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1241
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1242
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    .line 1243
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 1244
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    .line 1245
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    .line 1246
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 1248
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1250
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearProvider()V

    .line 1255
    :cond_9
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->placeCall(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    .line 1256
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v0, v2, :cond_a

    .line 1259
    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 1262
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mActivityAfterCallSession:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    sget-object v2, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;->NOTHING:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    if-ne v1, v2, :cond_a

    .line 1263
    sget-object v1, Lcom/android/phone/InCallScreen$ActivityAfterCallSession;->CALL_LOG:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mActivityAfterCallSession:Lcom/android/phone/InCallScreen$ActivityAfterCallSession;

    .line 1270
    :cond_a
    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1271
    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1272
    if-eqz v1, :cond_c

    .line 1273
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    goto/16 :goto_0

    .line 1253
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearProvider()V

    goto :goto_1

    .line 1275
    :cond_c
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto/16 :goto_0

    .line 1279
    :cond_d
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1287
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_f

    .line 1290
    :cond_e
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 1291
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 1293
    :cond_f
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1294
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1296
    if-eqz v0, :cond_11

    .line 1297
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 1302
    :cond_10
    :goto_2
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 1299
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_2

    .line 1303
    :cond_12
    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1304
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 1306
    :cond_13
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0
.end method

.method isBluetoothAudioConnected()Z
    .locals 2

    .prologue
    .line 4465
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_0

    .line 4467
    const/4 v1, 0x0

    .line 4471
    :goto_0
    return v1

    .line 4469
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .local v0, isAudioOn:Z
    move v1, v0

    .line 4471
    goto :goto_0
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4485
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v7

    .line 4510
    :goto_0
    return v2

    .line 4494
    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    if-eqz v2, :cond_2

    .line 4495
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    sub-long v0, v2, v4

    .line 4497
    .local v0, timeSinceRequest:J
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    move v2, v7

    .line 4500
    goto :goto_0

    .line 4504
    :cond_1
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    move v2, v6

    .line 4505
    goto :goto_0

    .end local v0           #timeSinceRequest:J
    :cond_2
    move v2, v6

    .line 4510
    goto :goto_0
.end method

.method isBluetoothAvailable()Z
    .locals 3

    .prologue
    .line 4425
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v2, :cond_0

    .line 4428
    const/4 v2, 0x0

    .line 4458
    :goto_0
    return v2

    .line 4446
    :cond_0
    const/4 v1, 0x0

    .line 4447
    .local v1, isConnected:Z
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_1

    .line 4448
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 4451
    .local v0, headset:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 4452
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .end local v0           #headset:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    move v2, v1

    .line 4458
    goto :goto_0
.end method

.method isCallRecording()Z
    .locals 1

    .prologue
    .line 3302
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 4174
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 1124
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method isManageConferenceMode()Z
    .locals 2

    .prologue
    .line 4070
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOtaCallInActiveState()Z
    .locals 3

    .prologue
    .line 4865
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4866
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v1, v2, :cond_1

    .line 4870
    :cond_0
    const/4 v1, 0x1

    .line 4872
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOtaCallInEndState()Z
    .locals 2

    .prologue
    .line 4898
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchUiEnabled()Z
    .locals 1

    .prologue
    .line 4319
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->isTouchUiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method okToShowDialpad()Z
    .locals 1

    .prologue
    .line 4288
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    return v0
.end method

.method okToShowInCallTouchUi()Z
    .locals 2

    .prologue
    .line 4358
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1374
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onBackPressed()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1385
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "BACK key while ringing: ignored"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1409
    :cond_1
    :goto_0
    return-void

    .line 1392
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1395
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 1397
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0

    .line 1401
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_4

    .line 1403
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_0

    .line 1408
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method onBluetoothAvailabilityChanged()V
    .locals 2

    .prologue
    .line 5106
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5107
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5108
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v1}, Lcom/android/phone/InCallTouchUi;->openAutoHideVoiceDeviceSelector()V

    .line 5109
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 5111
    :cond_0
    return-void
.end method

.method onBluetoothClick(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3158
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3159
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3166
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3167
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 3170
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->connectBluetoothAudio()V

    .line 3177
    :cond_1
    :goto_0
    return-void

    .line 3175
    :cond_2
    const-string v0, "InCallScreen"

    const-string v1, "Got onBluetoothClick, but bluetooth is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 2963
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2966
    sparse-switch v0, :sswitch_data_0

    .line 3045
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v2, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_4

    .line 3048
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1, v0}, Lcom/android/phone/OtaUtils;->onClickHandler(I)V

    .line 3056
    :goto_0
    const v0, 0x1129f

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_1
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3071
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 3072
    return-void

    .line 2969
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 2974
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerAndEnd()V

    goto :goto_0

    .line 2978
    :sswitch_2
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onClick: Answer..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2979
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 2983
    :sswitch_3
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "onClick: Ignore..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2984
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    .line 2988
    :sswitch_4
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "onClick: SwapCalls..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2989
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 2994
    :sswitch_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 3000
    :sswitch_6
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_0

    .line 3005
    :sswitch_7
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onShowHideDialpad()V

    goto :goto_0

    .line 3011
    :sswitch_8
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_0

    .line 3016
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->onSpeakerClick()V

    goto :goto_0

    .line 3021
    :sswitch_a
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->onBluetoothClick(Z)V

    goto :goto_0

    .line 3026
    :sswitch_b
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    goto :goto_0

    .line 3031
    :sswitch_c
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    goto :goto_0

    .line 3036
    :sswitch_d
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 3041
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangup()V

    goto :goto_0

    .line 3050
    :cond_4
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got click from unexpected View ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (View = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3056
    :cond_5
    const-string v3, ""

    goto/16 :goto_1

    .line 2966
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070008 -> :sswitch_6
        0x7f070009 -> :sswitch_7
        0x7f07000a -> :sswitch_e
        0x7f07000b -> :sswitch_d
        0x7f07000c -> :sswitch_4
        0x7f07000d -> :sswitch_5
        0x7f07000e -> :sswitch_a
        0x7f07000f -> :sswitch_9
        0x7f070010 -> :sswitch_b
        0x7f070011 -> :sswitch_c
        0x7f070012 -> :sswitch_0
        0x7f070013 -> :sswitch_1
        0x7f070014 -> :sswitch_2
        0x7f070015 -> :sswitch_3
        0x7f0700a6 -> :sswitch_8
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5077
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: newConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5087
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5097
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v0, v3, :cond_4

    move v0, v3

    .line 5098
    :goto_0
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - isKeyboardOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5099
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    move v0, v3

    .line 5100
    :goto_1
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - isLandscape = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5101
    :cond_2
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - uiMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5103
    :cond_3
    return-void

    :cond_4
    move v0, v4

    .line 5097
    goto :goto_0

    :cond_5
    move v0, v4

    .line 5099
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const-string v4, "InCallScreen"

    .line 547
    const-string v2, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate()...  this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 551
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 553
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 554
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 556
    sget-object v2, Lcom/android/phone/InCallScreen;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 558
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 560
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 562
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 564
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 567
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v2, :cond_0

    .line 571
    new-instance v2, Landroid/bluetooth/BluetoothHeadset;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 575
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->requestWindowFeature(I)Z

    .line 578
    const v2, 0x7f030011

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->setContentView(I)V

    .line 580
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallScreen()V

    .line 598
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isTouchUiEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 600
    const v2, 0x7f0700a7

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 601
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Full touch device!  Found dialerView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 602
    :cond_1
    const/4 v1, 0x0

    .line 612
    .local v1, dialerDrawer:Landroid/widget/SlidingDrawer;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-nez v2, :cond_3

    .line 613
    const-string v2, "InCallScreen"

    const-string v2, "onCreate: couldn\'t find dialerView"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    :cond_3
    new-instance v2, Lcom/android/phone/DTMFTwelveKeyDialer;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerView;Landroid/widget/SlidingDrawer;)V

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 618
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 628
    if-nez p1, :cond_a

    .line 629
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 634
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 635
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate(): mInCallInitialStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 636
    :cond_5
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v2, v3, :cond_6

    .line 637
    const-string v2, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from internalResolveIntent()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v5

    :goto_2
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    .line 649
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 650
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "onCreate(): exit"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 651
    :cond_7
    return-void

    .line 605
    .end local v1           #dialerDrawer:Landroid/widget/SlidingDrawer;
    :cond_8
    const v2, 0x7f070056

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 606
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Using SlidingDrawer-based dialpad.  Found dialerView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 607
    :cond_9
    const v2, 0x7f070054

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SlidingDrawer;

    .line 608
    .restart local v1       #dialerDrawer:Landroid/widget/SlidingDrawer;
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ...and the SlidingDrawer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 642
    :cond_a
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_1

    .line 647
    :cond_b
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1028
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy()... this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1033
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 1035
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1036
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1038
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v1, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v1, v4}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1041
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v1, :cond_1

    .line 1042
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v1, v4}, Lcom/android/phone/InCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1045
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearInCallScreenReference()V

    .line 1046
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 1048
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 1052
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_2

    .line 1053
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->close()V

    .line 1054
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 1059
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1060
    return-void
.end method

.method onDialerClose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4213
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDialerClose()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4215
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4218
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v1, v2, :cond_2

    .line 4223
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 4224
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_2

    .line 4225
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    .line 4231
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 4234
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4238
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 4241
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4242
    return-void
.end method

.method onDialerOpen()V
    .locals 2

    .prologue
    .line 4182
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDialerOpen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4186
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 4190
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4193
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 4196
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4201
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_2

    .line 4204
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->hideOtaScreen()V

    .line 4206
    :cond_2
    return-void
.end method

.method onHandsetOrHeadsetClick(Z)V
    .locals 1
    .parameter "storeSpeakerState"

    .prologue
    .line 3182
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3183
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 3185
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3186
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 3188
    :cond_1
    return-void
.end method

.method onHeadsetAvailabilityChanged()V
    .locals 2

    .prologue
    .line 5114
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5115
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5116
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v1}, Lcom/android/phone/InCallTouchUi;->openAutoHideVoiceDeviceSelector()V

    .line 5117
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 5119
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "InCallScreen"

    .line 1567
    sparse-switch p1, :sswitch_data_0

    .line 1664
    :cond_0
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 1668
    :goto_0
    return v0

    .line 1569
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleCallKey()Z

    move-result v0

    .line 1570
    if-nez v0, :cond_1

    .line 1571
    const-string v0, "InCallScreen"

    const-string v0, "InCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v2

    .line 1574
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 1585
    goto :goto_0

    .line 1589
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 1600
    const-string v0, "InCallScreen"

    const-string v0, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->silencePhone()V

    move v0, v2

    .line 1607
    goto :goto_0

    .line 1622
    :sswitch_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1626
    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 1627
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    move v0, v2

    .line 1628
    goto :goto_0

    .line 1633
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    move v0, v2

    .line 1634
    goto :goto_0

    .line 1668
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1567
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_2
        0x46 -> :sswitch_0
        0x4c -> :sswitch_0
        0x52 -> :sswitch_4
        0x5b -> :sswitch_5
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1554
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1560
    :goto_0
    return v0

    .line 1556
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 1558
    goto :goto_0

    .line 1560
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1169
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1183
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 1192
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1193
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v1, :cond_1

    .line 1194
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from internalResolveIntent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_1
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 4389
    if-nez p1, :cond_0

    .line 4394
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 4395
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 898
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onPause()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 899
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 901
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 906
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 907
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 909
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 913
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 917
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 921
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    .line 946
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_2

    .line 948
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "DELAYED_CLEANUP_AFTER_DISCONNECT detected, moving UI to background."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 949
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 952
    :cond_2
    const v1, 0x1129e

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 956
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 959
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 964
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 971
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/InCallScreen$4;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InCallScreen$4;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/PhoneApp;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 977
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->reenableStatusBar()V

    .line 981
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mSmsReject:Z

    if-nez v1, :cond_3

    .line 982
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableBackToCallView(Z)V

    .line 986
    :cond_3
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 987
    return-void
.end method

.method protected onResume()V
    .locals 15

    .prologue
    const/16 v14, 0x70

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 667
    sget-boolean v9, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "onResume()..."

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 668
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 670
    iput-boolean v12, p0, Lcom/android/phone/InCallScreen;->mSmsReject:Z

    .line 671
    iput-boolean v13, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 673
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 676
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableBackToCallView(Z)V

    .line 678
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->disableStatusBar()V

    .line 681
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 686
    invoke-virtual {v0, v13}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 690
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 693
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 697
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v9}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    .line 700
    sget-boolean v9, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- onResume: initial status = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 701
    :cond_1
    const/4 v2, 0x0

    .line 702
    .local v2, handledStartupError:Z
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v10, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v9, v10, :cond_4

    .line 703
    sget-boolean v9, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- onResume: failure during startup: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 708
    :cond_2
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V

    .line 709
    const/4 v2, 0x1

    .line 711
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v10, Lcom/android/phone/InCallScreen$InCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v9, v10, :cond_3

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v10, Lcom/android/phone/InCallScreen$InCallInitStatus;->DIALED_MMI:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v9, v10, :cond_3

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v10, Lcom/android/phone/InCallScreen$InCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v9, v10, :cond_3

    .line 714
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 715
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 717
    const-string v6, ""

    .line 719
    .local v6, number:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 723
    :goto_0
    move-object v5, v6

    .line 724
    .local v5, logNumber:Ljava/lang/String;
    new-instance v9, Lcom/android/phone/InCallScreen$3;

    invoke-direct {v9, p0, v5}, Lcom/android/phone/InCallScreen$3;-><init>(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-static {v12, p0, v6, v9, v10}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 740
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #logNumber:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    :cond_3
    sget-object v9, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 744
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    .line 746
    .local v1, bluetoothConnected:Z
    if-eqz v1, :cond_b

    .line 747
    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    .line 752
    :goto_1
    invoke-virtual {p0, v13}, Lcom/android/phone/InCallScreen;->takeKeyEvents(Z)V

    .line 754
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c

    move v7, v13

    .line 756
    .local v7, phoneIsCdma:Z
    :goto_2
    const/4 v3, 0x0

    .line 757
    .local v3, inOtaCall:Z
    if-eqz v7, :cond_5

    .line 758
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initOtaState()Z

    move-result v3

    .line 760
    :cond_5
    if-nez v3, :cond_6

    .line 762
    sget-object v9, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 769
    :cond_6
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 770
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v9, v9, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/InCallSlidingPanel;

    iget-object v10, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9, v10}, Lcom/android/phone/InCallSlidingPanel;->reset(Lcom/android/internal/telephony/CallManager;)V

    .line 772
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v8

    .line 773
    .local v8, status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v9, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v8, v9, :cond_f

    .line 774
    sget-boolean v9, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- syncWithPhoneState failed! status = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 781
    :cond_7
    if-eqz v2, :cond_d

    .line 789
    sget-boolean v9, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v9, :cond_8

    const-string v9, "  => syncWithPhoneState failed, but staying here anyway."

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 826
    :cond_8
    const v9, 0x1129d

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 833
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v9, v10, :cond_12

    .line 850
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 851
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 865
    :goto_3
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 870
    invoke-direct {p0, v12}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 873
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v9}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 877
    :cond_9
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRestoreMuteOnInCallResume()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 879
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    .line 880
    invoke-virtual {v0, v12}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 884
    :cond_a
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v9}, Lcom/android/phone/CallCard;->updateLockScreenWallpaper()V

    .line 887
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.ENTER_INCALL_SCREEN_DURING_CALL"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v9, v10}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v9

    const-class v10, Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 892
    :goto_4
    return-void

    .line 749
    .end local v3           #inOtaCall:Z
    .end local v7           #phoneIsCdma:Z
    .end local v8           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_b
    invoke-virtual {p0, v12}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_1

    :cond_c
    move v7, v12

    .line 754
    goto/16 :goto_2

    .line 803
    .restart local v3       #inOtaCall:Z
    .restart local v7       #phoneIsCdma:Z
    .restart local v8       #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_d
    sget-boolean v9, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v9, :cond_e

    const-string v9, "  ==> syncWithPhoneState failed; bailing out!"

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 804
    :cond_e
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 812
    invoke-direct {p0, v13}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    goto :goto_4

    .line 815
    :cond_f
    if-eqz v7, :cond_8

    .line 816
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v10, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v9, v10, :cond_10

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v10, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v9, v10, :cond_8

    .line 818
    :cond_10
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v9, v12}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 819
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 820
    :cond_11
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    goto :goto_4

    .line 863
    :cond_12
    invoke-virtual {v0, v12}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto :goto_3

    .line 720
    .end local v1           #bluetoothConnected:Z
    .end local v3           #inOtaCall:Z
    .end local v7           #phoneIsCdma:Z
    .end local v8           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v6       #number:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method

.method onSpeakerClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3127
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v3

    .line 3128
    .local v0, newSpeakerState:Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3129
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 3131
    :cond_0
    invoke-static {p0, v0, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 3133
    if-eqz v0, :cond_3

    .line 3135
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 3144
    :cond_1
    :goto_1
    return-void

    .end local v0           #newSpeakerState:Z
    :cond_2
    move v0, v2

    .line 3127
    goto :goto_0

    .line 3140
    .restart local v0       #newSpeakerState:Z
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3141
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 991
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onStop()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 993
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 994
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 995
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_2

    .line 997
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1000
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1002
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopTimer()V

    .line 1004
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_4

    .line 1005
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1009
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v2, v3, :cond_4

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v2, v3, :cond_4

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v2, :cond_4

    .line 1017
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "- onStop: calling finish() to clear activity history..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1018
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1019
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v2, :cond_4

    .line 1020
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2, v4}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1024
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_4
    return-void
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1676
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    .line 1677
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuppServiceFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1680
    :cond_0
    sget-object v1, Lcom/android/phone/InCallScreen$17;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1721
    const v0, 0x7f0c0149

    .line 1729
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 1730
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1731
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1733
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 1736
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 1741
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1743
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1744
    return-void

    .line 1684
    :pswitch_0
    const v0, 0x7f0c014a

    .line 1685
    goto :goto_0

    .line 1690
    :pswitch_1
    const v0, 0x7f0c014b

    .line 1691
    goto :goto_0

    .line 1697
    :pswitch_2
    const v0, 0x7f0c014c

    .line 1698
    goto :goto_0

    .line 1703
    :pswitch_3
    const v0, 0x7f0c014d

    .line 1704
    goto :goto_0

    .line 1709
    :pswitch_4
    const v0, 0x7f0c014e

    .line 1710
    goto :goto_0

    .line 1714
    :pswitch_5
    const v0, 0x7f0c014f

    .line 1715
    goto :goto_0

    .line 1680
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4746
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 4754
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    .line 4824
    :goto_0
    return v0

    .line 4765
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 4767
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 4768
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4772
    iget-wide v2, p0, Lcom/android/phone/InCallScreen;->mTouchLockLastTouchTime:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 4777
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 4778
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 4780
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    :cond_2
    :goto_1
    move v0, v7

    .line 4791
    goto :goto_0

    .line 4782
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 4786
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockLastTouchTime:J

    goto :goto_1

    :cond_4
    move v0, v7

    .line 4820
    goto :goto_0

    .line 4823
    :cond_5
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch: event from unexpected View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 4824
    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 4832
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4833
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 4835
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 1516
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1520
    :cond_0
    return-void
.end method

.method requestCloseOtaFailureNotice(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 4843
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseOtaFailureNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4844
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4852
    return-void
.end method

.method requestCloseSpcErrorNotice(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 4860
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseSpcErrorNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4861
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4862
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .locals 2

    .prologue
    const/16 v1, 0x72

    .line 4522
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4523
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4524
    return-void
.end method

.method requestUpdateTouchUi()V
    .locals 2

    .prologue
    const/16 v1, 0x7a

    .line 4338
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4340
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4341
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4342
    return-void
.end method

.method public resetInCallScreenMode()V
    .locals 1

    .prologue
    .line 5044
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "resetInCallScreenMode - InCallScreenMode set to UNDEFINED"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5045
    :cond_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 5046
    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 663
    return-void
.end method

.method silencePhone()V
    .locals 2

    .prologue
    .line 3875
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 3876
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3878
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "silence ringer"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3879
    :cond_0
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 3881
    :cond_1
    return-void
.end method

.method updateAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 1159
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen"

    const-string v1, "updateAfterRadioTechnologyChange()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 1164
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 1165
    return-void
.end method
