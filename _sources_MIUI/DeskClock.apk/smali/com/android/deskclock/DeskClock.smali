.class public Lcom/android/deskclock/DeskClock;
.super Landroid/app/Activity;
.source "DeskClock.java"


# static fields
.field private static final WEATHER_CONTENT_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final DIM_BEHIND_AMOUNT_DIMMED:F

.field private final DIM_BEHIND_AMOUNT_NORMAL:F

.field private final QUERY_WEATHER_DATA_MSG:I

.field private final QUERY_WEATHER_DELAY:J

.field private final SCREEN_SAVER_COLOR:I

.field private final SCREEN_SAVER_COLOR_DIM:I

.field private final SCREEN_SAVER_MOVE_DELAY:J

.field private final SCREEN_SAVER_MOVE_MSG:I

.field private final SCREEN_SAVER_TIMEOUT:J

.field private final SCREEN_SAVER_TIMEOUT_MSG:I

.field private final UPDATE_WEATHER_DISPLAY_MSG:I

.field private mBatteryDisplay:Landroid/widget/TextView;

.field private mBatteryLevel:I

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mDate:Landroid/widget/TextView;

.field private mDateFormat:Ljava/lang/String;

.field private mDimmed:Z

.field private mGenieResources:Landroid/content/res/Resources;

.field private final mHandy:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLaunchedFromDock:Z

.field private mMidnightIntent:Landroid/app/PendingIntent;

.field private mNextAlarm:Landroid/widget/TextView;

.field private mPluggedIn:Z

.field private mRNG:Ljava/util/Random;

.field private mScreenSaverMode:Z

.field private mTime:Lcom/android/deskclock/DigitalClock;

.field private mWeatherCurrentTemperature:Landroid/widget/TextView;

.field private mWeatherCurrentTemperatureString:Ljava/lang/String;

.field private mWeatherHighTemperature:Landroid/widget/TextView;

.field private mWeatherHighTemperatureString:Ljava/lang/String;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mWeatherLocation:Landroid/widget/TextView;

.field private mWeatherLocationString:Ljava/lang/String;

.field private mWeatherLowTemperature:Landroid/widget/TextView;

.field private mWeatherLowTemperatureString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 133
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "highTemperature"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lowTemperature"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "iconUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "iconResId"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "description"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/deskclock/DeskClock;->WEATHER_CONTENT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/android/deskclock/DeskClock;->QUERY_WEATHER_DELAY:J

    .line 110
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/deskclock/DeskClock;->SCREEN_SAVER_TIMEOUT:J

    .line 113
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/deskclock/DeskClock;->SCREEN_SAVER_MOVE_DELAY:J

    .line 116
    const v0, -0xcf7fd0

    iput v0, p0, Lcom/android/deskclock/DeskClock;->SCREEN_SAVER_COLOR:I

    .line 117
    const v0, -0xe7cfe8

    iput v0, p0, Lcom/android/deskclock/DeskClock;->SCREEN_SAVER_COLOR_DIM:I

    .line 120
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/deskclock/DeskClock;->DIM_BEHIND_AMOUNT_NORMAL:F

    .line 121
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/android/deskclock/DeskClock;->DIM_BEHIND_AMOUNT_DIMMED:F

    .line 124
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/deskclock/DeskClock;->QUERY_WEATHER_DATA_MSG:I

    .line 125
    const/16 v0, 0x1001

    iput v0, p0, Lcom/android/deskclock/DeskClock;->UPDATE_WEATHER_DISPLAY_MSG:I

    .line 126
    const/16 v0, 0x2000

    iput v0, p0, Lcom/android/deskclock/DeskClock;->SCREEN_SAVER_TIMEOUT_MSG:I

    .line 127
    const/16 v0, 0x2001

    iput v0, p0, Lcom/android/deskclock/DeskClock;->SCREEN_SAVER_MOVE_MSG:I

    .line 150
    iput-object v3, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    .line 165
    iput-object v3, p0, Lcom/android/deskclock/DeskClock;->mGenieResources:Landroid/content/res/Resources;

    .line 167
    iput-boolean v2, p0, Lcom/android/deskclock/DeskClock;->mDimmed:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/deskclock/DeskClock;->mBatteryLevel:I

    .line 173
    iput-boolean v2, p0, Lcom/android/deskclock/DeskClock;->mPluggedIn:Z

    .line 175
    iput-boolean v2, p0, Lcom/android/deskclock/DeskClock;->mLaunchedFromDock:Z

    .line 181
    new-instance v0, Lcom/android/deskclock/DeskClock$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/DeskClock$1;-><init>(Lcom/android/deskclock/DeskClock;)V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    new-instance v0, Lcom/android/deskclock/DeskClock$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/DeskClock$2;-><init>(Lcom/android/deskclock/DeskClock;)V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mHandy:Landroid/os/Handler;

    .line 219
    new-instance v0, Lcom/android/deskclock/DeskClock$3;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mHandy:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/deskclock/DeskClock$3;-><init>(Lcom/android/deskclock/DeskClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshDate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/DeskClock;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/deskclock/DeskClock;->handleBatteryUpdate(III)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/deskclock/DeskClock;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock;->doDim(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/deskclock/DeskClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->supportsWeather()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/DeskClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mLaunchedFromDock:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/deskclock/DeskClock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/deskclock/DeskClock;->mLaunchedFromDock:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/deskclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->queryWeatherData()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/deskclock/DeskClock;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/DeskClock;->scheduleWeatherQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/deskclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->updateWeatherDisplay()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/deskclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->saveScreen()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/deskclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->moveScreenSaver()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/deskclock/DeskClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshWeather()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/deskclock/DeskClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mDimmed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/deskclock/DeskClock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/deskclock/DeskClock;->mDimmed:Z

    return p1
.end method

.method private doDim(Z)V
    .locals 4
    .parameter "fade"

    .prologue
    .line 538
    const v3, 0x7f0b001b

    invoke-virtual {p0, v3}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 539
    .local v0, tintView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 571
    :goto_0
    return-void

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 542
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 544
    .local v2, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 545
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 548
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 550
    iget-boolean v3, p0, Lcom/android/deskclock/DeskClock;->mDimmed:Z

    if-eqz v3, :cond_2

    .line 551
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 552
    const v3, 0x3f4ccccd

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 553
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 556
    if-eqz p1, :cond_1

    const/high16 v3, 0x7f04

    :goto_1
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 570
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 556
    :cond_1
    const v3, 0x7f040001

    goto :goto_1

    .line 560
    :cond_2
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 561
    const v3, 0x3ecccccd

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 562
    const/high16 v3, -0x4080

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 565
    if-eqz p1, :cond_3

    const v3, 0x7f040002

    :goto_3
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_3
    const v3, 0x7f040003

    goto :goto_3
.end method

.method private handleBatteryUpdate(III)V
    .locals 2
    .parameter "plugged"
    .parameter "status"
    .parameter "level"

    .prologue
    .line 479
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    move v0, v1

    .line 480
    .local v0, pluggedIn:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/deskclock/DeskClock;->mPluggedIn:Z

    if-eq v0, v1, :cond_0

    .line 481
    invoke-direct {p0, v0}, Lcom/android/deskclock/DeskClock;->setWakeLock(Z)V

    .line 483
    if-eqz v0, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->requestWeatherDataFetch()V

    .line 488
    :cond_0
    iget-boolean v1, p0, Lcom/android/deskclock/DeskClock;->mPluggedIn:Z

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/android/deskclock/DeskClock;->mBatteryLevel:I

    if-eq p3, v1, :cond_2

    .line 489
    :cond_1
    iput p3, p0, Lcom/android/deskclock/DeskClock;->mBatteryLevel:I

    .line 490
    iput-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mPluggedIn:Z

    .line 491
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshBattery()V

    .line 493
    :cond_2
    return-void

    .line 479
    .end local v0           #pluggedIn:Z
    :cond_3
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 692
    :cond_0
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->setContentView(I)V

    .line 694
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DigitalClock;

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mTime:Lcom/android/deskclock/DigitalClock;

    .line 695
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mDate:Landroid/widget/TextView;

    .line 696
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mBatteryDisplay:Landroid/widget/TextView;

    .line 698
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mTime:Lcom/android/deskclock/DigitalClock;

    invoke-virtual {v0}, Lcom/android/deskclock/DigitalClock;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 700
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherCurrentTemperature:Landroid/widget/TextView;

    .line 701
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherHighTemperature:Landroid/widget/TextView;

    .line 702
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherLowTemperature:Landroid/widget/TextView;

    .line 703
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherLocation:Landroid/widget/TextView;

    .line 704
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherIcon:Landroid/widget/ImageView;

    .line 706
    new-instance v1, Lcom/android/deskclock/DeskClock$4;

    invoke-direct {v1, p0}, Lcom/android/deskclock/DeskClock$4;-><init>(Lcom/android/deskclock/DeskClock;)V

    .line 712
    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    .line 713
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 716
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    const v1, 0x7f0b001d

    invoke-virtual {p0, v1}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 719
    new-instance v2, Lcom/android/deskclock/DeskClock$5;

    invoke-direct {v2, p0}, Lcom/android/deskclock/DeskClock$5;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    const v1, 0x7f0b001e

    invoke-virtual {p0, v1}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 734
    new-instance v2, Lcom/android/deskclock/DeskClock$6;

    invoke-direct {v2, p0}, Lcom/android/deskclock/DeskClock$6;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 747
    new-instance v2, Lcom/android/deskclock/DeskClock$7;

    invoke-direct {v2, p0}, Lcom/android/deskclock/DeskClock$7;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    const v1, 0x7f0b0019

    invoke-virtual {p0, v1}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 757
    new-instance v2, Lcom/android/deskclock/DeskClock$8;

    invoke-direct {v2, p0}, Lcom/android/deskclock/DeskClock$8;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 764
    new-instance v2, Lcom/android/deskclock/DeskClock$9;

    invoke-direct {v2, p0}, Lcom/android/deskclock/DeskClock$9;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 771
    const v2, 0x7f0b0024

    invoke-virtual {p0, v2}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 772
    new-instance v3, Lcom/android/deskclock/DeskClock$10;

    invoke-direct {v3, p0}, Lcom/android/deskclock/DeskClock$10;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    const v2, 0x7f0b001b

    invoke-virtual {p0, v2}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 786
    new-instance v3, Lcom/android/deskclock/DeskClock$11;

    invoke-direct {v3, p0, v1}, Lcom/android/deskclock/DeskClock$11;-><init>(Lcom/android/deskclock/DeskClock;Landroid/widget/ImageButton;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 809
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 810
    new-instance v3, Lcom/android/deskclock/DeskClock$12;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/deskclock/DeskClock$12;-><init>(Lcom/android/deskclock/DeskClock;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 817
    return-void
.end method

.method private moveScreenSaver()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 229
    invoke-direct {p0, v0, v0}, Lcom/android/deskclock/DeskClock;->moveScreenSaverTo(II)V

    .line 230
    return-void
.end method

.method private moveScreenSaverTo(II)V
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v6, -0x2

    .line 232
    iget-boolean v4, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    if-nez v4, :cond_0

    .line 259
    :goto_0
    return-void

    .line 234
    :cond_0
    const v4, 0x7f0b0020

    invoke-virtual {p0, v4}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 236
    .local v3, saver_view:Landroid/view/View;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 237
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 239
    if-ltz p1, :cond_1

    if-gez p2, :cond_2

    .line 240
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 241
    .local v2, myWidth:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 242
    .local v1, myHeight:I
    iget-object v4, p0, Lcom/android/deskclock/DeskClock;->mRNG:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int p1, v4

    .line 243
    iget-object v4, p0, Lcom/android/deskclock/DeskClock;->mRNG:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int p2, v4

    .line 249
    .end local v1           #myHeight:I
    .end local v2           #myWidth:I
    :cond_2
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v4, v6, v6, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v4, p0, Lcom/android/deskclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v5, 0x2001

    const-wide/32 v6, 0xea60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    rem-long/2addr v8, v10

    sub-long v8, v10, v8

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private queryWeatherData()V
    .locals 11

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mGenieResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 384
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.apps.genie.geniewidget.weather"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/weather/current"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 395
    .local v1, queryUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/deskclock/DeskClock;->WEATHER_CONTENT_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 406
    .end local v1           #queryUri:Landroid/net/Uri;
    .local v9, cur:Landroid/database/Cursor;
    :goto_1
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 420
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mGenieResources:Landroid/content/res/Resources;

    const-string v1, "iconResId"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 423
    const-string v0, "location"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherLocationString:Ljava/lang/String;

    .line 427
    const-string v0, "temperature"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 428
    .local v8, colTemp:I
    const-string v0, "highTemperature"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 429
    .local v6, colHigh:I
    const-string v0, "lowTemperature"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 431
    .local v7, colLow:I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u2014"

    :goto_2
    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherCurrentTemperatureString:Ljava/lang/String;

    .line 435
    invoke-interface {v9, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u2014"

    :goto_3
    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherHighTemperatureString:Ljava/lang/String;

    .line 439
    invoke-interface {v9, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u2014"

    :goto_4
    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherLowTemperatureString:Ljava/lang/String;

    .line 453
    .end local v6           #colHigh:I
    .end local v7           #colLow:I
    .end local v8           #colTemp:I
    :goto_5
    if-eqz v9, :cond_1

    .line 455
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 401
    .end local v9           #cur:Landroid/database/Cursor;
    .restart local v1       #queryUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 402
    .local v10, e:Ljava/lang/RuntimeException;
    const-string v0, "DeskClock"

    const-string v1, "Weather query failed"

    .end local v1           #queryUri:Landroid/net/Uri;
    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    const/4 v9, 0x0

    .restart local v9       #cur:Landroid/database/Cursor;
    goto :goto_1

    .line 431
    .end local v10           #e:Ljava/lang/RuntimeException;
    .restart local v6       #colHigh:I
    .restart local v7       #colLow:I
    .restart local v8       #colTemp:I
    :cond_2
    const-string v0, "%d\u00b0"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 435
    :cond_3
    const-string v0, "%d\u00b0"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 439
    :cond_4
    const-string v0, "%d\u00b0"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 444
    .end local v6           #colHigh:I
    .end local v7           #colLow:I
    .end local v8           #colTemp:I
    :cond_5
    const-string v0, "DeskClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No weather information available (cur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 447
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherLocationString:Ljava/lang/String;

    .line 448
    const-string v0, ""

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherLowTemperatureString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherHighTemperatureString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherCurrentTemperatureString:Ljava/lang/String;

    goto/16 :goto_5
.end method

.method private refreshAlarm()V
    .locals 3

    .prologue
    .line 516
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 528
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, nextAlarm:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshAll()V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshDate()V

    .line 532
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshAlarm()V

    .line 533
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshBattery()V

    .line 534
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshWeather()V

    .line 535
    return-void
.end method

.method private refreshBattery()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 496
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mBatteryDisplay:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mPluggedIn:Z

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mBatteryDisplay:Landroid/widget/TextView;

    const v1, 0x108001e

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 501
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mBatteryDisplay:Landroid/widget/TextView;

    const v1, 0x7f070034

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/deskclock/DeskClock;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/deskclock/DeskClock;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mBatteryDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mBatteryDisplay:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshDate()V
    .locals 3

    .prologue
    .line 510
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 512
    .local v0, now:Ljava/util/Date;
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/deskclock/DeskClock;->mDateFormat:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    return-void
.end method

.method private refreshWeather()V
    .locals 2

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->supportsWeather()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/DeskClock;->scheduleWeatherQueryDelayed(J)V

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->updateWeatherDisplay()V

    .line 465
    return-void
.end method

.method private requestWeatherDataFetch()V
    .locals 3

    .prologue
    .line 358
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.genie.REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "requestWeather"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->sendBroadcast(Landroid/content/Intent;)V

    .line 360
    return-void
.end method

.method private restoreScreen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 285
    iget-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 287
    :cond_0
    iput-boolean v1, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    .line 288
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->initViews()V

    .line 289
    invoke-direct {p0, v1}, Lcom/android/deskclock/DeskClock;->doDim(Z)V

    .line 291
    iget-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mPluggedIn:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->requestWeatherDataFetch()V

    .line 293
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->scheduleScreenSaver()V

    .line 295
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshAll()V

    goto :goto_0
.end method

.method private saveScreen()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 300
    iget-boolean v6, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    if-eqz v6, :cond_0

    .line 347
    :goto_0
    return-void

    .line 304
    :cond_0
    const v6, 0x7f0b0021

    invoke-virtual {p0, v6}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 305
    .local v3, oldTimeDate:Landroid/view/View;
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 306
    .local v2, oldLoc:[I
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 308
    iput-boolean v10, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    .line 309
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 310
    .local v4, win:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 311
    .local v5, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 312
    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 316
    .local v1, focused:Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 318
    :cond_1
    const v6, 0x7f030008

    invoke-virtual {p0, v6}, Lcom/android/deskclock/DeskClock;->setContentView(I)V

    .line 320
    const v6, 0x7f0b0022

    invoke-virtual {p0, v6}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/deskclock/DigitalClock;

    iput-object v6, p0, Lcom/android/deskclock/DeskClock;->mTime:Lcom/android/deskclock/DigitalClock;

    .line 321
    const v6, 0x7f0b0023

    invoke-virtual {p0, v6}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/deskclock/DeskClock;->mDate:Landroid/widget/TextView;

    .line 322
    const v6, 0x7f0b0018

    invoke-virtual {p0, v6}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    .line 324
    iget-boolean v6, p0, Lcom/android/deskclock/DeskClock;->mDimmed:Z

    if-eqz v6, :cond_2

    const v6, -0xe7cfe8

    move v0, v6

    .line 326
    .local v0, color:I
    :goto_1
    const v6, 0x7f0b0004

    invoke-virtual {p0, v6}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    const v6, 0x7f0b0005

    invoke-virtual {p0, v6}, Lcom/android/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object v6, p0, Lcom/android/deskclock/DeskClock;->mDate:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    iget-object v6, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    iget-object v6, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/deskclock/DeskClock;->mDimmed:Z

    if-eqz v8, :cond_3

    const v8, 0x7f020029

    :goto_2
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 336
    iput-object v9, p0, Lcom/android/deskclock/DeskClock;->mWeatherLocation:Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/deskclock/DeskClock;->mWeatherLowTemperature:Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/deskclock/DeskClock;->mWeatherHighTemperature:Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/deskclock/DeskClock;->mWeatherCurrentTemperature:Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/deskclock/DeskClock;->mBatteryDisplay:Landroid/widget/TextView;

    .line 341
    iput-object v9, p0, Lcom/android/deskclock/DeskClock;->mWeatherIcon:Landroid/widget/ImageView;

    .line 343
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshDate()V

    .line 344
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshAlarm()V

    .line 346
    const/4 v6, 0x0

    aget v6, v2, v6

    aget v7, v2, v10

    invoke-direct {p0, v6, v7}, Lcom/android/deskclock/DeskClock;->moveScreenSaverTo(II)V

    goto/16 :goto_0

    .line 324
    .end local v0           #color:I
    :cond_2
    const v6, -0xcf7fd0

    move v0, v6

    goto :goto_1

    .line 330
    .restart local v0       #color:I
    :cond_3
    const v8, 0x7f020028

    goto :goto_2
.end method

.method private scheduleScreenSaver()V
    .locals 4

    .prologue
    const/16 v2, 0x2000

    .line 278
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mHandy:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mHandy:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mHandy:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 282
    return-void
.end method

.method private scheduleWeatherQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->unscheduleWeatherQuery()V

    .line 372
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 373
    return-void
.end method

.method private setWakeLock(Z)V
    .locals 4
    .parameter "hold"

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 264
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 265
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x680001

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 269
    if-eqz p1, :cond_0

    .line 270
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 273
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 274
    return-void

    .line 272
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private supportsWeather()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mGenieResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unscheduleWeatherQuery()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    return-void
.end method

.method private updateWeatherDisplay()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherCurrentTemperature:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherCurrentTemperature:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mWeatherCurrentTemperatureString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherHighTemperature:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mWeatherHighTemperatureString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherLowTemperature:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mWeatherLowTemperatureString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherLocation:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mWeatherLocationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mWeatherIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mWeatherIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 821
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 822
    iget-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    if-eqz v0, :cond_0

    .line 823
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->moveScreenSaver()V

    .line 829
    :goto_0
    return-void

    .line 825
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->initViews()V

    .line 826
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/deskclock/DeskClock;->doDim(Z)V

    .line 827
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshAll()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 857
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 859
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mRNG:Ljava/util/Random;

    .line 862
    :try_start_0
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.apps.genie.geniewidget"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mGenieResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :goto_0
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->initViews()V

    .line 869
    return-void

    .line 863
    :catch_0
    move-exception v0

    .line 865
    const-string v0, "DeskClock"

    const-string v1, "Can\'t find com.google.android.apps.genie.geniewidget. Weather forecast will not be available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 850
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 851
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 852
    const/4 v0, 0x1

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "newIntent"

    .prologue
    .line 575
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/deskclock/DeskClock;->setIntent(Landroid/content/Intent;)V

    .line 581
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 833
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 844
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 835
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/AlarmClock;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 836
    goto :goto_0

    .line 838
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/SetAlarm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 839
    goto :goto_0

    .line 841
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.DOCK_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 842
    goto :goto_0

    .line 833
    :sswitch_data_0
    .sparse-switch
        0x7f0b002f -> :sswitch_1
        0x7f0b0034 -> :sswitch_0
        0x7f0b0035 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 672
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 673
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->restoreScreen()V

    .line 678
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/DeskClock;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 680
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/android/deskclock/DeskClock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 681
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mMidnightIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 682
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->unscheduleWeatherQuery()V

    .line 684
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 685
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 604
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 609
    const/high16 v4, 0x7f07

    invoke-virtual {p0, v4}, Lcom/android/deskclock/DeskClock;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/DeskClock;->mDateFormat:Ljava/lang/String;

    .line 612
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "com.google.android.apps.genie.geniewidget.weather"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "/weather/current"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 617
    .local v10, weatherNotificationUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/deskclock/DeskClock;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v10, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 621
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 622
    .local v9, today:Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v9, v4, v11}, Ljava/util/Calendar;->set(II)V

    .line 623
    const/16 v4, 0xc

    invoke-virtual {v9, v4, v11}, Ljava/util/Calendar;->set(II)V

    .line 624
    const/16 v4, 0xd

    invoke-virtual {v9, v4, v11}, Ljava/util/Calendar;->set(II)V

    .line 625
    const/4 v4, 0x5

    invoke-virtual {v9, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 626
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 628
    .local v2, alarmTimeUTC:J
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.deskclock.MIDNIGHT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v11, v4, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/DeskClock;->mMidnightIntent:Landroid/app/PendingIntent;

    .line 629
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/deskclock/DeskClock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 630
    .local v0, am:Landroid/app/AlarmManager;
    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lcom/android/deskclock/DeskClock;->mMidnightIntent:Landroid/app/PendingIntent;

    const/high16 v7, 0x4000

    invoke-virtual/range {v0 .. v7}, Landroid/app/AlarmManager;->setRepeatingWithFlags(IJJLandroid/app/PendingIntent;I)V

    .line 640
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mTime:Lcom/android/deskclock/DigitalClock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mTime:Lcom/android/deskclock/DigitalClock;

    invoke-virtual {v1}, Lcom/android/deskclock/DigitalClock;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    iput-boolean v11, p0, Lcom/android/deskclock/DeskClock;->mDimmed:Z

    .line 645
    :cond_0
    invoke-direct {p0, v11}, Lcom/android/deskclock/DeskClock;->doDim(Z)V

    .line 647
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->restoreScreen()V

    .line 648
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshAll()V

    .line 650
    iget-boolean v1, p0, Lcom/android/deskclock/DeskClock;->mPluggedIn:Z

    invoke-direct {p0, v1}, Lcom/android/deskclock/DeskClock;->setWakeLock(Z)V

    .line 652
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->scheduleScreenSaver()V

    .line 654
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "android.intent.category.DESK_DOCK"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    .line 657
    .local v8, launchedFromDock:Z
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->supportsWeather()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v8, :cond_1

    iget-boolean v1, p0, Lcom/android/deskclock/DeskClock;->mLaunchedFromDock:Z

    if-nez v1, :cond_1

    .line 660
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->requestWeatherDataFetch()V

    .line 663
    :cond_1
    iput-boolean v8, p0, Lcom/android/deskclock/DeskClock;->mLaunchedFromDock:Z

    .line 664
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 585
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 587
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 588
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 591
    const-string v1, "com.android.deskclock.MIDNIGHT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/deskclock/DeskClock;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 593
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 597
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 599
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/deskclock/DeskClock;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 600
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->restoreScreen()V

    .line 353
    :cond_0
    return-void
.end method
