.class public Lcom/android/systemui/statusbar/StatusBarView;
.super Landroid/widget/FrameLayout;
.source "StatusBarView.java"


# instance fields
.field mBatteryIndicator:Landroid/widget/ImageView;

.field mBatteryIndicatorCharging:Landroid/widget/ImageView;

.field private mBatteryIndicatorWidth:I

.field private mBatteryLowLevel:I

.field private mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

.field mCallStateIcon:Landroid/widget/ImageView;

.field mCallTimer:Landroid/widget/Chronometer;

.field private mHideBatteryIndicatorUnderKeyguard:Z

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mNotificationIcons:Landroid/view/ViewGroup;

.field mReturnToInCallScreenButton:Landroid/view/View;

.field mScreenIsOn:Z

.field mService:Lcom/android/systemui/statusbar/StatusBarService;

.field private mShowBatteryIndicator:Z

.field mStatusIcons:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mScreenIsOn:Z

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarView$1;-><init>(Lcom/android/systemui/statusbar/StatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/StatusBarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarView;->updateBatterySettings()V

    return-void
.end method

.method private updateBatterySettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "battery_indicator_style"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mShowBatteryIndicator:Z

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryLowLevel:I

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_level_low_customized"

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryLowLevel:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryLowLevel:I

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarView;->requestLayout()V

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarView;->invalidate()V

    .line 137
    return-void

    :cond_0
    move v0, v3

    .line 124
    goto :goto_0
.end method


# virtual methods
.method public hideBatteryIndicatorForKeyguard(Z)V
    .locals 0
    .parameter "hide"

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHideBatteryIndicatorUnderKeyguard:Z

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarView;->requestLayout()V

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarView;->invalidate()V

    .line 143
    return-void
.end method

.method public hideReturnToInCallScreenButton()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mReturnToInCallScreenButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    return-void
.end method

.method public isReturnToInCallScreenButtonVisible()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mReturnToInCallScreenButton:Landroid/view/View;

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

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 147
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarService;->onBarViewAttached()V

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "battery_indicator_style"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "battery_level_low_customized"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 162
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 169
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mShowBatteryIndicator:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHideBatteryIndicatorUnderKeyguard:Z

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicatorWidth:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 234
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 235
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 78
    .local v0, powerManager:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mScreenIsOn:Z

    .line 80
    const v1, 0x7f0b0004

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    .line 81
    const v1, 0x7f0b0005

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    .line 83
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicator:Landroid/widget/ImageView;

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicator:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicator:Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 86
    const/high16 v1, 0x7f0b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicatorCharging:Landroid/widget/ImageView;

    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicatorCharging:Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarView;->updateBatterySettings()V

    .line 90
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarView$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/StatusBarView$2;-><init>(Lcom/android/systemui/statusbar/StatusBarView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryStyleChangeObserver:Landroid/database/ContentObserver;

    .line 97
    const v1, 0x7f0b000a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mReturnToInCallScreenButton:Landroid/view/View;

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mReturnToInCallScreenButton:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/statusbar/StatusBarView$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/StatusBarView$3;-><init>(Lcom/android/systemui/statusbar/StatusBarView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v1, 0x7f0b000c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mCallTimer:Landroid/widget/Chronometer;

    .line 115
    const v1, 0x7f0b000b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mCallStateIcon:Landroid/widget/ImageView;

    .line 116
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 179
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 181
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mShowBatteryIndicator:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mHideBatteryIndicatorUnderKeyguard:Z

    if-nez v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicatorCharging:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 186
    .local v2, batteryLevel:I
    sub-int v3, p4, p2

    mul-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicatorWidth:I

    .line 188
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicatorCharging:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicatorCharging:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p4

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicatorCharging:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {v3, p4, p3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 193
    const/high16 v1, 0x7f02

    .line 194
    .local v1, batteryIndicatorDrawableId:I
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mScreenIsOn:Z

    if-eqz v3, :cond_1

    const v4, 0x10805d4

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicatorCharging:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_1

    .line 197
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicatorWidth:I

    sub-int v4, p4, p2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 198
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 199
    const-wide/16 v3, 0xdac

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 200
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 201
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 202
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicatorCharging:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 211
    .end local v0           #animation:Landroid/view/animation/TranslateAnimation;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicator:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v3, p2, p3, p4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 219
    .end local v1           #batteryIndicatorDrawableId:I
    .end local v2           #batteryLevel:I
    :goto_1
    return-void

    .line 205
    .restart local v1       #batteryIndicatorDrawableId:I
    .restart local v2       #batteryLevel:I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicatorCharging:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 206
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryLowLevel:I

    if-ge v2, v3, :cond_0

    .line 207
    const v1, 0x7f020002

    goto :goto_0

    .line 215
    .end local v1           #batteryIndicatorDrawableId:I
    .end local v2           #batteryLevel:I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicatorCharging:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarView;->mBatteryIndicatorCharging:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 175
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 278
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public showReturnToInCallScreenButton(Ljava/lang/String;J)V
    .locals 3
    .parameter "state"
    .parameter "baseTime"

    .prologue
    .line 288
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_CALL_STATE_HOLDING:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mReturnToInCallScreenButton:Landroid/view/View;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mCallStateIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    :goto_0
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_CALL_STATE_DIALING:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mCallTimer:Landroid/widget/Chronometer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 301
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0, p2, p3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mCallTimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mReturnToInCallScreenButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mReturnToInCallScreenButton:Landroid/view/View;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mCallStateIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView;->mCallTimer:Landroid/widget/Chronometer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    goto :goto_1
.end method
