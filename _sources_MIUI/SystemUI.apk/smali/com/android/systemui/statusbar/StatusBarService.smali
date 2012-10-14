.class public Lcom/android/systemui/statusbar/StatusBarService;
.super Landroid/app/Service;
.source "StatusBarService.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarService$MyTicker;,
        Lcom/android/systemui/statusbar/StatusBarService$Launcher;,
        Lcom/android/systemui/statusbar/StatusBarService$H;,
        Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;
    }
.end annotation


# static fields
.field public static sShowBatteryUnderKeyguard:Z

.field public static sShowCarrierUnderKeyguard:Z

.field public static sShowDateUnderKeyguard:Z

.field public static sShowNotificationUnderKeyguard:Z

.field public static sShowStatusUnderKeyguard:Z

.field public static sShowTimeUnderKeyguard:Z

.field public static sTogglesInListStyle:Z


# instance fields
.field mAbsPos:[I

.field mAnimAccel:F

.field mAnimLastTime:J

.field mAnimVel:F

.field mAnimY:F

.field mAnimating:Z

.field mAnimatingReveal:Z

.field private mAutoExitFullscreenRunnable:Ljava/lang/Runnable;

.field mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCarrierView:Lcom/android/systemui/statusbar/CarrierLabel;

.field mClearButton:Landroid/view/View;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field mCloseDragHandleShadowHeight:I

.field mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

.field mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field mCurAnimationTime:J

.field mDateView:Lcom/android/systemui/statusbar/DateView;

.field mDisabled:I

.field mDisplay:Landroid/view/Display;

.field mDisplayHeight:F

.field mEdgeBorder:I

.field private mEventDown:Landroid/view/MotionEvent;

.field private mExitingFullscreen:Z

.field private mExitingFullscreenRunnable:Ljava/lang/Runnable;

.field mExpanded:Z

.field mExpandedContentContentIndex:I

.field mExpandedContents:[Landroid/view/View;

.field mExpandedCurrentContent:Landroid/view/View;

.field mExpandedDialog:Landroid/app/Dialog;

.field mExpandedNotifications:Landroid/view/View;

.field mExpandedParams:Landroid/view/WindowManager$LayoutParams;

.field mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

.field mExpandedVisible:Z

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mGuideCall:I

.field private mGuideNotification:I

.field private mGuideToggle:I

.field private mGuideToggleList:I

.field private mGuideWindow:Landroid/widget/GuidePopupWindow;

.field mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

.field mIconPolicy:Lcom/android/systemui/statusbar/StatusBarPolicy;

.field mIconSize:I

.field mIcons:Landroid/widget/LinearLayout;

.field mLatest:Lcom/android/systemui/statusbar/NotificationData;

.field mLatestItems:Landroid/widget/LinearLayout;

.field mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

.field mNotificationScroll:Landroid/widget/ScrollView;

.field mOngoing:Lcom/android/systemui/statusbar/NotificationData;

.field mOngoingItems:Landroid/widget/LinearLayout;

.field private mPanelSlightlyVisible:Z

.field mPixelFormat:I

.field mPositionTmp:[I

.field mQueueLock:Ljava/lang/Object;

.field private mResolver:Landroid/content/ContentResolver;

.field mStartTracing:Ljava/lang/Runnable;

.field mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

.field mStatusBattery:Lcom/android/systemui/statusbar/BatteryStatus;

.field mStatusClock:Lcom/android/systemui/statusbar/Clock;

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTicker:Lcom/android/systemui/statusbar/Ticker;

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mToggleBar:Landroid/widget/ScreenView;

.field mToggleManager:Landroid/util/ToggleManager;

.field mTracking:Z

.field mTrackingParams:Landroid/view/WindowManager$LayoutParams;

.field mTrackingPosition:I

.field mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

.field mUsbModeButton:Landroid/widget/SlidingButton;

.field private mUsbModeButtonCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mUsbModeNotification:Landroid/view/View;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewDelta:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 102
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    .line 103
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sShowBatteryUnderKeyguard:Z

    .line 104
    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowCarrierUnderKeyguard:Z

    .line 105
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sShowDateUnderKeyguard:Z

    .line 106
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sShowNotificationUnderKeyguard:Z

    .line 107
    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sShowStatusUnderKeyguard:Z

    .line 108
    sput-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowTimeUnderKeyguard:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 88
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Lcom/android/systemui/statusbar/StatusBarService$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQueueLock:Ljava/lang/Object;

    .line 136
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    .line 150
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    .line 153
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    .line 156
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    .line 191
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 193
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    .line 196
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 869
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$3;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAutoExitFullscreenRunnable:Ljava/lang/Runnable;

    .line 878
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$4;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExitingFullscreenRunnable:Ljava/lang/Runnable;

    .line 992
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$5;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1740
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$7;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 1751
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$8;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1873
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$9;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStartTracing:Ljava/lang/Runnable;

    .line 1883
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$10;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStopTracing:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/StatusBarService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExitingFullscreen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateStatusBarBackground()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/StatusBarService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->triggerCameraKey()V

    return-void
.end method

.method private chooseIconIndex(ZI)I
    .locals 3
    .parameter "isOngoing"
    .parameter "viewIndex"

    .prologue
    const/4 v2, 0x1

    .line 648
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 649
    .local v0, latestSize:I
    if-eqz p1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 652
    :goto_0
    return v1

    :cond_0
    sub-int v1, v0, p2

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private dismissUserGuide()V
    .locals 1

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Landroid/widget/GuidePopupWindow;

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Landroid/widget/GuidePopupWindow;

    invoke-virtual {v0}, Landroid/widget/GuidePopupWindow;->dismiss()V

    .line 1787
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Landroid/widget/GuidePopupWindow;

    .line 1789
    :cond_0
    return-void
.end method

.method private enableAlternative(Z)V
    .locals 3
    .parameter

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DateView;->enableAlternative(Z)V

    .line 888
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusClock:Lcom/android/systemui/statusbar/Clock;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/Clock;->enableAlternative(Z)V

    .line 889
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 891
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->enableAlternative(Z)V

    .line 889
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 893
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateStatusBarBackground()V

    .line 895
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierView:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_1

    const v2, 0x7f060003

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CarrierLabel;->setTextColor(I)V

    .line 898
    return-void

    .line 895
    :cond_1
    const v2, 0x106006c

    goto :goto_1
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1501
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1502
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 1503
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1505
    :cond_0
    return-object v0
.end method

.method private makeExpandedVisible()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1002
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_1

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1005
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    .line 1006
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    .line 1008
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1011
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1012
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1014
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandedView;->requestFocus(I)Z

    .line 1015
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/TrackingView;->setVisibility(I)V

    .line 1016
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    .line 1018
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-eqz v0, :cond_3

    .line 1019
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Ticker;->halt()V

    .line 1021
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateViewsInStatusBar()V

    .line 1023
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit16 v0, v0, 0x2000

    if-lez v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAutoExitFullscreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private makeStatusBarView(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 332
    .local v4, res:Landroid/content/res/Resources;
    const v9, 0x1050005

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    .line 334
    const v9, 0x7f030001

    const/4 v10, 0x0

    invoke-static {p1, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandedView;

    .line 336
    .local v2, expanded:Lcom/android/systemui/statusbar/ExpandedView;
    iput-object p0, v2, Lcom/android/systemui/statusbar/ExpandedView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 338
    const/high16 v9, 0x7f03

    const/4 v10, 0x0

    invoke-static {p1, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/StatusBarView;

    .line 339
    .local v5, sb:Lcom/android/systemui/statusbar/StatusBarView;
    iput-object p0, v5, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 342
    const/4 v9, -0x3

    iput v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPixelFormat:I

    .line 343
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 344
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPixelFormat:I

    .line 348
    :cond_0
    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    .line 349
    const v9, 0x7f0b0005

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 350
    const v9, 0x7f0b0004

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/IconMerger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    .line 351
    const v9, 0x7f0b0001

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    .line 352
    const v9, 0x7f0b0006

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/Clock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusClock:Lcom/android/systemui/statusbar/Clock;

    .line 353
    const v9, 0x7f0b0007

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    .line 354
    const v9, 0x7f0b0002

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/DateView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    .line 355
    const v9, 0x7f0b0003

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CarrierLabel;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierView:Lcom/android/systemui/statusbar/CarrierLabel;

    .line 356
    new-instance v9, Lcom/android/systemui/statusbar/BatteryStatus;

    const-string v10, "battery"

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/statusbar/BatteryStatus;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBattery:Lcom/android/systemui/statusbar/BatteryStatus;

    .line 358
    new-instance v9, Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;

    invoke-direct {v9, p0, p1}, Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    .line 359
    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    .line 360
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    .line 361
    const v9, 0x7f0b0010

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationScroll:Landroid/widget/ScrollView;

    .line 362
    const v9, 0x108038a

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 364
    .local v8, top:Landroid/graphics/drawable/BitmapDrawable;
    const v9, 0x1080389

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 366
    .local v1, bottom:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationScroll:Landroid/widget/ScrollView;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/ScrollView;->setCustomizedFadingEdge(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 367
    const v9, 0x7f0b0013

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    .line 368
    const v9, 0x7f0b0014

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    .line 369
    sget-boolean v9, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-eqz v9, :cond_2

    const v9, 0x7f0b0015

    :goto_0
    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/view/View;

    .line 370
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/view/View;

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    const v9, 0x7f0b000d

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedNotifications:Landroid/view/View;

    .line 373
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedNotifications:Landroid/view/View;

    iput-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedCurrentContent:Landroid/view/View;

    .line 374
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    .line 375
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedNotifications:Landroid/view/View;

    aput-object v11, v9, v10

    .line 376
    sget-boolean v9, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-nez v9, :cond_1

    .line 377
    const v9, 0x7f0b000e

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    .line 378
    .local v6, stub:Landroid/view/ViewStub;
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    const/4 v10, 0x1

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarToggles;

    aput-object v0, v9, v10

    .line 381
    .end local v6           #stub:Landroid/view/ViewStub;
    :cond_1
    new-instance v9, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;

    invoke-direct {v9, p0, p1, v5}, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/content/Context;Lcom/android/systemui/statusbar/StatusBarView;)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    .line 383
    const v9, 0x7f0b0009

    invoke-virtual {v5, v9}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/TickerView;

    .line 384
    .local v7, tickerView:Lcom/android/systemui/statusbar/TickerView;
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    iput-object v9, v7, Lcom/android/systemui/statusbar/TickerView;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    .line 386
    const v9, 0x7f030007

    const/4 v10, 0x0

    invoke-static {p1, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/TrackingView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    .line 387
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    const v10, 0x7f0b0020

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CloseDragHandle;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    .line 388
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    const v10, 0x7f0b001f

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScreenView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Landroid/widget/ScreenView;

    .line 389
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    sget-boolean v10, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-eqz v10, :cond_3

    const v10, 0x7f0b001f

    :goto_1
    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 392
    const/high16 v9, 0x7f08

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    .line 393
    const v9, 0x7f080001

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseDragHandleShadowHeight:I

    .line 397
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 398
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateViewsInStatusBar()V

    .line 401
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 402
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string v9, "android.intent.action.LEAVE_INCALL_SCREEN_DURING_CALL"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    const-string v9, "android.intent.action.ENTER_INCALL_SCREEN_DURING_CALL"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    const-string v9, "com.android.systemui.statusbar.TRIGGER_CAMERA_KEY"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v9, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 409
    return-void

    .line 369
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v7           #tickerView:Lcom/android/systemui/statusbar/TickerView;
    :cond_2
    const v9, 0x7f0b000f

    goto/16 :goto_0

    .line 389
    .restart local v7       #tickerView:Lcom/android/systemui/statusbar/TickerView;
    :cond_3
    const v10, 0x7f0b0021

    goto :goto_1
.end method

.method private setAreThereNotifications()V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 770
    :goto_0
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 771
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateViewsInStatusBar()V

    .line 772
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuideForNotification()Z

    .line 773
    return-void

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showUserGuide(IILandroid/view/View;)V
    .locals 3
    .parameter "arrowMode"
    .parameter "resId"
    .parameter "anchor"

    .prologue
    const/4 v2, 0x0

    .line 1792
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->dismissUserGuide()V

    .line 1793
    new-instance v0, Landroid/widget/GuidePopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Landroid/widget/GuidePopupWindow;

    .line 1794
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Landroid/widget/GuidePopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 1795
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Landroid/widget/GuidePopupWindow;

    invoke-virtual {v0, p2}, Landroid/widget/GuidePopupWindow;->setGuideText(I)V

    .line 1796
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Landroid/widget/GuidePopupWindow;

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/widget/GuidePopupWindow;->setWindowLayoutType(I)V

    .line 1797
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Landroid/widget/GuidePopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v2, v2, v1}, Landroid/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 1798
    return-void
.end method

.method private showUserGuideForCall()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1801
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideCall:I

    if-nez v0, :cond_0

    .line 1802
    const v0, 0x7f090020

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuide(IILandroid/view/View;)V

    .line 1805
    const/4 v0, 0x1

    .line 1807
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private showUserGuideForNotification()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1811
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideNotification:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Landroid/widget/GuidePopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideWindow:Landroid/widget/GuidePopupWindow;

    invoke-virtual {v0}, Landroid/widget/GuidePopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1814
    :cond_0
    const v0, 0x7f09001d

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuide(IILandroid/view/View;)V

    .line 1817
    const/4 v0, 0x1

    .line 1819
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private showUserGuideForToggle()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1823
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideToggle:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Landroid/widget/ScreenView;

    invoke-virtual {v0}, Landroid/widget/ScreenView;->getVisibleRange()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Landroid/widget/ScreenView;

    invoke-virtual {v1}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1824
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideToggle:I

    .line 1825
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "user_guide_status_bar_toggle"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1826
    const v0, 0x7f09001e

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Landroid/widget/ScreenView;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuide(IILandroid/view/View;)V

    move v0, v2

    .line 1831
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showUserGuideForToggleList()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1835
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideToggleList:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Landroid/widget/ScreenView;

    invoke-virtual {v0}, Landroid/widget/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Landroid/widget/ScreenView;

    invoke-virtual {v1}, Landroid/widget/ScreenView;->getVisibleRange()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Landroid/widget/ScreenView;

    invoke-virtual {v1}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1836
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideToggleList:I

    .line 1837
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "user_guide_status_bar_toggle_list"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1838
    const v0, 0x7f09001f

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Landroid/widget/ScreenView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuide(IILandroid/view/View;)V

    move v0, v3

    .line 1843
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tick(Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1441
    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1442
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/Ticker;->addEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 1448
    :cond_0
    return-void
.end method

.method private triggerCameraKey()V
    .locals 3

    .prologue
    .line 1778
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_key_preferred_action_toggle_id"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1781
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Landroid/util/ToggleManager;

    invoke-virtual {v1, v0}, Landroid/util/ToggleManager;->performToggle(I)Z

    .line 1782
    return-void
.end method

.method private updateBatteryIndicator(Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicator:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicatorCharging:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->requestLayout()V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->invalidate()V

    .line 466
    return-void
.end method

.method private updateStatusBarBackground()V
    .locals 2

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundResource(I)V

    .line 916
    :goto_0
    return-void

    .line 904
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExitingFullscreen:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundResource(I)V

    goto :goto_0

    .line 907
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 908
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundResource(I)V

    goto :goto_0

    .line 910
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 911
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundResource(I)V

    goto :goto_0

    .line 914
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateUsbModeNotification(Lcom/android/internal/statusbar/StatusBarNotification;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 602
    sget-boolean v0, Landroid/os/Build;->IS_MILESTONE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEFY:Z

    if-eqz v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    if-eqz p1, :cond_0

    const-string v0, "com.android.systemui"

    iget-object v1, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    if-ne v0, v4, :cond_0

    .line 607
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeNotification:Landroid/view/View;

    if-nez v0, :cond_3

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedNotifications:Landroid/view/View;

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeNotification:Landroid/view/View;

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedNotifications:Landroid/view/View;

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButton:Landroid/widget/SlidingButton;

    .line 610
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$1;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButtonCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 623
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeNotification:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarService$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarService$2;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    :cond_3
    if-nez p2, :cond_4

    .line 634
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeNotification:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 637
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeNotification:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButton:Landroid/widget/SlidingButton;

    invoke-virtual {v0, v3}, Landroid/widget/SlidingButton;->setEnabled(Z)V

    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButton:Landroid/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 640
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButton:Landroid/widget/SlidingButton;

    iget v1, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    if-ne v1, v4, :cond_5

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SlidingButton;->setChecked(Z)V

    .line 642
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButton:Landroid/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mUsbModeButtonCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 640
    goto :goto_1
.end method

.method private updateViewsInStatusBar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 777
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowBatteryUnderKeyguard:Z

    if-nez v1, :cond_0

    move v1, v5

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->hideBatteryIndicatorForKeyguard(Z)V

    .line 779
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBattery:Lcom/android/systemui/statusbar/BatteryStatus;

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowBatteryUnderKeyguard:Z

    if-nez v1, :cond_1

    move v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BatteryStatus;->disable(Z)V

    .line 780
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusClock:Lcom/android/systemui/statusbar/Clock;

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowTimeUnderKeyguard:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/Clock;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierView:Lcom/android/systemui/statusbar/CarrierLabel;

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowCarrierUnderKeyguard:Z

    if-eqz v1, :cond_3

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowNotificationUnderKeyguard:Z

    if-eqz v1, :cond_4

    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/IconMerger;->setVisibility(I)V

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowStatusUnderKeyguard:Z

    if-eqz v1, :cond_5

    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 784
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowDateUnderKeyguard:Z

    if-eqz v1, :cond_6

    move v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DateView;->setVisibility(I)V

    .line 785
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sShowDateUnderKeyguard:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DateView;->setUpdates(Z)V

    .line 807
    :goto_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->enableAlternative(Z)V

    .line 808
    return-void

    :cond_0
    move v1, v3

    .line 778
    goto :goto_0

    :cond_1
    move v1, v3

    .line 779
    goto :goto_1

    :cond_2
    move v1, v4

    .line 780
    goto :goto_2

    :cond_3
    move v1, v4

    .line 781
    goto :goto_3

    :cond_4
    move v1, v4

    .line 782
    goto :goto_4

    :cond_5
    move v1, v4

    .line 783
    goto :goto_5

    :cond_6
    move v1, v4

    .line 784
    goto :goto_6

    .line 788
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/StatusBarView;->hideBatteryIndicatorForKeyguard(Z)V

    .line 789
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBattery:Lcom/android/systemui/statusbar/BatteryStatus;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BatteryStatus;->disable(Z)V

    .line 790
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusClock:Lcom/android/systemui/statusbar/Clock;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/Clock;->setVisibility(I)V

    .line 793
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    move v0, v5

    .line 795
    :goto_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCarrierView:Lcom/android/systemui/statusbar/CarrierLabel;

    if-eqz v0, :cond_a

    move v2, v3

    :goto_9
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/CarrierLabel;->setVisibility(I)V

    .line 798
    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_b

    move v0, v5

    .line 801
    :goto_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    if-eqz v0, :cond_c

    move v0, v3

    :goto_b
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/IconMerger;->setVisibility(I)V

    .line 802
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 804
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-eqz v1, :cond_d

    move v1, v3

    :goto_c
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DateView;->setVisibility(I)V

    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DateView;->setUpdates(Z)V

    goto :goto_7

    :cond_9
    move v0, v3

    .line 793
    goto :goto_8

    :cond_a
    move v2, v4

    .line 795
    goto :goto_9

    :cond_b
    move v0, v3

    .line 798
    goto :goto_a

    :cond_c
    move v0, v4

    .line 801
    goto :goto_b

    :cond_d
    move v1, v4

    .line 804
    goto :goto_c
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 6
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "icon"

    .prologue
    const-string v5, "battery"

    .line 435
    const-string v1, "battery"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBattery:Lcom/android/systemui/statusbar/BatteryStatus;

    move-object v0, v1

    .line 438
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    :goto_0
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 439
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->enableAlternative(Z)V

    .line 440
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 442
    const-string v1, "battery"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/StatusBarService;->updateBatteryIndicator(Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 445
    :cond_0
    return-void

    .line 435
    .end local v0           #view:Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 476
    .line 477
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 478
    const/4 v0, 0x0

    .line 479
    const-string v1, "StatusBarService"

    const-string v2, "Notification has fullScreenIntent; sending fullScreenIntent"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :try_start_0
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v1

    .line 487
    if-nez v1, :cond_0

    .line 497
    :goto_1
    return-void

    .line 489
    :cond_0
    if-eqz v0, :cond_1

    .line 490
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/StatusBarService;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 494
    :cond_1
    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->updateUsbModeNotification(Lcom/android/internal/statusbar/StatusBarNotification;Z)V

    .line 495
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 496
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_1

    .line 482
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x0

    .line 707
    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v7

    .line 708
    if-eqz v7, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    .line 710
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    move-object v8, v1

    .line 716
    :goto_0
    invoke-virtual {p0, p2, v8}, Lcom/android/systemui/statusbar/StatusBarService;->makeNotificationView(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;

    move-result-object v1

    .line 717
    if-nez v1, :cond_1

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v0, v12

    .line 743
    :goto_1
    return-object v0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    .line 713
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    move-object v8, v1

    goto :goto_0

    .line 722
    :cond_1
    const/4 v2, 0x0

    aget-object v3, v1, v2

    .line 723
    const/4 v2, 0x1

    aget-object v4, v1, v2

    .line 724
    const/4 v2, 0x2

    aget-object v5, v1, v2

    .line 726
    new-instance v6, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 728
    new-instance v1, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v9, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v9, v9, Landroid/app/Notification;->icon:I

    iget-object v10, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v10, v10, Landroid/app/Notification;->iconLevel:I

    iget-object v11, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v11, v11, Landroid/app/Notification;->number:I

    invoke-direct {v1, v2, v9, v10, v11}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;III)V

    .line 733
    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Coulding create icon: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v0, v12

    .line 735
    goto :goto_1

    :cond_2
    move-object v1, p1

    move-object v2, p2

    .line 738
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationData;->add(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/StatusBarIconView;)I

    move-result v0

    .line 739
    invoke-virtual {v8, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 741
    invoke-direct {p0, v7, v0}, Lcom/android/systemui/statusbar/StatusBarService;->chooseIconIndex(ZI)I

    move-result v0

    .line 742
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    invoke-virtual {v1, v6, v0}, Lcom/android/systemui/statusbar/IconMerger;->addView(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    move-object v0, v6

    .line 743
    goto :goto_1
.end method

.method protected addStatusBarView()V
    .locals 8

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 413
    .local v6, res:Landroid/content/res/Resources;
    const v1, 0x1050004

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 415
    .local v2, height:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    .line 416
    .local v7, view:Lcom/android/systemui/statusbar/StatusBarView;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const/16 v4, 0x48

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 423
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 424
    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 425
    const v1, 0x1030074

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 427
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    return-void
.end method

.method public animateCollapse()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1051
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_0

    .line 1066
    :goto_0
    return-void

    .line 1056
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_1

    .line 1057
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    .line 1063
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    .line 1064
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 1065
    const/high16 v1, -0x3b06

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto :goto_0

    .line 1059
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getTrackingViewHeight()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_1
.end method

.method public animateExpand()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1030
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    .line 1037
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 1038
    const/high16 v0, 0x44fa

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto :goto_0
.end method

.method public disable(I)V
    .locals 5
    .parameter

    .prologue
    .line 814
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 815
    xor-int/2addr v0, p1

    .line 816
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 818
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_0

    .line 819
    and-int/lit16 v1, p1, 0x2000

    if-eqz v1, :cond_5

    .line 820
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAutoExitFullscreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 829
    :cond_0
    :goto_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 830
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_6

    .line 832
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 833
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->dismissUserGuide()V

    .line 845
    :cond_1
    :goto_1
    const/high16 v1, 0x8

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 846
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateViewsInStatusBar()V

    .line 849
    :cond_2
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_8

    .line 850
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    .line 852
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-eqz v0, :cond_3

    .line 853
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Ticker;->halt()V

    .line 858
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateViewsInStatusBar()V

    .line 866
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateStatusBarBackground()V

    .line 867
    return-void

    .line 823
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExitingFullscreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x64

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 825
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    goto :goto_0

    .line 836
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_7

    .line 837
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuideForNotification()Z

    goto :goto_1

    .line 840
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuideForCall()Z

    goto :goto_1

    .line 859
    :cond_8
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 860
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-eqz v0, :cond_4

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    .line 862
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Ticker;->halt()V

    goto :goto_2
.end method

.method doAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1134
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->incrementAnim()V

    .line 1139
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getTrackingViewHeight()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 1141
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1142
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->performExpand()V

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1145
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 1147
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    goto :goto_0

    .line 1151
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1152
    iget-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1153
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method doRevealAnimation()V
    .locals 5

    .prologue
    .line 1178
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getPaddingBottom()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 1179
    .local v0, h:I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1180
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->incrementAnim()V

    .line 1181
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 1182
    int-to-float v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1183
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1186
    iget-wide v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1187
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v0, "  mDisplayHeight="

    .line 1514
    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1558
    :goto_0
    return-void

    .line 1522
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1523
    :try_start_0
    const-string v1, "Current Status Bar state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTicking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTracking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAnimating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimVel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimAccel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurAnimationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimLastTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimatingReveal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mViewDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTrackingParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTrackingView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOngoingItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLatestItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCloseView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTickerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1546
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1550
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarService$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarService$6;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1546
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public expandTab(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 920
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-eqz v0, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    move v0, v2

    .line 926
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/TrackingView;->selectTab(II)V

    .line 927
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    .line 928
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 929
    const/high16 v0, 0x44fa

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto :goto_0

    :cond_2
    move v0, p1

    goto :goto_1
.end method

.method flingToNextTab()V
    .locals 3

    .prologue
    .line 940
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/TrackingView;->selectTab(II)V

    .line 943
    :cond_0
    return-void
.end method

.method flingToPreviousTab()V
    .locals 3

    .prologue
    .line 934
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    if-lez v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/TrackingView;->selectTab(II)V

    .line 937
    :cond_0
    return-void
.end method

.method getExpandedHeight()I
    .locals 3

    .prologue
    .line 1707
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Landroid/widget/ScreenView;

    invoke-virtual {v1}, Landroid/widget/ScreenView;->getHeight()I

    move-result v1

    move v0, v1

    .line 1708
    .local v0, delta:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getTrackingViewHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/CloseDragHandle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1

    .line 1707
    .end local v0           #delta:I
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method getTrackingViewHeight()I
    .locals 2

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseDragHandleShadowHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    .locals 7
    .parameter "key"
    .parameter "n"
    .parameter "message"

    .prologue
    .line 1457
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotification(Landroid/os/IBinder;)V

    .line 1459
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    :goto_0
    return-void

    .line 1460
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method incrementAnim()V
    .locals 7

    .prologue
    .line 1165
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1166
    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    .line 1167
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1168
    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1169
    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1170
    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f00

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1171
    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1172
    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    .line 1175
    return-void
.end method

.method interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x2

    const/high16 v6, 0x4316

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 1289
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExitingFullscreen:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    move v0, v8

    .line 1385
    :goto_0
    return v0

    .line 1293
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v0

    .line 1294
    mul-int/lit8 v1, v0, 0x2

    .line 1296
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarView;->isReturnToInCallScreenButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 1298
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 1299
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1301
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    move v0, v8

    .line 1302
    goto :goto_0

    .line 1304
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    if-eqz v2, :cond_16

    .line 1305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v7, :cond_4

    .line 1306
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    move v0, v8

    .line 1308
    goto :goto_0

    .line 1310
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    move v0, v8

    .line 1311
    goto :goto_0

    .line 1313
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    .line 1317
    :goto_1
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_f

    .line 1318
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    .line 1320
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v4, :cond_c

    .line 1321
    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    .line 1326
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_6

    if-lt v3, v1, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getTrackingViewHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    if-le v3, v0, :cond_a

    .line 1332
    :cond_7
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 1333
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    .line 1334
    if-lt v0, v1, :cond_a

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    sub-int v1, v4, v1

    if-ge v0, v1, :cond_a

    .line 1335
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-nez v0, :cond_9

    .line 1336
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_8
    move v1, v8

    :goto_3
    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/statusbar/TrackingView;->selectTab(II)V

    .line 1342
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_e

    move v0, v5

    :goto_4
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 1343
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1381
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    if-ne v0, v2, :cond_b

    .line 1382
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEventDown:Landroid/view/MotionEvent;

    :cond_b
    move v0, v8

    .line 1385
    goto/16 :goto_0

    .line 1323
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/TrackingView;->getLocationOnScreen([I)V

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    aget v0, v0, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/TrackingView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    goto :goto_2

    :cond_d
    move v1, v5

    .line 1336
    goto :goto_3

    :cond_e
    move v0, v8

    .line 1342
    goto :goto_4

    .line 1346
    :cond_f
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    if-eqz v1, :cond_a

    .line 1347
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1348
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1349
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_11

    .line 1350
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 1351
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    if-eqz v3, :cond_10

    if-lt v1, v0, :cond_a

    .line 1354
    :cond_10
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 1355
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_5

    .line 1357
    :cond_11
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_a

    .line 1358
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1360
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 1361
    cmpg-float v1, v0, v4

    if-gez v1, :cond_15

    move v1, v5

    .line 1363
    :goto_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 1364
    cmpg-float v4, v3, v4

    if-gez v4, :cond_12

    .line 1365
    neg-float v3, v3

    .line 1367
    :cond_12
    cmpl-float v4, v3, v6

    if-lez v4, :cond_13

    move v3, v6

    .line 1371
    :cond_13
    float-to-double v4, v0

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v0, v3

    .line 1372
    if-eqz v1, :cond_14

    .line 1373
    neg-float v0, v0

    .line 1376
    :cond_14
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1, v0, v8}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto/16 :goto_5

    :cond_15
    move v1, v8

    .line 1361
    goto :goto_6

    :cond_16
    move-object v2, p1

    goto/16 :goto_1
.end method

.method makeNotificationView(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 657
    iget-object v1, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 658
    iget-object v6, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 659
    if-nez v6, :cond_0

    .line 660
    const/4 v0, 0x0

    .line 701
    :goto_0
    return-object v0

    .line 664
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 665
    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 666
    const-string v0, "com.android.systemui"

    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 669
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 673
    :cond_2
    const v0, 0x7f0b001d

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 674
    const/high16 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 675
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 676
    iget-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 677
    if-eqz v2, :cond_3

    .line 678
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$Launcher;

    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v5, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/StatusBarService$Launcher;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    :cond_3
    const/4 v0, 0x0

    .line 683
    const/4 v1, 0x0

    .line 685
    :try_start_0
    invoke-virtual {v6, p0, p2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 687
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 692
    :goto_1
    if-nez v1, :cond_4

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 694
    const-string v2, "StatusBarService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t inflate view for notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 695
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 697
    :cond_4
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 698
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 701
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v7, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 689
    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1
.end method

.method onBarViewAttached()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1565
    const/4 v5, -0x3

    .line 1567
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7de

    const v4, 0x20300

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1576
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1577
    const-string v1, "TrackingView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1578
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1579
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    .line 1581
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1582
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    .line 231
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "user_guide_status_bar_call"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideCall:I

    .line 232
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "user_guide_status_bar_notification"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideNotification:I

    .line 233
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "user_guide_status_bar_toggle"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideToggle:I

    .line 234
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "user_guide_status_bar_toggle_list"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideToggleList:I

    .line 236
    invoke-static {p0}, Landroid/util/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10d0021

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBarService;->sShowBatteryUnderKeyguard:Z

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10d0022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBarService;->sShowCarrierUnderKeyguard:Z

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10d0023

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBarService;->sShowDateUnderKeyguard:Z

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10d0024

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBarService;->sShowNotificationUnderKeyguard:Z

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10d0025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBarService;->sShowStatusUnderKeyguard:Z

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10d0026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBarService;->sShowTimeUnderKeyguard:Z

    .line 250
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 251
    new-instance v7, Landroid/util/ToggleManager;

    invoke-direct {v7, p0}, Landroid/util/ToggleManager;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Landroid/util/ToggleManager;

    .line 254
    const-string v7, "statusbar"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 256
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    .line 257
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeStatusBarView(Landroid/content/Context;)V

    .line 260
    new-instance v3, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v3}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 261
    .local v3, iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v4, notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v5, notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    new-instance v7, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v7, p0, v3}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 265
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface {v7, v8, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v0

    .line 272
    .local v0, N:I
    const/4 v6, 0x0

    .line 273
    .local v6, viewIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 274
    invoke-virtual {v3, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    .line 275
    .local v2, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v2, :cond_0

    .line 276
    invoke-virtual {v3, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v1, v6, v2}, Lcom/android/systemui/statusbar/StatusBarService;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 277
    add-int/lit8 v6, v6, 0x1

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 282
    .end local v2           #icon:Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 283
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v0, v7, :cond_2

    .line 284
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 285
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/StatusBarService;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 288
    :cond_2
    const-string v7, "StatusBarService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notification list length mismatch: keys="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " notifications="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->addStatusBarView()V

    .line 296
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarPolicy;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/StatusBarPolicy;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconPolicy:Lcom/android/systemui/statusbar/StatusBarPolicy;

    .line 297
    return-void

    .line 266
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v6           #viewIndex:I
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Landroid/util/ToggleManager;

    invoke-virtual {v0}, Landroid/util/ToggleManager;->onDestroy()V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->unregisterCallbacks()V

    .line 303
    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->unregisterStatusBar()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconPolicy:Lcom/android/systemui/statusbar/StatusBarPolicy;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconPolicy:Lcom/android/systemui/statusbar/StatusBarPolicy;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarPolicy;->onDestroy()V

    .line 311
    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconPolicy:Lcom/android/systemui/statusbar/StatusBarPolicy;

    .line 313
    :cond_0
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 314
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 315
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManagerImpl;->closeAll()V

    .line 316
    return-void

    .line 306
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method onTabClick(II)V
    .locals 8
    .parameter "tab_index"
    .parameter "animationDirection"

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x0

    .line 947
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    if-ne v3, p1, :cond_0

    .line 969
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    array-length v3, v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 950
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    aget-object v3, v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 951
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 949
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 953
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    aget-object v3, v3, p1

    iput-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedCurrentContent:Landroid/view/View;

    .line 954
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedCurrentContent:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 956
    if-eqz p2, :cond_2

    .line 957
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    neg-int v3, p2

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v2, v5, v3, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 959
    .local v2, outAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 960
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 962
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    mul-int/2addr v3, p2

    int-to-float v3, v3

    invoke-direct {v1, v3, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 964
    .local v1, inAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 965
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:[Landroid/view/View;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 968
    .end local v1           #inAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v2           #outAnimation:Landroid/view/animation/TranslateAnimation;
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContentContentIndex:I

    goto :goto_0
.end method

.method onTrackingViewAttached()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1589
    const/4 v0, -0x3

    .line 1591
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getTrackingViewHeight()I

    move-result v1

    .line 1592
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1593
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1594
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getExpandedHeight()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1595
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1596
    neg-int v1, v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1597
    const/16 v1, 0x7de

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1598
    const/16 v1, 0x1328

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1603
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1604
    const/16 v1, 0x37

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1605
    const-string v1, "StatusBarExpanded"

    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1606
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1607
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setFormat(I)V

    .line 1608
    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    .line 1610
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 1611
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1614
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1615
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1617
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.policy.impl.STATUS_BAR_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1618
    return-void
.end method

.method performCollapse()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_1

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1113
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    .line 1114
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    .line 1115
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1116
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1117
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1118
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/TrackingView;->setVisibility(I)V

    .line 1119
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    .line 1120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updateViewsInStatusBar()V

    .line 1122
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit16 v0, v0, 0x2000

    if-lez v0, :cond_2

    .line 1123
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAutoExitFullscreenRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1126
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v0, v3, v3}, Lcom/android/systemui/statusbar/TrackingView;->selectTab(II)V

    .line 1130
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    goto :goto_0
.end method

.method performExpand()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1070
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1101
    :cond_0
    :goto_0
    return-void

    .line 1073
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    .line 1077
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    .line 1078
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeExpandedVisible()V

    .line 1081
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    if-nez v0, :cond_0

    .line 1082
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideNotification:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 1083
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideNotification:I

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "user_guide_status_bar_notification"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1086
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideCall:I

    if-nez v0, :cond_3

    .line 1087
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1088
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mGuideCall:I

    .line 1089
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "user_guide_status_bar_call"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1093
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-eqz v0, :cond_0

    .line 1094
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuideForToggle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->showUserGuideForToggleList()Z

    goto :goto_0
.end method

.method performFling(IFZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x44fa

    const/high16 v1, 0x4348

    const/high16 v5, -0x3b06

    const/high16 v4, -0x3cb8

    const/4 v3, 0x0

    .line 1224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 1225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getTrackingViewHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    .line 1227
    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1228
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1232
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_3

    .line 1233
    if-nez p3, :cond_2

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_0

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/CloseDragHandle;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x41c8

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    cmpl-float v0, p2, v4

    if-lez v0, :cond_2

    .line 1238
    :cond_0
    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1239
    cmpg-float v0, p2, v3

    if-gez v0, :cond_1

    .line 1240
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1273
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1274
    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    .line 1275
    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1277
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1278
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1279
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1280
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->stopTracking()V

    .line 1281
    return-void

    .line 1245
    :cond_2
    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1246
    cmpl-float v0, p2, v3

    if-lez v0, :cond_1

    .line 1247
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0

    .line 1251
    :cond_3
    if-nez p3, :cond_4

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_4

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    cmpl-float v0, p2, v4

    if-lez v0, :cond_5

    .line 1256
    :cond_4
    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1257
    cmpg-float v0, p2, v3

    if-gez v0, :cond_1

    .line 1258
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0

    .line 1264
    :cond_5
    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1265
    cmpl-float v0, p2, v3

    if-lez v0, :cond_1

    .line 1266
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0
.end method

.method prepareTracking(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x3e9

    const/16 v1, 0x3e8

    const/4 v4, 0x1

    .line 1194
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->dismissUserGuide()V

    .line 1195
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    .line 1196
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1197
    if-eqz p2, :cond_0

    .line 1198
    const/high16 v0, 0x44fa

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1199
    const/high16 v0, 0x4348

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1200
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1201
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1202
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1203
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 1204
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1206
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1207
    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    .line 1208
    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1209
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1210
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1212
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeExpandedVisible()V

    .line 1221
    :goto_0
    return-void

    .line 1215
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_1

    .line 1216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1217
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1219
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 1
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 473
    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 587
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    move-result-object v0

    .line 589
    .local v0, old:Lcom/android/internal/statusbar/StatusBarNotification;
    if-eqz v0, :cond_0

    .line 591
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/Ticker;->removeEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 594
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateUsbModeNotification(Lcom/android/internal/statusbar/StatusBarNotification;Z)V

    .line 595
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 596
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 598
    :cond_0
    return-void
.end method

.method removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;
    .locals 3
    .parameter

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 748
    if-nez v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 750
    if-nez v0, :cond_0

    .line 751
    const-string v0, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeNotification for unknown key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v0, 0x0

    .line 760
    :goto_0
    return-object v0

    .line 756
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 758
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 760
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    goto :goto_0
.end method

.method stopTracking()V
    .locals 1

    .prologue
    .line 1159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    .line 1160
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1162
    return-void
.end method

.method updateExpandedHeight()V
    .locals 2

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    if-eqz v0, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getExpandedHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1714
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1716
    :cond_0
    return-void
.end method

.method updateExpandedViewPos(I)V
    .locals 13
    .parameter "expandedPosition"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/16 v10, -0x2710

    .line 1628
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v2

    .line 1629
    .local v2, h:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getTrackingViewHeight()I

    move-result v1

    .line 1633
    .local v1, disph:I
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v7, :cond_2

    .line 1634
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    if-eqz v7, :cond_0

    .line 1635
    neg-int v7, v1

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1636
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_0

    .line 1637
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1638
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8, v9}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1641
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_1

    .line 1642
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v8, v1

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1643
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1704
    :cond_1
    :goto_0
    return-void

    .line 1650
    :cond_2
    const/16 v7, -0x2711

    if-ne p1, v7, :cond_6

    .line 1651
    const/4 v5, 0x0

    .line 1665
    .local v5, pos:I
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1666
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1667
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8, v9}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1669
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_1

    .line 1670
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/CloseDragHandle;->getLocationInWindow([I)V

    .line 1671
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    aget v7, v7, v12

    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleBar:Landroid/widget/ScreenView;

    invoke-virtual {v8}, Landroid/widget/ScreenView;->getHeight()I

    move-result v8

    :goto_2
    sub-int v0, v7, v8

    .line 1673
    .local v0, closePos:I
    if-eq p1, v10, :cond_1

    .line 1674
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    add-int v8, v5, v0

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedCurrentContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1675
    move v3, v2

    .line 1676
    .local v3, max:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    if-le v7, v3, :cond_3

    .line 1677
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1679
    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1680
    .local v4, min:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v7, v4, :cond_4

    .line 1681
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1684
    :cond_4
    iget v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/TrackingView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    if-le v7, v2, :cond_a

    move v6, v12

    .line 1685
    .local v6, visible:Z
    :goto_3
    if-nez v6, :cond_5

    .line 1688
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v8, v1

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1690
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1693
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    goto :goto_0

    .line 1653
    .end local v0           #closePos:I
    .end local v3           #max:I
    .end local v4           #min:I
    .end local v5           #pos:I
    .end local v6           #visible:Z
    :cond_6
    if-ne p1, v10, :cond_7

    .line 1654
    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .restart local v5       #pos:I
    goto :goto_1

    .line 1657
    .end local v5           #pos:I
    :cond_7
    if-gt p1, v1, :cond_8

    .line 1658
    move v5, p1

    .line 1662
    .restart local v5       #pos:I
    :goto_4
    sub-int/2addr v5, v1

    goto/16 :goto_1

    .line 1660
    .end local v5           #pos:I
    :cond_8
    move v5, v1

    .restart local v5       #pos:I
    goto :goto_4

    :cond_9
    move v8, v11

    .line 1671
    goto :goto_2

    .restart local v0       #closePos:I
    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_a
    move v6, v11

    .line 1684
    goto :goto_3
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "old"
    .parameter "icon"

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 454
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 456
    const-string v1, "battery"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    invoke-direct {p0, p5}, Lcom/android/systemui/statusbar/StatusBarService;->updateBatteryIndicator(Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 459
    :cond_0
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-string v9, "StatusBarService"

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->findEntry(Landroid/os/IBinder;)I

    move-result v0

    .line 502
    if-ltz v0, :cond_1

    .line 503
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    .line 512
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationData;->getEntryAt(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v6

    .line 513
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 514
    iget-object v1, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 516
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 530
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v4, v4, Landroid/app/Notification;->when:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v0

    if-ne v2, v0, :cond_5

    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v0, :cond_5

    if-eqz v7, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 539
    iput-object p2, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 542
    :try_start_0
    iget-object v0, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v7, p0, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 544
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 545
    if-eqz v2, :cond_0

    .line 546
    iget-object v8, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$Launcher;

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/StatusBarService$Launcher;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    :cond_0
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->iconLevel:I

    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->number:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;III)V

    .line 555
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t update icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_1
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->findEntry(Landroid/os/IBinder;)I

    move-result v0

    .line 506
    if-gez v0, :cond_2

    .line 507
    const-string v0, "StatusBarService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNotification for unknown key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 510
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    goto/16 :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 562
    const-string v1, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t reapply views for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 573
    :cond_3
    :goto_2
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 576
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/StatusBarService;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 580
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateUsbModeNotification(Lcom/android/internal/statusbar/StatusBarNotification;Z)V

    .line 581
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 582
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_1

    .line 568
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 569
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    goto :goto_2
.end method

.method updateResources()V
    .locals 2

    .prologue
    .line 1854
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1855
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    .line 1858
    return-void
.end method

.method vibrate()V
    .locals 2

    .prologue
    .line 1869
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 1870
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1871
    return-void
.end method

.method public viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const-string v2, ","

    .line 1509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method visibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1730
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_0

    .line 1731
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPanelSlightlyVisible:Z

    .line 1733
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1738
    :cond_0
    :goto_0
    return-void

    .line 1734
    :catch_0
    move-exception v0

    goto :goto_0
.end method
