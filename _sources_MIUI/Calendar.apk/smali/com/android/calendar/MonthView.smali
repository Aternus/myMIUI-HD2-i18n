.class public Lcom/android/calendar/MonthView;
.super Landroid/view/View;
.source "MonthView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/MonthView$DismissPopup;,
        Lcom/android/calendar/MonthView$ContextMenuHandler;
    }
.end annotation


# static fields
.field private static COLUMNS:I = 0x0

.field private static DAY_NUMBER_OFFSET:I = 0x0

.field private static EVENT_DOT_LEFT_MARGIN:I = 0x0

.field private static EVENT_DOT_TOP_MARGIN:I = 0x0

.field private static EVENT_DOT_W_H:I = 0x0

.field private static EVENT_NUM_DAYS:I = 0x0

.field private static HORIZONTAL_FLING_THRESHOLD:I = 0x0

.field private static HOUR_GAP:F = 0.0f

.field private static LUNAR_TEXT_SIZE:I = 0x0

.field private static MIN_EVENT_HEIGHT:F = 0.0f

.field private static MONTH_DAY_GAP:I = 0x0

.field private static MONTH_DAY_TEXT_SIZE:I = 0x0

.field private static final POPUP_DISMISS_DELAY:I = 0xbb8

.field private static final POPUP_HEIGHT:I = 0x64

.field private static final PROFILE_LOAD_TIME:Z = false

.field private static ROWS:I = 0x0

.field private static final SELECTION_HIDDEN:I = 0x0

.field private static final SELECTION_LONGPRESS:I = 0x3

.field private static final SELECTION_PRESSED:I = 0x1

.field private static final SELECTION_SELECTED:I = 0x2

.field private static TEXT_PADDING_LANDSCAPE:I

.field private static TEXT_PADDING_PORTRAIT:I

.field private static WEEK_BANNER_HEIGHT:I

.field private static WEEK_GAP:I

.field private static WEEK_TEXT_PADDING:I

.field private static WEEK_TEXT_SIZE:I

.field private static mScale:F


# instance fields
.field private eventDay:[Z

.field private mAnimating:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapRect:Landroid/graphics/Rect;

.field private mBorder:I

.field private mBusyIndicator:Landroid/graphics/Bitmap;

.field private mBusybitsAlldayColor:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mContextMenuHandler:Lcom/android/calendar/MonthView$ContextMenuHandler;

.field private mCursor:Lcom/android/calendar/DayOfMonthCursor;

.field private mDayBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mDetailedView:Ljava/lang/String;

.field private mDismissPopup:Lcom/android/calendar/MonthView$DismissPopup;

.field private final mEventLoader:Lcom/android/calendar/EventLoader;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstJulianDay:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHasAccount:Z

.field private mLaunchDayView:Z

.field private mMonthBgColor:I

.field private mMonthDayNumberColor:I

.field private mMonthOtherMonthBannerColor:I

.field private mMonthOtherMonthColor:I

.field private mMonthOtherMonthDayNumberColor:I

.field private mMonthSaturdayColor:I

.field private mMonthSundayColor:I

.field private mMonthTodayBackground:Landroid/graphics/drawable/Drawable;

.field private mMonthTodayNumberColor:I

.field private mMonthWeekBannerColor:I

.field private mNavigator:Lcom/android/calendar/Navigator;

.field private mOtherViewCalendar:Landroid/text/format/Time;

.field private mParentActivity:Lcom/android/calendar/MonthActivity;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupView:Landroid/view/View;

.field private mPressedColor:I

.field private mPrevSelectedDayOfMonth:I

.field private mPrevSelectedMonth:I

.field private mPrevTitleTextViewText:Ljava/lang/CharSequence;

.field private mPreviousPopupHeight:I

.field private mRect:Landroid/graphics/Rect;

.field private mRedrawScreen:Z

.field private mResources:Landroid/content/res/Resources;

.field private mSavedTime:Landroid/text/format/Time;

.field private mSelectionMode:I

.field private mShowToast:Z

.field private mShowWeekNumbers:Z

.field private mStartDay:I

.field private mTempTime:Landroid/text/format/Time;

.field private mToday:Landroid/text/format/Time;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mViewCalendar:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x7

    .line 68
    sput v2, Lcom/android/calendar/MonthView;->mScale:F

    .line 69
    sput v3, Lcom/android/calendar/MonthView;->WEEK_GAP:I

    .line 70
    const/4 v0, 0x1

    sput v0, Lcom/android/calendar/MonthView;->MONTH_DAY_GAP:I

    .line 71
    sput v2, Lcom/android/calendar/MonthView;->HOUR_GAP:F

    .line 72
    const/high16 v0, 0x4080

    sput v0, Lcom/android/calendar/MonthView;->MIN_EVENT_HEIGHT:F

    .line 73
    const/16 v0, 0x14

    sput v0, Lcom/android/calendar/MonthView;->MONTH_DAY_TEXT_SIZE:I

    .line 74
    const/16 v0, 0x10

    sput v0, Lcom/android/calendar/MonthView;->LUNAR_TEXT_SIZE:I

    .line 75
    const/16 v0, 0x11

    sput v0, Lcom/android/calendar/MonthView;->WEEK_BANNER_HEIGHT:I

    .line 76
    const/16 v0, 0xf

    sput v0, Lcom/android/calendar/MonthView;->WEEK_TEXT_SIZE:I

    .line 77
    const/4 v0, 0x3

    sput v0, Lcom/android/calendar/MonthView;->WEEK_TEXT_PADDING:I

    .line 78
    const/4 v0, 0x5

    sput v0, Lcom/android/calendar/MonthView;->EVENT_DOT_TOP_MARGIN:I

    .line 79
    sput v1, Lcom/android/calendar/MonthView;->EVENT_DOT_LEFT_MARGIN:I

    .line 80
    sput v4, Lcom/android/calendar/MonthView;->EVENT_DOT_W_H:I

    .line 81
    const/16 v0, 0x1f

    sput v0, Lcom/android/calendar/MonthView;->EVENT_NUM_DAYS:I

    .line 82
    sput v3, Lcom/android/calendar/MonthView;->TEXT_PADDING_LANDSCAPE:I

    .line 83
    sput v1, Lcom/android/calendar/MonthView;->TEXT_PADDING_PORTRAIT:I

    .line 84
    sput v4, Lcom/android/calendar/MonthView;->DAY_NUMBER_OFFSET:I

    .line 85
    sput v1, Lcom/android/calendar/MonthView;->COLUMNS:I

    .line 86
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/MonthView;->ROWS:I

    .line 87
    const/16 v0, 0x32

    sput v0, Lcom/android/calendar/MonthView;->HORIZONTAL_FLING_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/MonthActivity;Lcom/android/calendar/Navigator;)V
    .locals 4
    .parameter "activity"
    .parameter "navigator"

    .prologue
    const/4 v3, 0x0

    .line 211
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 95
    sget-object v1, Lcom/android/calendar/CalendarPreferenceActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/MonthView;->mRect:Landroid/graphics/Rect;

    .line 120
    const/16 v1, 0x1f

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/calendar/MonthView;->eventDay:[Z

    .line 127
    new-instance v1, Lcom/android/calendar/MonthView$DismissPopup;

    invoke-direct {v1, p0}, Lcom/android/calendar/MonthView$DismissPopup;-><init>(Lcom/android/calendar/MonthView;)V

    iput-object v1, p0, Lcom/android/calendar/MonthView;->mDismissPopup:Lcom/android/calendar/MonthView$DismissPopup;

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 133
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    .line 137
    iput-boolean v3, p0, Lcom/android/calendar/MonthView;->mShowWeekNumbers:Z

    .line 138
    iput-boolean v3, p0, Lcom/android/calendar/MonthView;->mShowToast:Z

    .line 144
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/MonthView;->mDayBitmapCache:Landroid/util/SparseArray;

    .line 146
    new-instance v1, Lcom/android/calendar/MonthView$ContextMenuHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/MonthView$ContextMenuHandler;-><init>(Lcom/android/calendar/MonthView;Lcom/android/calendar/MonthView$1;)V

    iput-object v1, p0, Lcom/android/calendar/MonthView;->mContextMenuHandler:Lcom/android/calendar/MonthView$ContextMenuHandler;

    .line 156
    iput v3, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    .line 193
    new-instance v1, Lcom/android/calendar/MonthView$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/MonthView$1;-><init>(Lcom/android/calendar/MonthView;)V

    iput-object v1, p0, Lcom/android/calendar/MonthView;->mUpdateTZ:Ljava/lang/Runnable;

    .line 212
    sget v1, Lcom/android/calendar/MonthView;->mScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/calendar/MonthView;->mScale:F

    .line 214
    sget v1, Lcom/android/calendar/MonthView;->mScale:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 215
    sget v1, Lcom/android/calendar/MonthView;->WEEK_GAP:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/MonthView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/MonthView;->WEEK_GAP:I

    .line 216
    sget v1, Lcom/android/calendar/MonthView;->MONTH_DAY_GAP:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/MonthView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/MonthView;->MONTH_DAY_GAP:I

    .line 217
    sget v1, Lcom/android/calendar/MonthView;->HOUR_GAP:F

    sget v2, Lcom/android/calendar/MonthView;->mScale:F

    mul-float/2addr v1, v2

    sput v1, Lcom/android/calendar/MonthView;->HOUR_GAP:F

    .line 219
    sget v1, Lcom/android/calendar/MonthView;->MONTH_DAY_TEXT_SIZE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/MonthView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/MonthView;->MONTH_DAY_TEXT_SIZE:I

    .line 220
    sget v1, Lcom/android/calendar/MonthView;->WEEK_BANNER_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/MonthView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/MonthView;->WEEK_BANNER_HEIGHT:I

    .line 221
    sget v1, Lcom/android/calendar/MonthView;->WEEK_TEXT_SIZE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/MonthView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/MonthView;->WEEK_TEXT_SIZE:I

    .line 222
    sget v1, Lcom/android/calendar/MonthView;->WEEK_TEXT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/MonthView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/MonthView;->WEEK_TEXT_PADDING:I

    .line 223
    sget v1, Lcom/android/calendar/MonthView;->EVENT_DOT_TOP_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/MonthView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/MonthView;->EVENT_DOT_TOP_MARGIN:I

    .line 224
    sget v1, Lcom/android/calendar/MonthView;->EVENT_DOT_LEFT_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/MonthView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/MonthView;->EVENT_DOT_LEFT_MARGIN:I

    .line 225
    sget v1, Lcom/android/calendar/MonthView;->EVENT_DOT_W_H:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/MonthView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/MonthView;->EVENT_DOT_W_H:I

    .line 226
    sget v1, Lcom/android/calendar/MonthView;->TEXT_PADDING_LANDSCAPE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/MonthView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/MonthView;->TEXT_PADDING_LANDSCAPE:I

    .line 227
    sget v1, Lcom/android/calendar/MonthView;->TEXT_PADDING_PORTRAIT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/MonthView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/MonthView;->TEXT_PADDING_PORTRAIT:I

    .line 228
    sget v1, Lcom/android/calendar/MonthView;->HORIZONTAL_FLING_THRESHOLD:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/MonthView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/MonthView;->HORIZONTAL_FLING_THRESHOLD:I

    .line 229
    sget v1, Lcom/android/calendar/MonthView;->MIN_EVENT_HEIGHT:F

    sget v2, Lcom/android/calendar/MonthView;->mScale:F

    mul-float/2addr v1, v2

    sput v1, Lcom/android/calendar/MonthView;->MIN_EVENT_HEIGHT:F

    .line 230
    sget v1, Lcom/android/calendar/MonthView;->DAY_NUMBER_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/MonthView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/MonthView;->DAY_NUMBER_OFFSET:I

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, tz:Ljava/lang/String;
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    .line 236
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 237
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 239
    iget-object v1, p1, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    iput-object v1, p0, Lcom/android/calendar/MonthView;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 240
    iput-object p2, p0, Lcom/android/calendar/MonthView;->mNavigator:Lcom/android/calendar/Navigator;

    .line 241
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/MonthView;->init(Lcom/android/calendar/MonthActivity;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/MonthView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    return-object v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/calendar/MonthView;->WEEK_GAP:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/MonthView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/calendar/MonthView;->mCellHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/MonthView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/calendar/MonthView;->mBorder:I

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/calendar/MonthView;->MONTH_DAY_GAP:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/MonthView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/calendar/MonthView;->mCellWidth:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/MonthView;)Lcom/android/calendar/DayOfMonthCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/MonthView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/calendar/MonthView;->mHasAccount:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/calendar/MonthView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/calendar/MonthView;II)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/MonthView;->getSelectedMillisFor(II)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/MonthView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/calendar/MonthView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2200()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/calendar/MonthView;->EVENT_NUM_DAYS:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/calendar/MonthView;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/MonthView;->eventDay:[Z

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/calendar/MonthView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/calendar/MonthView;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mToday:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/MonthView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/calendar/MonthView;->mLaunchDayView:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/calendar/MonthView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/calendar/MonthView;->mLaunchDayView:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/calendar/MonthView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/calendar/MonthView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    return p1
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/calendar/MonthView;->HORIZONTAL_FLING_THRESHOLD:I

    return v0
.end method

.method private calculateBusyDays()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 642
    .local v0, busyDays:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 643
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 644
    .local v2, e:Lcom/android/calendar/Event;
    iget v1, v2, Lcom/android/calendar/Event;->startDay:I

    .local v1, day:I
    :goto_1
    iget v4, v2, Lcom/android/calendar/Event;->endDay:I

    if-gt v1, v4, :cond_0

    .line 645
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 642
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 648
    .end local v1           #day:I
    .end local v2           #e:Lcom/android/calendar/Event;
    :cond_1
    return-object v0
.end method

.method private clearBitmapCache()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mDayBitmapCache:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/android/calendar/MonthView;->recycleAndClearBitmapCache(Landroid/util/SparseArray;)V

    .line 754
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    move v13, v5

    .line 604
    .local v13, isLandscape:Z
    :goto_0
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 605
    .local v11, p:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mRect:Landroid/graphics/Rect;

    move-object v12, v0

    .line 606
    .local v12, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/calendar/DayOfMonthCursor;->getColumnOf(I)I

    move-result v17

    .line 609
    .local v17, columnDay1:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    move v5, v0

    sub-int v6, v5, v17

    .line 611
    .local v6, day:I
    const/4 v7, 0x0

    .line 612
    .local v7, weekNum:I
    const/16 v16, 0x0

    .line 613
    .local v16, calendar:Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/MonthView;->mShowWeekNumbers:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 614
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 615
    if-nez v17, :cond_2

    const/4 v5, 0x1

    move/from16 v19, v5

    .line 618
    .local v19, noPrevMonth:Z
    :goto_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v7

    move/from16 v3, v19

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/MonthView;->getWeekOfYear(IIZLjava/util/Calendar;)I

    .end local v7           #weekNum:I
    move-result v7

    .line 621
    .end local v19           #noPrevMonth:Z
    .restart local v7       #weekNum:I
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/MonthView;->calculateBusyDays()Ljava/util/HashSet;

    move-result-object v15

    .line 622
    .local v15, busyDays:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, row:I
    :goto_2
    sget v5, Lcom/android/calendar/MonthView;->ROWS:I

    if-ge v8, v5, :cond_6

    .line 623
    const/4 v9, 0x0

    .local v9, column:I
    :goto_3
    sget v5, Lcom/android/calendar/MonthView;->COLUMNS:I

    if-ge v9, v5, :cond_3

    .line 624
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v5, p0

    move-object/from16 v10, p1

    invoke-direct/range {v5 .. v14}, Lcom/android/calendar/MonthView;->drawBox(IIIILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;ZZ)V

    .line 625
    add-int/lit8 v6, v6, 0x1

    .line 623
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 601
    .end local v6           #day:I
    .end local v7           #weekNum:I
    .end local v8           #row:I
    .end local v9           #column:I
    .end local v11           #p:Landroid/graphics/Paint;
    .end local v12           #r:Landroid/graphics/Rect;
    .end local v13           #isLandscape:Z
    .end local v15           #busyDays:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v16           #calendar:Ljava/util/Calendar;
    .end local v17           #columnDay1:I
    :cond_1
    const/4 v5, 0x0

    move v13, v5

    goto :goto_0

    .line 615
    .restart local v6       #day:I
    .restart local v7       #weekNum:I
    .restart local v11       #p:Landroid/graphics/Paint;
    .restart local v12       #r:Landroid/graphics/Rect;
    .restart local v13       #isLandscape:Z
    .restart local v16       #calendar:Ljava/util/Calendar;
    .restart local v17       #columnDay1:I
    :cond_2
    const/4 v5, 0x0

    move/from16 v19, v5

    goto :goto_1

    .line 628
    .restart local v8       #row:I
    .restart local v9       #column:I
    .restart local v15       #busyDays:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/MonthView;->mShowWeekNumbers:Z

    move v5, v0

    if-eqz v5, :cond_4

    .line 629
    add-int/lit8 v7, v7, 0x1

    .line 630
    const/16 v5, 0x35

    if-lt v7, v5, :cond_4

    .line 631
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    move v5, v0

    sub-int v5, v6, v5

    const/16 v7, 0x1f

    if-ge v5, v7, :cond_5

    .end local v7           #weekNum:I
    const/4 v5, 0x1

    move/from16 v18, v5

    .line 632
    .local v18, inCurrentMonth:Z
    :goto_4
    add-int/lit8 v5, v8, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v7

    move/from16 v3, v18

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/MonthView;->getWeekOfYear(IIZLjava/util/Calendar;)I

    move-result v7

    .line 622
    .end local v18           #inCurrentMonth:Z
    .restart local v7       #weekNum:I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 631
    .end local v7           #weekNum:I
    :cond_5
    const/4 v5, 0x0

    move/from16 v18, v5

    goto :goto_4

    .line 637
    .end local v9           #column:I
    .restart local v7       #weekNum:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/MonthView;->drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 638
    return-void
.end method

.method private drawBox(IIIILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;ZZ)V
    .locals 24
    .parameter "day"
    .parameter "weekNum"
    .parameter "row"
    .parameter "column"
    .parameter "canvas"
    .parameter "p"
    .parameter "r"
    .parameter "isLandscape"
    .parameter "isBusy"

    .prologue
    .line 804
    const/4 v7, 0x0

    .line 805
    .local v7, drawSelection:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/DayOfMonthCursor;->isSelected(II)Z

    move-result v7

    .line 809
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v18

    .line 810
    .local v18, withinCurrentMonth:Z
    const/4 v11, 0x0

    .line 811
    .local v11, isToday:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/DayOfMonthCursor;->getDayAt(II)I

    move-result v6

    .line 812
    .local v6, dayOfBox:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mToday:Landroid/text/format/Time;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v21, v0

    move v0, v6

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/calendar/DayOfMonthCursor;->getYear()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mToday:Landroid/text/format/Time;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/calendar/DayOfMonthCursor;->getMonth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mToday:Landroid/text/format/Time;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 814
    const/4 v11, 0x1

    .line 817
    :cond_1
    sget v21, Lcom/android/calendar/MonthView;->WEEK_GAP:I

    sget v22, Lcom/android/calendar/MonthView;->WEEK_GAP:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mCellHeight:I

    move/from16 v23, v0

    add-int v22, v22, v23

    mul-int v22, v22, p3

    add-int v20, v21, v22

    .line 818
    .local v20, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mBorder:I

    move/from16 v21, v0

    sget v22, Lcom/android/calendar/MonthView;->MONTH_DAY_GAP:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mCellWidth:I

    move/from16 v23, v0

    add-int v22, v22, v23

    mul-int v22, v22, p4

    add-int v19, v21, v22

    .line 820
    .local v19, x:I
    move/from16 v0, v19

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 821
    move/from16 v0, v20

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 822
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mCellWidth:I

    move/from16 v21, v0

    add-int v21, v21, v19

    move/from16 v0, v21

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 823
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mCellHeight:I

    move/from16 v21, v0

    add-int v21, v21, v20

    move/from16 v0, v21

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 828
    if-nez p4, :cond_8

    .line 829
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 834
    :cond_2
    :goto_0
    sget v21, Lcom/android/calendar/MonthView;->ROWS:I

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 835
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/MonthView;->getMeasuredHeight()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 840
    :cond_3
    if-nez v18, :cond_9

    .line 843
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 844
    if-eqz p4, :cond_4

    .line 845
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 847
    :cond_4
    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 848
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mMonthOtherMonthColor:I

    move/from16 v21, v0

    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 849
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 864
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/MonthView;->mShowWeekNumbers:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    if-nez p4, :cond_6

    .line 866
    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 867
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mMonthWeekBannerColor:I

    move/from16 v21, v0

    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 868
    if-eqz p8, :cond_b

    .line 869
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    .line 870
    .local v5, bottom:I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sget v22, Lcom/android/calendar/MonthView;->WEEK_BANNER_HEIGHT:I

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 871
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 872
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 873
    move v0, v5

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 874
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 885
    .end local v5           #bottom:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mMonthOtherMonthBannerColor:I

    move/from16 v21, v0

    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 886
    const/16 v21, 0x1

    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 887
    const/16 v21, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 888
    sget v21, Lcom/android/calendar/MonthView;->WEEK_TEXT_SIZE:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 889
    sget-object v21, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 891
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sget v22, Lcom/android/calendar/MonthView;->WEEK_TEXT_PADDING:I

    add-int v15, v21, v22

    .line 893
    .local v15, textX:I
    if-eqz p8, :cond_c

    .line 894
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sget v22, Lcom/android/calendar/MonthView;->WEEK_BANNER_HEIGHT:I

    add-int v21, v21, v22

    sget v22, Lcom/android/calendar/MonthView;->WEEK_TEXT_PADDING:I

    sub-int v16, v21, v22

    .line 898
    .local v16, textY:I
    :goto_3
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move v0, v15

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 902
    .end local v15           #textX:I
    .end local v16           #textY:I
    :cond_6
    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 903
    const/16 v21, 0x1

    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 905
    sget-object v21, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 906
    sget v21, Lcom/android/calendar/MonthView;->LUNAR_TEXT_SIZE:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 908
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    .line 910
    .local v9, fmLunar:Landroid/graphics/Paint$FontMetricsInt;
    sget-object v21, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v21

    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 911
    sget v21, Lcom/android/calendar/MonthView;->MONTH_DAY_TEXT_SIZE:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 912
    sget-object v21, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 914
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    .line 916
    .local v8, fmDay:Landroid/graphics/Paint$FontMetricsInt;
    if-nez v18, :cond_d

    .line 917
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mMonthOtherMonthDayNumberColor:I

    move/from16 v21, v0

    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 930
    :goto_4
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v10, v21, v22

    .line 931
    .local v10, gridHeight:I
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v21, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object v0, v9

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object v0, v9

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v22, v0

    sub-int v12, v21, v22

    .line 932
    .local v12, textHeight:I
    sub-int v21, v10, v12

    div-int/lit8 v14, v21, 0x8

    .line 935
    .local v14, textSpacing:I
    add-int v13, v12, v14

    .line 936
    .local v13, textHeightWithSpacing:I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v21, v21, v22

    div-int/lit8 v15, v21, 0x2

    .line 937
    .restart local v15       #textX:I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v21, v21, v22

    sub-int v21, v21, v13

    div-int/lit8 v21, v21, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    sub-int v16, v21, v22

    .line 938
    .restart local v16       #textY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/DayOfMonthCursor;->getDayAt(II)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move v0, v15

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 941
    sget-object v21, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 942
    sget v21, Lcom/android/calendar/MonthView;->LUNAR_TEXT_SIZE:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 943
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v21, v0

    add-int v21, v21, v14

    move-object v0, v9

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    add-int v16, v16, v21

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/MonthView;->getText(Lcom/android/calendar/DayOfMonthCursor;II)Ljava/lang/String;

    move-result-object v21

    move v0, v15

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 946
    if-eqz p9, :cond_7

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mBusyIndicator:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mBusyIndicator:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 950
    :cond_7
    return-void

    .line 830
    .end local v8           #fmDay:Landroid/graphics/Paint$FontMetricsInt;
    .end local v9           #fmLunar:Landroid/graphics/Paint$FontMetricsInt;
    .end local v10           #gridHeight:I
    .end local v12           #textHeight:I
    .end local v13           #textHeightWithSpacing:I
    .end local v14           #textSpacing:I
    .end local v15           #textX:I
    .end local v16           #textY:I
    :cond_8
    sget v21, Lcom/android/calendar/MonthView;->COLUMNS:I

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move/from16 v0, p4

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 831
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mBorder:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 850
    :cond_9
    if-eqz v11, :cond_a

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mMonthTodayBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mMonthTodayBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 853
    :cond_a
    if-eqz v7, :cond_5

    .line 854
    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 855
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mPressedColor:I

    move/from16 v21, v0

    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 856
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 858
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/MonthView;->mAnimating:Z

    move/from16 v21, v0

    if-nez v21, :cond_5

    .line 859
    invoke-direct/range {p0 .. p1}, Lcom/android/calendar/MonthView;->updateEventDetails(I)V

    goto/16 :goto_1

    .line 876
    :cond_b
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 877
    .local v17, top:I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sget v22, Lcom/android/calendar/MonthView;->WEEK_BANNER_HEIGHT:I

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 878
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 879
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 880
    move/from16 v0, v17

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 881
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_2

    .line 896
    .end local v17           #top:I
    .restart local v15       #textX:I
    :cond_c
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sget v22, Lcom/android/calendar/MonthView;->WEEK_TEXT_PADDING:I

    sub-int v16, v21, v22

    .restart local v16       #textY:I
    goto/16 :goto_3

    .line 919
    .end local v15           #textX:I
    .end local v16           #textY:I
    .restart local v8       #fmDay:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v9       #fmLunar:Landroid/graphics/Paint$FontMetricsInt;
    :cond_d
    if-eqz v11, :cond_e

    .line 920
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mMonthTodayNumberColor:I

    move/from16 v21, v0

    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 921
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mStartDay:I

    move/from16 v21, v0

    move/from16 v0, p4

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->isSunday(II)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 922
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mMonthSundayColor:I

    move/from16 v21, v0

    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 923
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mStartDay:I

    move/from16 v21, v0

    move/from16 v0, p4

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->isSaturday(II)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 924
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mMonthSaturdayColor:I

    move/from16 v21, v0

    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 926
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mMonthDayNumberColor:I

    move/from16 v21, v0

    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4
.end method

.method private drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 13
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/4 v12, 0x1

    .line 771
    iget v0, p0, Lcom/android/calendar/MonthView;->mMonthWeekBannerColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 772
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 774
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getMeasuredWidth()I

    move-result v9

    .line 775
    .local v9, width:I
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getMeasuredHeight()I

    move-result v7

    .line 777
    .local v7, height:I
    const/4 v8, 0x0

    .local v8, row:I
    :goto_0
    const/4 v0, 0x6

    if-ge v8, v0, :cond_0

    .line 778
    sget v0, Lcom/android/calendar/MonthView;->WEEK_GAP:I

    sget v1, Lcom/android/calendar/MonthView;->WEEK_GAP:I

    iget v2, p0, Lcom/android/calendar/MonthView;->mCellHeight:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v8

    add-int/2addr v0, v1

    sub-int v11, v0, v12

    .line 779
    .local v11, y:I
    const/4 v1, 0x0

    int-to-float v2, v11

    int-to-float v3, v9

    int-to-float v4, v11

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 777
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 781
    .end local v11           #y:I
    :cond_0
    const/4 v6, 0x1

    .local v6, column:I
    :goto_1
    const/4 v0, 0x7

    if-ge v6, v0, :cond_1

    .line 782
    iget v0, p0, Lcom/android/calendar/MonthView;->mBorder:I

    sget v1, Lcom/android/calendar/MonthView;->MONTH_DAY_GAP:I

    iget v2, p0, Lcom/android/calendar/MonthView;->mCellWidth:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    sub-int v10, v0, v12

    .line 783
    .local v10, x:I
    int-to-float v1, v10

    sget v0, Lcom/android/calendar/MonthView;->WEEK_GAP:I

    int-to-float v2, v0

    int-to-float v3, v10

    int-to-float v4, v7

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 781
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 785
    .end local v10           #x:I
    :cond_1
    return-void
.end method

.method private drawingCalc(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 1070
    sget v0, Lcom/android/calendar/MonthView;->WEEK_GAP:I

    mul-int/lit8 v0, v0, 0x6

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/calendar/MonthView;->mCellHeight:I

    .line 1071
    sget v0, Lcom/android/calendar/MonthView;->MONTH_DAY_GAP:I

    mul-int/lit8 v0, v0, 0x6

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/android/calendar/MonthView;->mCellWidth:I

    .line 1072
    iget v0, p0, Lcom/android/calendar/MonthView;->mCellWidth:I

    sget v1, Lcom/android/calendar/MonthView;->MONTH_DAY_GAP:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/calendar/MonthView;->mCellWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/calendar/MonthView;->mBorder:I

    .line 1074
    iget-boolean v0, p0, Lcom/android/calendar/MonthView;->mShowToast:Z

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1076
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x14

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1077
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p1, :cond_3

    :cond_1
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    .line 1085
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1086
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1088
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1089
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    .line 1092
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1093
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1094
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1095
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 1096
    return-void
.end method

.method private getSelectedMillisFor(II)J
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 730
    sget v4, Lcom/android/calendar/MonthView;->WEEK_GAP:I

    sub-int v4, p2, v4

    sget v5, Lcom/android/calendar/MonthView;->WEEK_GAP:I

    iget v6, p0, Lcom/android/calendar/MonthView;->mCellHeight:I

    add-int/2addr v5, v6

    div-int v2, v4, v5

    .line 731
    .local v2, row:I
    iget v4, p0, Lcom/android/calendar/MonthView;->mBorder:I

    sub-int v4, p1, v4

    sget v5, Lcom/android/calendar/MonthView;->MONTH_DAY_GAP:I

    iget v6, p0, Lcom/android/calendar/MonthView;->mCellWidth:I

    add-int/2addr v5, v6

    div-int v1, v4, v5

    .line 732
    .local v1, column:I
    const/4 v4, 0x6

    if-le v1, v4, :cond_0

    .line 733
    const/4 v1, 0x6

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    .line 737
    .local v0, c:Lcom/android/calendar/DayOfMonthCursor;
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 738
    .local v3, time:Landroid/text/format/Time;
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 745
    mul-int/lit8 v4, v2, 0x7

    add-int/2addr v4, v1

    invoke-virtual {v0}, Lcom/android/calendar/DayOfMonthCursor;->getOffset()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/text/format/Time;->monthDay:I

    .line 746
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    return-wide v4
.end method

.method private getText(Lcom/android/calendar/DayOfMonthCursor;II)Ljava/lang/String;
    .locals 12
    .parameter "cursor"
    .parameter "row"
    .parameter "column"

    .prologue
    const-wide/16 v10, 0x1

    const v9, 0x10403f4

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 953
    invoke-virtual {p1, p2, p3}, Lcom/android/calendar/DayOfMonthCursor;->getDateAt(II)Ljava/util/Calendar;

    move-result-object v0

    .line 955
    .local v0, day:Ljava/util/Calendar;
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/LunarDate;->calLunar(III)[J

    move-result-object v2

    .line 959
    .local v2, lunar:[J
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v2, v0}, Lcom/android/internal/util/LunarDate;->getHoliday(Landroid/content/res/Resources;[JLjava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 961
    .local v1, holiday:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v4, v1

    .line 984
    :goto_0
    return-object v4

    .line 966
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/internal/util/LunarDate;->getSolarTerm(Landroid/content/res/Resources;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    .line 968
    .local v3, solarTerm:Ljava/lang/String;
    if-eqz v3, :cond_1

    move-object v4, v3

    .line 969
    goto :goto_0

    .line 974
    :cond_1
    aget-wide v4, v2, v8

    cmp-long v4, v4, v10

    if-nez v4, :cond_3

    .line 975
    const/4 v4, 0x6

    aget-wide v4, v2, v4

    cmp-long v4, v4, v10

    if-nez v4, :cond_2

    .line 976
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v6, 0x10403e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    aget-wide v6, v2, v7

    long-to-int v6, v6

    invoke-static {v5, v6}, Lcom/android/internal/util/LunarDate;->getMonthString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 980
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    aget-wide v6, v2, v7

    long-to-int v6, v6

    invoke-static {v5, v6}, Lcom/android/internal/util/LunarDate;->getMonthString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 984
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    aget-wide v5, v2, v8

    long-to-int v5, v5

    invoke-static {v4, v5}, Lcom/android/internal/util/LunarDate;->getDayString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getWeekOfYear(IIZLjava/util/Calendar;)I
    .locals 6
    .parameter "row"
    .parameter "column"
    .parameter "isWithinCurrentMonth"
    .parameter "calendar"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 990
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v3, p1, p2}, Lcom/android/calendar/DayOfMonthCursor;->getDayAt(II)I

    move-result v3

    invoke-virtual {p4, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 991
    if-eqz p3, :cond_0

    .line 992
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/DayOfMonthCursor;->getMonth()I

    move-result v2

    invoke-virtual {p4, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 993
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/DayOfMonthCursor;->getYear()I

    move-result v2

    invoke-virtual {p4, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 1018
    :goto_0
    const/4 v2, 0x3

    invoke-virtual {p4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    return v2

    .line 995
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/DayOfMonthCursor;->getMonth()I

    move-result v0

    .line 996
    .local v0, month:I
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/DayOfMonthCursor;->getYear()I

    move-result v1

    .line 997
    .local v1, year:I
    if-ge p1, v4, :cond_2

    .line 999
    if-nez v0, :cond_1

    .line 1000
    add-int/lit8 v1, v1, -0x1

    .line 1001
    const/16 v0, 0xb

    .line 1014
    :goto_1
    invoke-virtual {p4, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 1015
    invoke-virtual {p4, v5, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 1003
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1007
    :cond_2
    const/16 v2, 0xb

    if-ne v0, v2, :cond_3

    .line 1008
    add-int/lit8 v1, v1, 0x1

    .line 1009
    const/4 v0, 0x0

    goto :goto_1

    .line 1011
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private init(Lcom/android/calendar/MonthActivity;Ljava/lang/String;)V
    .locals 13
    .parameter "activity"
    .parameter "timeZone"

    .prologue
    .line 245
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/calendar/MonthView;->setFocusable(Z)V

    .line 246
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/calendar/MonthView;->setClickable(Z)V

    .line 247
    iput-object p1, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    .line 248
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 250
    .local v4, now:J
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 251
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    const/4 v9, 0x1

    iput v9, v8, Landroid/text/format/Time;->monthDay:I

    .line 252
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 253
    .local v2, millis:J
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v8, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    .line 254
    invoke-static {}, Lcom/android/calendar/Utils;->getFirstDayOfWeek()I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mStartDay:I

    .line 255
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 257
    new-instance v8, Lcom/android/calendar/DayOfMonthCursor;

    iget-object v9, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->year:I

    iget-object v10, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->month:I

    iget-object v11, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v11, v11, Landroid/text/format/Time;->monthDay:I

    iget-object v12, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v12}, Lcom/android/calendar/MonthActivity;->getStartDay()I

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/android/calendar/DayOfMonthCursor;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    .line 259
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mToday:Landroid/text/format/Time;

    .line 260
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mToday:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 262
    invoke-virtual {p1}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    .line 265
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 266
    .local v6, res:Landroid/content/res/Resources;
    const v8, 0x7f07001d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthOtherMonthColor:I

    .line 267
    const v8, 0x7f070020

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthWeekBannerColor:I

    .line 268
    const v8, 0x7f07001f

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthOtherMonthBannerColor:I

    .line 269
    const v8, 0x7f07001e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthOtherMonthDayNumberColor:I

    .line 270
    const v8, 0x7f070019

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthDayNumberColor:I

    .line 271
    const v8, 0x7f07001c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthTodayNumberColor:I

    .line 272
    const v8, 0x7f07001a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthSaturdayColor:I

    .line 273
    const v8, 0x7f07001b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthSundayColor:I

    .line 274
    const v8, 0x7f070021

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthBgColor:I

    .line 275
    const v8, 0x7f070018

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mPressedColor:I

    .line 277
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020008

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mBusyIndicator:Landroid/graphics/Bitmap;

    .line 278
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mMonthTodayBackground:Landroid/graphics/drawable/Drawable;

    .line 280
    iget-boolean v8, p0, Lcom/android/calendar/MonthView;->mShowToast:Z

    if-eqz v8, :cond_0

    .line 282
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Lcom/android/calendar/MonthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 283
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030014

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    .line 284
    new-instance v8, Landroid/widget/PopupWindow;

    invoke-direct {v8, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    .line 285
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    iget-object v9, p0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 287
    .local v0, dialogTheme:Landroid/content/res/Resources$Theme;
    const v8, 0x103000b

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 288
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x1010054

    aput v10, v8, v9

    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 290
    .local v7, ta:Landroid/content/res/TypedArray;
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 294
    .end local v0           #dialogTheme:Landroid/content/res/Resources$Theme;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v7           #ta:Landroid/content/res/TypedArray;
    :cond_0
    new-instance v8, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/calendar/MonthView$2;

    invoke-direct {v10, p0}, Lcom/android/calendar/MonthView$2;-><init>(Lcom/android/calendar/MonthView;)V

    invoke-direct {v8, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 416
    return-void
.end method

.method private recycleAndClearBitmapCache(Landroid/util/SparseArray;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 757
    .local p1, bitmapCache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 758
    .local v1, size:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 759
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 761
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 763
    return-void
.end method

.method private sendAccessibilityEvents()V
    .locals 7

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    const v6, 0x7f0c0003

    invoke-virtual {v5, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 657
    .local v4, titleView:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 659
    .local v3, titleTextViewText:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mPrevTitleTextViewText:Ljava/lang/CharSequence;

    if-eq v3, v5, :cond_4

    const/4 v5, 0x1

    move v2, v5

    .line 660
    .local v2, titleChanged:Z
    :goto_1
    if-eqz v2, :cond_2

    .line 661
    iput-object v3, p0, Lcom/android/calendar/MonthView;->mPrevTitleTextViewText:Ljava/lang/CharSequence;

    .line 662
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lcom/android/calendar/MonthView;->sendAccessibilityEvent(I)V

    .line 664
    :cond_2
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v5}, Lcom/android/calendar/DayOfMonthCursor;->getMonth()I

    move-result v1

    .line 665
    .local v1, selectedMonth:I
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v5}, Lcom/android/calendar/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v0

    .line 668
    .local v0, selectedDayOfMonth:I
    if-nez v2, :cond_3

    iget v5, p0, Lcom/android/calendar/MonthView;->mPrevSelectedMonth:I

    if-ne v5, v1, :cond_3

    iget v5, p0, Lcom/android/calendar/MonthView;->mPrevSelectedDayOfMonth:I

    if-eq v5, v0, :cond_0

    .line 670
    :cond_3
    iput v1, p0, Lcom/android/calendar/MonthView;->mPrevSelectedMonth:I

    .line 671
    iput v0, p0, Lcom/android/calendar/MonthView;->mPrevSelectedDayOfMonth:I

    .line 672
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/calendar/MonthView;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 659
    .end local v0           #selectedDayOfMonth:I
    .end local v1           #selectedMonth:I
    .end local v2           #titleChanged:Z
    :cond_4
    const/4 v5, 0x0

    move v2, v5

    goto :goto_1
.end method

.method private updateEventDetails(I)V
    .locals 26
    .parameter "date"

    .prologue
    .line 1099
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/MonthView;->mShowToast:Z

    move v5, v0

    if-nez v5, :cond_0

    .line 1255
    :goto_0
    return-void

    .line 1103
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/MonthView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mDismissPopup:Lcom/android/calendar/MonthView$DismissPopup;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    move-object v13, v0

    .line 1105
    .local v13, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1106
    .local v17, numEvents:I
    if-nez v17, :cond_1

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 1111
    :cond_1
    const/4 v12, 0x0

    .line 1112
    .local v12, eventIndex:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    .line 1113
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/calendar/Event;

    .line 1115
    .local v11, event:Lcom/android/calendar/Event;
    iget v5, v11, Lcom/android/calendar/Event;->startDay:I

    move v0, v5

    move/from16 v1, p1

    if-gt v0, v1, :cond_2

    iget v5, v11, Lcom/android/calendar/Event;->endDay:I

    move v0, v5

    move/from16 v1, p1

    if-ge v0, v1, :cond_3

    .line 1112
    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1121
    :cond_3
    const/4 v5, 0x4

    if-lt v12, v5, :cond_4

    .line 1122
    add-int/lit8 v12, v12, 0x1

    .line 1123
    goto :goto_2

    .line 1127
    :cond_4
    const/16 v20, 0x0

    .line 1128
    .local v20, showEndTime:Z
    iget-boolean v5, v11, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v5, :cond_7

    .line 1129
    iget v5, v11, Lcom/android/calendar/Event;->endDay:I

    iget v6, v11, Lcom/android/calendar/Event;->startDay:I

    sub-int v16, v5, v6

    .line 1130
    .local v16, numDays:I
    if-nez v16, :cond_6

    .line 1131
    const v10, 0x82012

    .line 1146
    .end local v16           #numDays:I
    .local v10, flags:I
    :cond_5
    :goto_3
    if-eqz v20, :cond_8

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    move-object v5, v0

    iget-wide v6, v11, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v8, v11, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v5 .. v10}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v21

    .line 1154
    .local v21, timeRange:Ljava/lang/String;
    :goto_4
    const/16 v22, 0x0

    .line 1155
    .local v22, timeView:Landroid/widget/TextView;
    const/16 v23, 0x0

    .line 1156
    .local v23, titleView:Landroid/widget/TextView;
    packed-switch v12, :pswitch_data_0

    .line 1175
    :goto_5
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    iget-object v5, v11, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1134
    .end local v10           #flags:I
    .end local v21           #timeRange:Ljava/lang/String;
    .end local v22           #timeView:Landroid/widget/TextView;
    .end local v23           #titleView:Landroid/widget/TextView;
    .restart local v16       #numDays:I
    :cond_6
    const/16 v20, 0x1

    .line 1135
    const v10, 0x82010

    .restart local v10       #flags:I
    goto :goto_3

    .line 1139
    .end local v10           #flags:I
    .end local v16           #numDays:I
    :cond_7
    const/16 v10, 0x1401

    .line 1140
    .restart local v10       #flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1141
    or-int/lit16 v10, v10, 0x80

    goto :goto_3

    .line 1150
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    move-object v5, v0

    iget-wide v6, v11, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v8, v11, Lcom/android/calendar/Event;->startMillis:J

    invoke-static/range {v5 .. v10}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v21

    .restart local v21       #timeRange:Ljava/lang/String;
    goto :goto_4

    .line 1158
    .restart local v22       #timeView:Landroid/widget/TextView;
    .restart local v23       #titleView:Landroid/widget/TextView;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0069

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22           #timeView:Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1159
    .restart local v22       #timeView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c006a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23           #titleView:Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 1160
    .restart local v23       #titleView:Landroid/widget/TextView;
    goto :goto_5

    .line 1162
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c006c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22           #timeView:Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1163
    .restart local v22       #timeView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c006d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23           #titleView:Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 1164
    .restart local v23       #titleView:Landroid/widget/TextView;
    goto :goto_5

    .line 1166
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c006f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22           #timeView:Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1167
    .restart local v22       #timeView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0070

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23           #titleView:Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .line 1168
    .restart local v23       #titleView:Landroid/widget/TextView;
    goto/16 :goto_5

    .line 1170
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0072

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22           #timeView:Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1171
    .restart local v22       #timeView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0073

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .end local v23           #titleView:Landroid/widget/TextView;
    check-cast v23, Landroid/widget/TextView;

    .restart local v23       #titleView:Landroid/widget/TextView;
    goto/16 :goto_5

    .line 1179
    .end local v10           #flags:I
    .end local v11           #event:Lcom/android/calendar/Event;
    .end local v20           #showEndTime:Z
    .end local v21           #timeRange:Ljava/lang/String;
    .end local v22           #timeView:Landroid/widget/TextView;
    .end local v23           #titleView:Landroid/widget/TextView;
    :cond_9
    if-nez v12, :cond_a

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 1187
    :cond_a
    packed-switch v12, :pswitch_data_1

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c006b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1230
    .local v25, view:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c006e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1232
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0071

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1234
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0074

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1236
    .local v24, tv:Landroid/widget/TextView;
    const/4 v5, 0x0

    move-object/from16 v0, v24

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    move-object v5, v0

    const v6, 0x7f080018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1238
    .local v14, format:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    sub-int v7, v12, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v14, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1239
    .local v18, plusMore:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1243
    .end local v14           #format:Ljava/lang/String;
    .end local v18           #plusMore:Ljava/lang/String;
    .end local v24           #tv:Landroid/widget/TextView;
    :goto_6
    const/4 v5, 0x5

    if-le v12, v5, :cond_b

    .line 1244
    const/4 v12, 0x5

    .line 1246
    :cond_b
    mul-int/lit8 v5, v12, 0x14

    add-int/lit8 v19, v5, 0xf

    .line 1247
    .local v19, popupHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/MonthView;->mPreviousPopupHeight:I

    move v5, v0

    move v0, v5

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 1250
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/MonthView;->mPreviousPopupHeight:I

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1253
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    const/16 v6, 0x53

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mDismissPopup:Lcom/android/calendar/MonthView$DismissPopup;

    move-object v5, v0

    const-wide/16 v6, 0xbb8

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/MonthView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1189
    .end local v19           #popupHeight:I
    .end local v25           #view:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c006b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1190
    .restart local v25       #view:Landroid/view/View;
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c006e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1192
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0071

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1194
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0074

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1196
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 1199
    .end local v25           #view:Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c006b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1200
    .restart local v25       #view:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c006e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1202
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0071

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1204
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0074

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1206
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 1209
    .end local v25           #view:Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c006b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1210
    .restart local v25       #view:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c006e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1212
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0071

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1214
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0074

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1216
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 1219
    .end local v25           #view:Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c006b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1220
    .restart local v25       #view:Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c006e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1222
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0071

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1224
    const/4 v5, 0x0

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/MonthView;->mPopupView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0c0074

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 1226
    const/16 v5, 0x8

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 1156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1187
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method animationFinished()V
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/MonthView;->mAnimating:Z

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 555
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 556
    return-void
.end method

.method animationStarted()V
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/MonthView;->mAnimating:Z

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 550
    return-void
.end method

.method dismissPopup()V
    .locals 2

    .prologue
    .line 1397
    iget-boolean v1, p0, Lcom/android/calendar/MonthView;->mShowToast:Z

    if-nez v1, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1402
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    .line 1403
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1406
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1407
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 1408
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mDismissPopup:Lcom/android/calendar/MonthView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 697
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    .line 700
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mPrevTitleTextViewText:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 701
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v1

    .line 704
    .local v1, startMillis:J
    const v5, 0x10012

    .line 706
    .local v5, flags:I
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 707
    .local v12, text:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    const/4 v13, 0x0

    .line 711
    .local v13, todayEventCount:I
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v0}, Lcom/android/calendar/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v10

    .line 712
    .local v10, selectedDayOfMonth:I
    const/4 v9, 0x0

    .local v9, i:I
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, count:I
    :goto_1
    if-ge v9, v7, :cond_3

    .line 713
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/Event;

    .line 714
    .local v6, calendarEvent:Lcom/android/calendar/Event;
    iget v0, v6, Lcom/android/calendar/Event;->startDay:I

    iget v3, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    sub-int/2addr v0, v3

    add-int/lit8 v11, v0, 0x1

    .line 715
    .local v11, startDay:I
    iget v0, v6, Lcom/android/calendar/Event;->endDay:I

    iget v3, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    sub-int/2addr v0, v3

    add-int/lit8 v8, v0, 0x1

    .line 716
    .local v8, endDay:I
    if-gt v11, v10, :cond_2

    if-lt v8, v10, :cond_2

    .line 717
    add-int/lit8 v13, v13, 0x1

    .line 712
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 723
    .end local v6           #calendarEvent:Lcom/android/calendar/Event;
    .end local v8           #endDay:I
    .end local v11           #startDay:I
    :cond_3
    invoke-virtual {p1, v13}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    goto :goto_0
.end method

.method public getSelectedTimeInMillis()J
    .locals 3

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 1044
    .local v0, time:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1046
    iget v1, v0, Landroid/text/format/Time;->month:I

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/DayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 1047
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v1}, Lcom/android/calendar/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 1051
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->second:I

    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 1052
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 1053
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->hour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 1054
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public getSelectionMode()I
    .locals 1

    .prologue
    .line 1062
    iget v0, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    return v0
.end method

.method getTime()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v1

    .line 431
    .local v1, startMillis:J
    const v6, 0x10012

    .line 434
    .local v6, flags:I
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    const v5, 0x10012

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v8

    .line 436
    .local v8, title:Ljava/lang/String;
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 438
    const/4 v0, 0x3

    const v3, 0x7f08000b

    invoke-interface {p1, v9, v0, v9, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 439
    .local v7, item:Landroid/view/MenuItem;
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mContextMenuHandler:Lcom/android/calendar/MonthView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 440
    const v0, 0x108003b

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 441
    const/16 v0, 0x64

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 443
    const/4 v0, 0x2

    const v3, 0x7f08000a

    invoke-interface {p1, v9, v0, v9, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 444
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mContextMenuHandler:Lcom/android/calendar/MonthView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 445
    const v0, 0x1080034

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 446
    const/16 v0, 0x61

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 448
    const/4 v0, 0x6

    const v3, 0x7f080011

    invoke-interface {p1, v9, v0, v9, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 449
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mContextMenuHandler:Lcom/android/calendar/MonthView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 450
    const v0, 0x1080033

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 451
    const/16 v0, 0x6e

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 452
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 567
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 569
    invoke-direct {p0}, Lcom/android/calendar/MonthView;->clearBitmapCache()V

    .line 570
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 573
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 577
    iget-boolean v1, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    if-eqz v1, :cond_1

    .line 578
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/MonthView;->drawingCalc(II)V

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    .line 586
    .local v0, bitmapCanvas:Landroid/graphics/Canvas;
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 587
    invoke-direct {p0, v0}, Lcom/android/calendar/MonthView;->doDraw(Landroid/graphics/Canvas;)V

    .line 588
    iput-boolean v3, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 593
    .end local v0           #bitmapCanvas:Landroid/graphics/Canvas;
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 594
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 597
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/MonthView;->sendAccessibilityEvents()V

    .line 598
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1295
    iget v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    if-nez v4, :cond_2

    .line 1296
    const/16 v4, 0x42

    if-eq p1, v4, :cond_0

    const/16 v4, 0x16

    if-eq p1, v4, :cond_0

    const/16 v4, 0x15

    if-eq p1, v4, :cond_0

    const/16 v4, 0x13

    if-eq p1, v4, :cond_0

    const/16 v4, 0x14

    if-ne p1, v4, :cond_1

    .line 1301
    :cond_0
    iput v5, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1302
    iput-boolean v6, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1303
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    move v4, v6

    .line 1385
    :goto_0
    return v4

    .line 1305
    :cond_1
    const/16 v4, 0x17

    if-ne p1, v4, :cond_2

    .line 1308
    iput v6, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1309
    iput-boolean v6, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1310
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    move v4, v6

    .line 1311
    goto :goto_0

    .line 1315
    :cond_2
    iput v5, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1316
    const/4 v3, 0x0

    .line 1317
    .local v3, redraw:Z
    const/4 v2, 0x0

    .line 1319
    .local v2, other:Landroid/text/format/Time;
    sparse-switch p1, :sswitch_data_0

    .line 1377
    :goto_1
    if-eqz v2, :cond_8

    .line 1378
    invoke-virtual {v2, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 1379
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mNavigator:Lcom/android/calendar/Navigator;

    invoke-interface {v4, v2, v6}, Lcom/android/calendar/Navigator;->goTo(Landroid/text/format/Time;Z)V

    :cond_3
    :goto_2
    move v4, v3

    .line 1385
    goto :goto_0

    .line 1321
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v0

    .line 1322
    .local v0, millis:J
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    invoke-static {v4, v5, v0, v1}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    move v4, v6

    .line 1323
    goto :goto_0

    .line 1325
    .end local v0           #millis:J
    :sswitch_1
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/DayOfMonthCursor;->up()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1326
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1327
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1328
    iget v4, v2, Landroid/text/format/Time;->month:I

    sub-int/2addr v4, v6

    iput v4, v2, Landroid/text/format/Time;->month:I

    .line 1329
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v4

    iput v4, v2, Landroid/text/format/Time;->monthDay:I

    .line 1332
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/DayOfMonthCursor;->down()Z

    .line 1334
    :cond_4
    const/4 v3, 0x1

    .line 1335
    goto :goto_1

    .line 1338
    :sswitch_2
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/DayOfMonthCursor;->down()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1339
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1340
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1341
    iget v4, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/text/format/Time;->month:I

    .line 1342
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v4

    iput v4, v2, Landroid/text/format/Time;->monthDay:I

    .line 1345
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/DayOfMonthCursor;->up()Z

    .line 1347
    :cond_5
    const/4 v3, 0x1

    .line 1348
    goto :goto_1

    .line 1351
    :sswitch_3
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/DayOfMonthCursor;->left()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1352
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1353
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1354
    iget v4, v2, Landroid/text/format/Time;->month:I

    sub-int/2addr v4, v6

    iput v4, v2, Landroid/text/format/Time;->month:I

    .line 1355
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v4

    iput v4, v2, Landroid/text/format/Time;->monthDay:I

    .line 1358
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/DayOfMonthCursor;->right()Z

    .line 1360
    :cond_6
    const/4 v3, 0x1

    .line 1361
    goto/16 :goto_1

    .line 1364
    :sswitch_4
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/DayOfMonthCursor;->right()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1365
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1366
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1367
    iget v4, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/text/format/Time;->month:I

    .line 1368
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v4

    iput v4, v2, Landroid/text/format/Time;->monthDay:I

    .line 1371
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/DayOfMonthCursor;->left()Z

    .line 1373
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1380
    :cond_8
    if-eqz v3, :cond_3

    .line 1381
    iput-boolean v6, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1382
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    goto/16 :goto_2

    .line 1319
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 1259
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 1261
    .local v0, duration:J
    packed-switch p1, :pswitch_data_0

    .line 1290
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 1263
    :pswitch_0
    iget v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    if-eqz v4, :cond_0

    .line 1268
    iget v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    if-ne v4, v8, :cond_1

    .line 1273
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1274
    iput-boolean v8, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1275
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    goto :goto_0

    .line 1280
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 1281
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v2

    .line 1282
    .local v2, millis:J
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    invoke-static {v4, v5, v2, v3}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 1284
    .end local v2           #millis:J
    :cond_2
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1285
    iput-boolean v8, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1286
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 1287
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->performLongClick()Z

    goto :goto_0

    .line 1261
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 560
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/MonthView;->drawingCalc(II)V

    .line 562
    invoke-direct {p0}, Lcom/android/calendar/MonthView;->clearBitmapCache()V

    .line 563
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    const/4 v0, 0x1

    .line 682
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method reloadEvents()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 487
    iget-object v7, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 488
    .local v7, monthStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 489
    iput v5, v7, Landroid/text/format/Time;->monthDay:I

    .line 490
    iput v1, v7, Landroid/text/format/Time;->hour:I

    .line 491
    iput v1, v7, Landroid/text/format/Time;->minute:I

    .line 492
    iput v1, v7, Landroid/text/format/Time;->second:I

    .line 493
    invoke-virtual {v7, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 494
    .local v3, millis:J
    iget-wide v0, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v8

    .line 497
    .local v8, startDay:I
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->startProgressSpinner()V

    .line 503
    const-wide/16 v9, 0x0

    .line 506
    .local v9, startMillis:J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEventLoader:Lcom/android/calendar/EventLoader;

    sget v1, Lcom/android/calendar/MonthView;->EVENT_NUM_DAYS:I

    new-instance v5, Lcom/android/calendar/MonthView$3;

    invoke-direct {v5, p0, v2}, Lcom/android/calendar/MonthView$3;-><init>(Lcom/android/calendar/MonthView;Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 545
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 689
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 693
    :goto_0
    return-void

    .line 692
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method setDetailedView(Ljava/lang/String;)V
    .locals 0
    .parameter "detailedView"

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    .line 1023
    return-void
.end method

.method public setHasAccount(Z)V
    .locals 1
    .parameter "has"

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/android/calendar/MonthView;->mHasAccount:Z

    .line 420
    if-eqz p1, :cond_0

    .line 421
    invoke-virtual {p0, p0}, Lcom/android/calendar/MonthView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0
.end method

.method setSelectedTime(Landroid/text/format/Time;)V
    .locals 8
    .parameter "time"

    .prologue
    const/4 v7, 0x1

    .line 1027
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1029
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1030
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iput v7, v2, Landroid/text/format/Time;->monthDay:I

    .line 1031
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1032
    .local v0, millis:J
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    .line 1033
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1035
    new-instance v2, Lcom/android/calendar/DayOfMonthCursor;

    iget v3, p1, Landroid/text/format/Time;->year:I

    iget v4, p1, Landroid/text/format/Time;->month:I

    iget v5, p1, Landroid/text/format/Time;->monthDay:I

    iget-object v6, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    invoke-virtual {v6}, Lcom/android/calendar/DayOfMonthCursor;->getWeekStartDay()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/calendar/DayOfMonthCursor;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;

    .line 1038
    iput-boolean v7, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1039
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 1040
    return-void
.end method

.method public setSelectionMode(I)V
    .locals 0
    .parameter "selectionMode"

    .prologue
    .line 1066
    iput p1, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1067
    return-void
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1414
    return-void
.end method
