.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/phone/InCallSlidingPanel$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;
    }
.end annotation


# instance fields
.field private mAddButton:Landroid/widget/Button;

.field private mAllowInCallTouchUi:Z

.field private mAllowIncomingCallTouchUi:Z

.field private mAnswerButton:Landroid/widget/Button;

.field private mApplication:Lcom/android/phone/PhoneApp;

.field private mCallRecordPrompt:Landroid/widget/TextView;

.field private mCallRecordTimer:Landroid/widget/Chronometer;

.field private mCdmaManageCallsButton:Landroid/widget/Button;

.field private mCdmaMergeButton:Landroid/widget/Button;

.field private mContactButton:Landroid/widget/Button;

.field private mDesiredVoiceDevice:Lcom/android/phone/InCallControlState$VoiceDevices;

.field private mEndButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHoldButton:Landroid/widget/ToggleButton;

.field private mIgnoreButton:Landroid/widget/Button;

.field private mInCallControls:Landroid/view/View;

.field private mInCallControlsMask:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field mIncomingCallWidget:Lcom/android/phone/InCallSlidingPanel;

.field private mKeyboardButton:Landroid/widget/ToggleButton;

.field mLastCheckedViewBeforeVoiceDeviceSelector:Landroid/widget/CompoundButton;

.field private mLastClickTime:J

.field private mLastIncomingCallActionTime:J

.field private mMergeButton:Landroid/widget/Button;

.field private mMoreButton:Landroid/widget/ToggleButton;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mNoteButton:Landroid/widget/Button;

.field private mPopupAutoHiddenVoiceDeviceSelector:Z

.field private mRejectButton:Landroid/widget/Button;

.field private mRejectWithSmsButton:Landroid/widget/Button;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mStartRecordButton:Landroid/widget/Button;

.field private mStopRecordButton:Landroid/view/View;

.field private mSwapButton:Landroid/widget/Button;

.field private mVoiceDeviceBluetoothButton:Landroid/widget/ToggleButton;

.field private mVoiceDeviceHandsetOrHeadsestButton:Landroid/widget/ToggleButton;

.field private mVoiceDeviceSelector:Landroid/view/View;

.field private mVoiceDeviceSpeakerButton:Landroid/widget/ToggleButton;

.field private mVoiceDevicesButton:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/phone/InCallTouchUi;->mLastClickTime:J

    .line 934
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mLastCheckedViewBeforeVoiceDeviceSelector:Landroid/widget/CompoundButton;

    .line 1007
    new-instance v1, Lcom/android/phone/InCallTouchUi$2;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$2;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 134
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 135
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030012

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 140
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mApplication:Lcom/android/phone/PhoneApp;

    .line 146
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mAllowIncomingCallTouchUi:Z

    .line 149
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    .line 152
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mPopupAutoHiddenVoiceDeviceSelector:Z

    .line 153
    sget-object v1, Lcom/android/phone/InCallControlState$VoiceDevices;->Invalid:Lcom/android/phone/InCallControlState$VoiceDevices;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mDesiredVoiceDevice:Lcom/android/phone/InCallControlState$VoiceDevices;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallTouchUi;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private cancelAutoHideVoiceDeviceSelector()V
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1005
    return-void
.end method

.method private hideIncomingCallWidget()V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/InCallSlidingPanel;

    invoke-virtual {v0}, Lcom/android/phone/InCallSlidingPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/InCallSlidingPanel;

    invoke-virtual {v0}, Lcom/android/phone/InCallSlidingPanel;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/InCallSlidingPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallSlidingPanel;->setVisibility(I)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1019
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    return-void
.end method

.method private openAutoHideVoiceDeviceSelector(I)V
    .locals 4
    .parameter "delayMs"

    .prologue
    const/16 v3, 0x64

    .line 995
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 996
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 998
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 999
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1000
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1001
    return-void
.end method

.method private showIncomingCallWidget()V
    .locals 3

    .prologue
    .line 809
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/InCallSlidingPanel;

    invoke-virtual {v1}, Lcom/android/phone/InCallSlidingPanel;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 810
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 812
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/InCallSlidingPanel;

    invoke-virtual {v1}, Lcom/android/phone/InCallSlidingPanel;->clearAnimation()V

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/InCallSlidingPanel;

    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallSlidingPanel;->reset(Lcom/android/internal/telephony/CallManager;)V

    .line 815
    return-void
.end method


# virtual methods
.method isTouchUiEnabled()Z
    .locals 1

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/16 v6, 0x8

    const v5, 0x7f0e001d

    const v4, 0x7f0e001b

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 938
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mKeyboardButton:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_3

    .line 939
    if-eqz p2, :cond_1

    .line 940
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mKeyboardButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 941
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 942
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 946
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 947
    if-eqz p2, :cond_2

    .line 948
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 988
    :cond_0
    :goto_1
    return-void

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mKeyboardButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    goto :goto_0

    .line 950
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_1

    .line 953
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_5

    .line 954
    if-eqz p2, :cond_4

    .line 955
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 956
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mBottomCenterButtons:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mKeyboardButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 958
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1

    .line 960
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 961
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mBottomCenterButtons:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 963
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_0

    .line 964
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->cancelAutoHideVoiceDeviceSelector()V

    .line 965
    if-eqz p2, :cond_8

    .line 966
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLastCheckedViewBeforeVoiceDeviceSelector:Landroid/widget/CompoundButton;

    .line 967
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mKeyboardButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 968
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mKeyboardButton:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLastCheckedViewBeforeVoiceDeviceSelector:Landroid/widget/CompoundButton;

    .line 970
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 971
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLastCheckedViewBeforeVoiceDeviceSelector:Landroid/widget/CompoundButton;

    .line 973
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 974
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDeviceSelector:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 975
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mKeyboardButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 976
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 978
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 979
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDeviceSelector:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 980
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLastCheckedViewBeforeVoiceDeviceSelector:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mKeyboardButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 982
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLastCheckedViewBeforeVoiceDeviceSelector:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 984
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mLastCheckedViewBeforeVoiceDeviceSelector:Landroid/widget/CompoundButton;

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 380
    .local v1, now:J
    iget-wide v3, p0, Lcom/android/phone/InCallTouchUi;->mLastClickTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x12c

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 434
    :goto_0
    return-void

    .line 384
    :cond_0
    iput-wide v1, p0, Lcom/android/phone/InCallTouchUi;->mLastClickTime:J

    .line 386
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 389
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 431
    :pswitch_0
    const-string v3, "InCallTouchUi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick: unexpected click: View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 394
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 410
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 414
    :pswitch_3
    sget-object v3, Lcom/android/phone/InCallControlState$VoiceDevices;->Bluetooth:Lcom/android/phone/InCallControlState$VoiceDevices;

    iput-object v3, p0, Lcom/android/phone/InCallTouchUi;->mDesiredVoiceDevice:Lcom/android/phone/InCallControlState$VoiceDevices;

    .line 415
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 418
    :pswitch_4
    sget-object v3, Lcom/android/phone/InCallControlState$VoiceDevices;->HandsetOrHeadset:Lcom/android/phone/InCallControlState$VoiceDevices;

    iput-object v3, p0, Lcom/android/phone/InCallTouchUi;->mDesiredVoiceDevice:Lcom/android/phone/InCallControlState$VoiceDevices;

    .line 419
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 422
    :pswitch_5
    sget-object v3, Lcom/android/phone/InCallControlState$VoiceDevices;->Speaker:Lcom/android/phone/InCallControlState$VoiceDevices;

    iput-object v3, p0, Lcom/android/phone/InCallTouchUi;->mDesiredVoiceDevice:Lcom/android/phone/InCallControlState$VoiceDevices;

    .line 423
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 427
    :pswitch_6
    iget-object v3, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f07009e

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x7f070081
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 162
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 168
    const v1, 0x7f07007f

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/InCallSlidingPanel;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/InCallSlidingPanel;

    .line 169
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/phone/InCallSlidingPanel;

    invoke-virtual {v1, p0}, Lcom/android/phone/InCallSlidingPanel;->setOnTriggerListener(Lcom/android/phone/InCallSlidingPanel$OnTriggerListener;)V

    .line 171
    const v1, 0x7f070089

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRejectButton:Landroid/widget/Button;

    .line 172
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRejectButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v1, 0x7f070088

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRejectWithSmsButton:Landroid/widget/Button;

    .line 174
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mRejectWithSmsButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v1, 0x7f070081

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAnswerButton:Landroid/widget/Button;

    .line 176
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAnswerButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v1, 0x7f070082

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIgnoreButton:Landroid/widget/Button;

    .line 178
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIgnoreButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v1, 0x7f07008a

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 182
    const v1, 0x7f0700a3

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    .line 183
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    new-instance v2, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070096

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    .line 193
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070097

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    .line 195
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    .line 197
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070095

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    .line 199
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    .line 201
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07009e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 203
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    .line 205
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 207
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mKeyboardButton:Landroid/widget/ToggleButton;

    .line 208
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mKeyboardButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 209
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f0700a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/ToggleButton;

    .line 210
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 213
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCallRecordPrompt:Landroid/widget/TextView;

    .line 214
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070092

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    .line 215
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070093

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mStopRecordButton:Landroid/view/View;

    .line 217
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070098

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mNoteButton:Landroid/widget/Button;

    .line 221
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mNoteButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    .line 225
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/Button;

    .line 228
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/Button;

    const v2, 0x7f0c015f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 231
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070090

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/widget/Button;

    .line 232
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070091

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaManageCallsButton:Landroid/widget/Button;

    .line 235
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaManageCallsButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    new-instance v0, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;-><init>(Lcom/android/phone/InCallTouchUi;)V

    .line 246
    .local v0, smallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 247
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 248
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 249
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 250
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 251
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 254
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mNoteButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 256
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setCompoundDrawableCompactMode(Z)V

    .line 257
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setCompoundDrawableCompactMode(Z)V

    .line 258
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setCompoundDrawableCompactMode(Z)V

    .line 259
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setCompoundDrawableCompactMode(Z)V

    .line 260
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mNoteButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setCompoundDrawableCompactMode(Z)V

    .line 261
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setCompoundDrawableCompactMode(Z)V

    .line 263
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setCompoundDrawableCompactMode(Z)V

    .line 264
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setCompoundDrawableCompactMode(Z)V

    .line 265
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setCompoundDrawableCompactMode(Z)V

    .line 266
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCdmaManageCallsButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setCompoundDrawableCompactMode(Z)V

    .line 268
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    .line 269
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setCompoundDrawableCompactMode(Z)V

    .line 271
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f070099

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDeviceSelector:Landroid/view/View;

    .line 272
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDeviceBluetoothButton:Landroid/widget/ToggleButton;

    .line 273
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDeviceBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07009b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDeviceHandsetOrHeadsestButton:Landroid/widget/ToggleButton;

    .line 275
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDeviceHandsetOrHeadsestButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v2, 0x7f07009c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDeviceSpeakerButton:Landroid/widget/ToggleButton;

    .line 277
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDeviceSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 821
    return-void
.end method

.method onStartCallRecord()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 916
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 917
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 919
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 920
    sget-boolean v0, Landroid/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEFY:Z

    if-nez v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCallRecordPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 923
    :cond_0
    return-void
.end method

.method onStopCallRecord()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 927
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCallRecordTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 928
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mStopRecordButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCallRecordPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 931
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const-string v2, "InCallTouchUi"

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 765
    packed-switch p2, :pswitch_data_0

    .line 785
    const-string v0, "InCallTouchUi"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :goto_0
    return-void

    .line 769
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 773
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    .line 776
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f070081

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 780
    :cond_0
    const-string v0, "InCallTouchUi"

    const-string v0, "answer trigger: mInCallScreen is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 765
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method openAutoHideVoiceDeviceSelector()V
    .locals 1

    .prologue
    .line 991
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->openAutoHideVoiceDeviceSelector(I)V

    .line 992
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 158
    return-void
.end method

.method updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 11
    .parameter "cm"

    .prologue
    .line 442
    const/4 v4, 0x0

    .line 444
    .local v4, curCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 445
    .local v1, activeFgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 446
    .local v0, activeBgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_a

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_a

    .line 449
    move-object v4, v1

    .line 459
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 473
    .local v7, phoneType:I
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v5

    .line 478
    .local v5, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v8, :cond_c

    .line 479
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 480
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 481
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e001b

    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 482
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 511
    :goto_1
    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v8, :cond_1

    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v8, :cond_1

    .line 512
    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    const/4 v8, 0x3

    if-ne v7, v8, :cond_11

    .line 519
    :cond_0
    const-string v8, "InCallTouchUi"

    const-string v9, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_1
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 534
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 535
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mContactButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e001b

    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 538
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mKeyboardButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 539
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mKeyboardButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v9, v9, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v9}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 542
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 543
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v9, v9, Lcom/android/phone/InCallScreen;->mBottomCenterButtons:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v9

    if-nez v9, :cond_12

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 546
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-boolean v9, v5, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 547
    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->bluetoothAvailable:Z

    if-nez v8, :cond_15

    .line 548
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 549
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 550
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 551
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-boolean v10, v5, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v10, :cond_13

    const v10, 0x7f0e001b

    :goto_3
    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 553
    iget-object v8, v5, Lcom/android/phone/InCallControlState;->currentVoiceDevice:Lcom/android/phone/InCallControlState$VoiceDevices;

    sget-object v9, Lcom/android/phone/InCallControlState$VoiceDevices;->Speaker:Lcom/android/phone/InCallControlState$VoiceDevices;

    if-ne v8, v9, :cond_14

    .line 554
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 555
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e001d

    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 587
    :cond_2
    :goto_4
    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->canRecordCall:Z

    if-nez v8, :cond_1b

    .line 588
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 589
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 590
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e001c

    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 591
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mStopRecordButton:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 605
    :goto_5
    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->canMute:Z

    if-eqz v8, :cond_1d

    .line 606
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 607
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e001b

    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 608
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v9, v5, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 621
    :goto_6
    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v8, :cond_1e

    .line 622
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 623
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 624
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e001b

    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 625
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    iget-boolean v9, v5, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 634
    :goto_7
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    .line 635
    .local v6, oldVisibility:I
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/Button;

    iget-boolean v9, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v9, :cond_1f

    const/4 v9, 0x0

    :goto_8
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 637
    const/16 v8, 0x8

    if-ne v6, v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 638
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 641
    :cond_3
    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 645
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/widget/Button;

    iget-boolean v9, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v9, :cond_20

    const/4 v9, 0x0

    :goto_9
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 652
    :cond_4
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mCdmaManageCallsButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_5

    .line 658
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 659
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 660
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e001c

    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 663
    :cond_5
    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v8, :cond_6

    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v8, :cond_6

    .line 669
    const-string v8, "InCallTouchUi"

    const-string v9, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_6
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mNoteButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 674
    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    .line 675
    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v8, :cond_7

    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v8, :cond_7

    .line 681
    const-string v8, "InCallTouchUi"

    const-string v9, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_7
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 687
    .local v3, callState:Lcom/android/internal/telephony/Call$State;
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_21

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v8, :cond_21

    .line 689
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 690
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mKeyboardButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 691
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 692
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 697
    :goto_a
    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->bluetoothAvailable:Z

    if-eqz v8, :cond_22

    iget-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mPopupAutoHiddenVoiceDeviceSelector:Z

    if-eqz v8, :cond_22

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v9, :cond_22

    .line 700
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mPopupAutoHiddenVoiceDeviceSelector:Z

    .line 701
    const/16 v8, 0x1388

    invoke-direct {p0, v8}, Lcom/android/phone/InCallTouchUi;->openAutoHideVoiceDeviceSelector(I)V

    .line 706
    :cond_8
    :goto_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v9, :cond_9

    .line 708
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mPopupAutoHiddenVoiceDeviceSelector:Z

    .line 710
    :cond_9
    return-void

    .line 450
    .end local v3           #callState:Lcom/android/internal/telephony/Call$State;
    .end local v5           #inCallControlState:Lcom/android/phone/InCallControlState;
    .end local v6           #oldVisibility:I
    .end local v7           #phoneType:I
    :cond_a
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_b

    .line 453
    move-object v4, v0

    goto/16 :goto_0

    .line 456
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    goto/16 :goto_0

    .line 483
    .restart local v5       #inCallControlState:Lcom/android/phone/InCallControlState;
    .restart local v7       #phoneType:I
    :cond_c
    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v8, :cond_10

    .line 484
    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    .line 488
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 489
    :cond_d
    const/4 v8, 0x1

    if-eq v7, v8, :cond_e

    const/4 v8, 0x3

    if-ne v7, v8, :cond_f

    .line 491
    :cond_e
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 492
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 493
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e001b

    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 494
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 496
    :cond_f
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 506
    :cond_10
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 507
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 508
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e001c

    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 509
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 521
    :cond_11
    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 526
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected phone type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 543
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 551
    :cond_13
    const v10, 0x7f0e001c

    goto/16 :goto_3

    .line 557
    :cond_14
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 558
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e001b

    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    goto/16 :goto_4

    .line 561
    :cond_15
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 562
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 563
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 564
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDeviceSelector:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_16

    .line 565
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 568
    :cond_16
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c01a2

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v2, v8

    .line 571
    .local v2, buttonText:Ljava/lang/CharSequence;
    :goto_c
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDeviceHandsetOrHeadsestButton:Landroid/widget/ToggleButton;

    invoke-virtual {v8, v2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDeviceHandsetOrHeadsestButton:Landroid/widget/ToggleButton;

    invoke-virtual {v8, v2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDeviceBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v9, v5, Lcom/android/phone/InCallControlState;->currentVoiceDevice:Lcom/android/phone/InCallControlState$VoiceDevices;

    sget-object v10, Lcom/android/phone/InCallControlState$VoiceDevices;->Bluetooth:Lcom/android/phone/InCallControlState$VoiceDevices;

    if-ne v9, v10, :cond_18

    const/4 v9, 0x1

    :goto_d
    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 576
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDeviceSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v9, v5, Lcom/android/phone/InCallControlState;->currentVoiceDevice:Lcom/android/phone/InCallControlState$VoiceDevices;

    sget-object v10, Lcom/android/phone/InCallControlState$VoiceDevices;->Speaker:Lcom/android/phone/InCallControlState$VoiceDevices;

    if-ne v9, v10, :cond_19

    const/4 v9, 0x1

    :goto_e
    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 578
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDeviceHandsetOrHeadsestButton:Landroid/widget/ToggleButton;

    iget-object v9, v5, Lcom/android/phone/InCallControlState;->currentVoiceDevice:Lcom/android/phone/InCallControlState$VoiceDevices;

    sget-object v10, Lcom/android/phone/InCallControlState$VoiceDevices;->HandsetOrHeadset:Lcom/android/phone/InCallControlState$VoiceDevices;

    if-ne v9, v10, :cond_1a

    const/4 v9, 0x1

    :goto_f
    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 580
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mDesiredVoiceDevice:Lcom/android/phone/InCallControlState$VoiceDevices;

    iget-object v9, v5, Lcom/android/phone/InCallControlState;->currentVoiceDevice:Lcom/android/phone/InCallControlState$VoiceDevices;

    if-ne v8, v9, :cond_2

    .line 581
    const/16 v8, 0x64

    invoke-direct {p0, v8}, Lcom/android/phone/InCallTouchUi;->openAutoHideVoiceDeviceSelector(I)V

    .line 582
    sget-object v8, Lcom/android/phone/InCallControlState$VoiceDevices;->Invalid:Lcom/android/phone/InCallControlState$VoiceDevices;

    iput-object v8, p0, Lcom/android/phone/InCallTouchUi;->mDesiredVoiceDevice:Lcom/android/phone/InCallControlState$VoiceDevices;

    goto/16 :goto_4

    .line 568
    .end local v2           #buttonText:Ljava/lang/CharSequence;
    :cond_17
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c01a1

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v2, v8

    goto :goto_c

    .line 574
    .restart local v2       #buttonText:Ljava/lang/CharSequence;
    :cond_18
    const/4 v9, 0x0

    goto :goto_d

    .line 576
    :cond_19
    const/4 v9, 0x0

    goto :goto_e

    .line 578
    :cond_1a
    const/4 v9, 0x0

    goto :goto_f

    .line 593
    .end local v2           #buttonText:Ljava/lang/CharSequence;
    :cond_1b
    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->isCallRecording:Z

    if-eqz v8, :cond_1c

    .line 594
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 595
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mStopRecordButton:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 597
    :cond_1c
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 598
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 599
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mStartRecordButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e001b

    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 600
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mStopRecordButton:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 610
    :cond_1d
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 611
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0e001c

    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 612
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_6

    .line 627
    :cond_1e
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 628
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_7

    .line 635
    .restart local v6       #oldVisibility:I
    :cond_1f
    const/16 v9, 0x8

    goto/16 :goto_8

    .line 645
    :cond_20
    const/16 v9, 0x8

    goto/16 :goto_9

    .line 694
    .restart local v3       #callState:Lcom/android/internal/telephony/Call$State;
    :cond_21
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 702
    :cond_22
    iget-boolean v8, v5, Lcom/android/phone/InCallControlState;->popupMorePanel:Z

    if-eqz v8, :cond_8

    .line 703
    iget-object v8, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/ToggleButton;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_b
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 12
    .parameter "cm"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 285
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v6, :cond_0

    .line 286
    const-string v6, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 375
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    .line 293
    .local v5, state:Lcom/android/internal/telephony/Phone$State;
    const/4 v4, 0x0

    .line 294
    .local v4, showIncomingCallControls:Z
    const/4 v3, 0x0

    .line 296
    .local v3, showInCallControls:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 302
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-nez v6, :cond_4

    .line 305
    iget-boolean v6, p0, Lcom/android/phone/InCallTouchUi;->mAllowIncomingCallTouchUi:Z

    if-eqz v6, :cond_2

    .line 311
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 313
    const/4 v4, 0x1

    .line 320
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 321
    .local v0, now:J
    iget-wide v6, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    .line 322
    const-string v6, "updateState: Too soon after last action; not drawing!"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 323
    const/4 v4, 0x0

    .line 346
    .end local v0           #now:J
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 350
    :cond_3
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 351
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 335
    :cond_4
    iget-boolean v6, p0, Lcom/android/phone/InCallTouchUi;->mAllowInCallTouchUi:Z

    if-eqz v6, :cond_2

    .line 338
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->okToShowInCallTouchUi()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 339
    const/4 v3, 0x1

    goto :goto_1

    .line 355
    :cond_5
    if-eqz v4, :cond_6

    .line 356
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget()V

    .line 361
    :goto_2
    if-eqz v3, :cond_7

    .line 362
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 358
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    goto :goto_2

    .line 364
    :cond_7
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mInCallControlsMask:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 367
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mKeyboardButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 368
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mMoreButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 369
    iget-object v6, p0, Lcom/android/phone/InCallTouchUi;->mVoiceDevicesButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v10}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0
.end method
