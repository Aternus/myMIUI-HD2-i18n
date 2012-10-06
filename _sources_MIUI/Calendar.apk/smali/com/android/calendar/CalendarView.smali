.class public Lcom/android/calendar/CalendarView;
.super Landroid/view/View;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarView$UpdateCurrentTime;,
        Lcom/android/calendar/CalendarView$DismissPopup;,
        Lcom/android/calendar/CalendarView$ContinueScroll;,
        Lcom/android/calendar/CalendarView$ContextMenuHandler;,
        Lcom/android/calendar/CalendarView$DayHeader;
    }
.end annotation


# static fields
.field private static final ACCESS_LEVEL_DELETE:I = 0x1

.field private static final ACCESS_LEVEL_EDIT:I = 0x2

.field private static final ACCESS_LEVEL_NONE:I = 0x0

.field private static ALLDAY_TOP_MARGIN:I = 0x0

.field private static final ALL_DAY_TEXT_TOP_MARGIN:I = 0x0

.field private static AMPM_FONT_SIZE:I = 0x0

.field private static final ATTENDEES_INDEX_RELATIONSHIP:I = 0x1

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=%d"

.field private static final CALENDARS_INDEX_ACCESS_LEVEL:I = 0x1

.field private static final CALENDARS_INDEX_OWNER_ACCOUNT:I = 0x2

.field private static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field private static final CALENDARS_WHERE:Ljava/lang/String; = "_id=%d"

.field private static CURRENT_TIME_LINE_BORDER_WIDTH:I = 0x0

.field private static CURRENT_TIME_LINE_HEIGHT:I = 0x0

.field private static CURRENT_TIME_LINE_SIDE_BUFFER:I = 0x0

.field private static CURRENT_TIME_MARKER_HEIGHT:I = 0x0

.field private static CURRENT_TIME_MARKER_INNER_WIDTH:I = 0x0

.field private static CURRENT_TIME_MARKER_WIDTH:I = 0x0

.field private static final DAY_GAP:I = 0x1

.field static EVENT_OVERWRAP_MARGIN_TIME:J = 0x0L

.field private static EVENT_TEXT_FONT_SIZE:I = 0x0

.field private static final FROM_ABOVE:I = 0x1

.field private static final FROM_BELOW:I = 0x2

.field private static final FROM_LEFT:I = 0x4

.field private static final FROM_NONE:I = 0x0

.field private static final FROM_RIGHT:I = 0x8

.field private static HEADER_FONT_SIZE:I = 0x0

.field private static HORIZONTAL_SCROLL_THRESHOLD:I = 0x0

.field private static HOURS_FONT_SIZE:I = 0x0

.field private static final HOURS_LEFT_MARGIN:I = 0x2

.field private static final HOURS_MARGIN:I = 0x6

.field private static final HOURS_RIGHT_MARGIN:I = 0x4

.field private static final HOUR_GAP:I = 0x1

.field private static final INVALID_EVENT_ID:J = -0x1L

.field private static MAX_ALLDAY_EVENT_HEIGHT:I = 0x0

.field private static MAX_ALLDAY_HEIGHT:I = 0x0

.field private static final MAX_EVENT_TEXT_LEN:I = 0x1f4

.field static final MILLIS_PER_DAY:I = 0x5265c00

.field static final MILLIS_PER_HOUR:I = 0x36ee80

.field static final MILLIS_PER_MINUTE:I = 0xea60

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field private static MIN_CELL_WIDTH_FOR_TEXT:I = 0x0

.field private static MIN_EVENT_HEIGHT:F = 0.0f

.field private static NORMAL_FONT_SIZE:I = 0x0

.field private static final NORMAL_TEXT_TOP_MARGIN:I = 0x2

.field private static final POPUP_DISMISS_DELAY:I = 0xbb8

.field private static final SELECTION_HIDDEN:I = 0x0

.field private static final SELECTION_LONGPRESS:I = 0x3

.field private static final SELECTION_PRESSED:I = 0x1

.field private static final SELECTION_SELECTED:I = 0x2

.field private static SINGLE_ALLDAY_HEIGHT:I = 0x0

.field private static SMALL_ROUND_RADIUS:F = 0.0f

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_HSCROLL:I = 0x40

.field private static final TOUCH_MODE_INITIAL_STATE:I = 0x0

.field private static final TOUCH_MODE_VSCROLL:I = 0x20

.field private static final UPDATE_CURRENT_TIME_DELAY:I = 0x493e0

.field private static mCalendarAllDayBackground:I

.field private static mCalendarAmPmLabel:I

.field private static mCalendarDateBannerBackground:I

.field private static mCalendarDateBannerTextColor:I

.field private static mCalendarDateSelected:I

.field private static mCalendarGridAreaBackground:I

.field private static mCalendarGridAreaSelected:I

.field private static mCalendarGridLineHorizontalColor:I

.field private static mCalendarGridLineVerticalColor:I

.field private static mCalendarHourBackground:I

.field private static mCalendarHourLabel:I

.field private static mCalendarHourSelected:I

.field private static mCurrentTimeLineColor:I

.field private static mCurrentTimeMarkerBorderColor:I

.field private static mCurrentTimeMarkerColor:I

.field private static mEventTextColor:I

.field private static mPressedColor:I

.field private static mScale:F

.field private static mSelectedEventTextColor:I

.field private static mSelectionColor:I

.field private static mWeek_saturdayColor:I

.field private static mWeek_sundayColor:I


# instance fields
.field private dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

.field private drawTextSanitizerFilter:Ljava/util/regex/Pattern;

.field private mAllDayHeight:I

.field private mAmString:Ljava/lang/String;

.field private mBannerPlusMargin:I

.field mBaseDate:Landroid/text/format/Time;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBold:Landroid/graphics/Typeface;

.field protected mCalendarApp:Lcom/android/calendar/CalendarApplication;

.field private mCancelCallback:Ljava/lang/Runnable;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mCharWidths:[F

.field private mComputeSelectedEvents:Z

.field private mContext:Landroid/content/Context;

.field private mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

.field private mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

.field private mCurrentTime:Landroid/text/format/Time;

.field private mDateRange:Ljava/lang/String;

.field private mDateStrWidth:I

.field private mDayStrs:[Ljava/lang/String;

.field private mDayStrs2Letter:[Ljava/lang/String;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mDestRect:Landroid/graphics/Rect;

.field private mDetailedView:Ljava/lang/String;

.field private mDismissPopup:Lcom/android/calendar/CalendarView$DismissPopup;

.field protected mDrawTextInEventRect:Z

.field private mEarliestStartHour:[I

.field protected final mEventGeometry:Lcom/android/calendar/EventGeometry;

.field private final mEventLoader:Lcom/android/calendar/EventLoader;

.field private mEventTextAscent:I

.field private mEventTextHeight:I

.field private mEventTextPaint:Landroid/graphics/Paint;

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

.field private mFirstCell:I

.field private mFirstDate:I

.field private mFirstHour:I

.field private mFirstHourOffset:I

.field private mFirstJulianDay:I

.field private mGridAreaHeight:I

.field private mHasAllDayEvent:[Z

.field private mHourStrs:[Ljava/lang/String;

.field private mHoursTextHeight:I

.field private mHoursWidth:I

.field private mIs24HourFormat:Z

.field private mLastJulianDay:I

.field private mLastPopupEventID:J

.field private mLastReloadMillis:J

.field private mMaxAllDayEvents:I

.field private mMaxViewStartY:I

.field private mMonthLength:I

.field protected mNumDays:I

.field private mNumHours:I

.field private mOnFlingCalled:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintBorder:Landroid/graphics/Paint;

.field protected mParentActivity:Lcom/android/calendar/CalendarActivity;

.field private mPath:Landroid/graphics/Path;

.field private mPmString:Ljava/lang/String;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupView:Landroid/view/View;

.field private mPrevBox:Landroid/graphics/Rect;

.field private mPrevSelectedEvent:Lcom/android/calendar/Event;

.field private mPrevSelectionDay:I

.field private mPrevSelectionHour:I

.field private mPrevTitleTextViewText:Ljava/lang/CharSequence;

.field private mPreviousDirection:I

.field private mPreviousDistanceX:I

.field private mRect:Landroid/graphics/Rect;

.field private mRectF:Landroid/graphics/RectF;

.field private mRedrawScreen:Z

.field private mRemeasure:Z

.field protected final mResources:Landroid/content/res/Resources;

.field private mScrollStartY:I

.field private mScrolling:Z

.field private mSelectedEvent:Lcom/android/calendar/Event;

.field private mSelectedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field mSelectionAllDay:Z

.field private mSelectionDay:I

.field private mSelectionHour:I

.field private mSelectionMode:I

.field private mSelectionPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mStartDay:I

.field private mTempEventBundle:Landroid/os/Bundle;

.field private mTimeZone:Ljava/util/TimeZone;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTodayJulianDay:I

.field private mTouchMode:I

.field private mUpdateCurrentTime:Lcom/android/calendar/CalendarView$UpdateCurrentTime;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mViewHeight:I

.field private mViewStartX:I

.field private mViewStartY:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 82
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/CalendarView;->mScale:F

    .line 117
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "access_level"

    aput-object v1, v0, v2

    const-string v1, "ownerAccount"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/CalendarView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 126
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/calendar/CalendarView;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 133
    const/high16 v0, 0x4040

    sput v0, Lcom/android/calendar/CalendarView;->SMALL_ROUND_RADIUS:F

    .line 145
    const/16 v0, 0x32

    sput v0, Lcom/android/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    .line 227
    const/16 v0, 0x14

    sput v0, Lcom/android/calendar/CalendarView;->SINGLE_ALLDAY_HEIGHT:I

    .line 228
    const/16 v0, 0x48

    sput v0, Lcom/android/calendar/CalendarView;->MAX_ALLDAY_HEIGHT:I

    .line 229
    sput v5, Lcom/android/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    .line 230
    const/16 v0, 0x12

    sput v0, Lcom/android/calendar/CalendarView;->MAX_ALLDAY_EVENT_HEIGHT:I

    .line 242
    sput v3, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    .line 243
    sput v2, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    .line 244
    sput v6, Lcom/android/calendar/CalendarView;->CURRENT_TIME_MARKER_INNER_WIDTH:I

    .line 245
    sput v6, Lcom/android/calendar/CalendarView;->CURRENT_TIME_MARKER_HEIGHT:I

    .line 246
    const/16 v0, 0x8

    sput v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_MARKER_WIDTH:I

    .line 247
    sput v2, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    .line 255
    const/16 v0, 0xc

    sput v0, Lcom/android/calendar/CalendarView;->NORMAL_FONT_SIZE:I

    .line 256
    const/16 v0, 0xc

    sput v0, Lcom/android/calendar/CalendarView;->EVENT_TEXT_FONT_SIZE:I

    .line 257
    const/16 v0, 0xe

    sput v0, Lcom/android/calendar/CalendarView;->HOURS_FONT_SIZE:I

    .line 258
    const/16 v0, 0x9

    sput v0, Lcom/android/calendar/CalendarView;->AMPM_FONT_SIZE:I

    .line 259
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/CalendarView;->HEADER_FONT_SIZE:I

    .line 260
    const/16 v0, 0x1b

    sput v0, Lcom/android/calendar/CalendarView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 262
    const/high16 v0, 0x4170

    sput v0, Lcom/android/calendar/CalendarView;->MIN_EVENT_HEIGHT:F

    .line 284
    const-wide/32 v0, 0xdbba0

    sput-wide v0, Lcom/android/calendar/CalendarView;->EVENT_OVERWRAP_MARGIN_TIME:J

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 399
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v0, Lcom/android/calendar/CalendarView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarView$1;-><init>(Lcom/android/calendar/CalendarView;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    .line 147
    new-instance v0, Lcom/android/calendar/CalendarView$ContinueScroll;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/CalendarView$ContinueScroll;-><init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

    .line 154
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/calendar/CalendarView$DayHeader;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    .line 161
    new-instance v0, Lcom/android/calendar/CalendarView$UpdateCurrentTime;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarView$UpdateCurrentTime;-><init>(Lcom/android/calendar/CalendarView;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mUpdateCurrentTime:Lcom/android/calendar/CalendarView$UpdateCurrentTime;

    .line 164
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    .line 173
    sget-object v0, Lcom/android/calendar/CalendarPreferenceActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDetailedView:Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    .line 197
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mRectF:Landroid/graphics/RectF;

    .line 198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSrcRect:Landroid/graphics/Rect;

    .line 199
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDestRect:Landroid/graphics/Rect;

    .line 200
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    .line 201
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    .line 202
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 203
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 204
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPath:Landroid/graphics/Path;

    .line 214
    new-instance v0, Lcom/android/calendar/CalendarView$DismissPopup;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarView$DismissPopup;-><init>(Lcom/android/calendar/CalendarView;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDismissPopup:Lcom/android/calendar/CalendarView$DismissPopup;

    .line 219
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 220
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 327
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    .line 328
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    .line 332
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 339
    const/16 v0, 0x1f4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mCharWidths:[F

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    .line 344
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    .line 350
    new-instance v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/CalendarView$ContextMenuHandler;-><init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    .line 373
    iput v2, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 383
    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 385
    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 1276
    new-instance v0, Lcom/android/calendar/CalendarView$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarView$2;-><init>(Lcom/android/calendar/CalendarView;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mCancelCallback:Ljava/lang/Runnable;

    .line 2486
    const-string v0, "[\t\n],"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    .line 400
    sget v0, Lcom/android/calendar/CalendarView;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/calendar/CalendarView;->mScale:F

    .line 402
    sget v0, Lcom/android/calendar/CalendarView;->mScale:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 403
    sget v0, Lcom/android/calendar/CalendarView;->SINGLE_ALLDAY_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->SINGLE_ALLDAY_HEIGHT:I

    .line 404
    sget v0, Lcom/android/calendar/CalendarView;->MAX_ALLDAY_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->MAX_ALLDAY_HEIGHT:I

    .line 405
    sget v0, Lcom/android/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    .line 406
    sget v0, Lcom/android/calendar/CalendarView;->MAX_ALLDAY_EVENT_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->MAX_ALLDAY_EVENT_HEIGHT:I

    .line 408
    sget v0, Lcom/android/calendar/CalendarView;->NORMAL_FONT_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->NORMAL_FONT_SIZE:I

    .line 409
    sget v0, Lcom/android/calendar/CalendarView;->EVENT_TEXT_FONT_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->EVENT_TEXT_FONT_SIZE:I

    .line 410
    sget v0, Lcom/android/calendar/CalendarView;->HOURS_FONT_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->HOURS_FONT_SIZE:I

    .line 411
    sget v0, Lcom/android/calendar/CalendarView;->AMPM_FONT_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->AMPM_FONT_SIZE:I

    .line 412
    sget v0, Lcom/android/calendar/CalendarView;->HEADER_FONT_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->HEADER_FONT_SIZE:I

    .line 413
    sget v0, Lcom/android/calendar/CalendarView;->MIN_CELL_WIDTH_FOR_TEXT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 414
    sget v0, Lcom/android/calendar/CalendarView;->MIN_EVENT_HEIGHT:F

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/CalendarView;->MIN_EVENT_HEIGHT:F

    .line 416
    sget v0, Lcom/android/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    .line 418
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_MARKER_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_MARKER_HEIGHT:I

    .line 419
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_MARKER_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_MARKER_WIDTH:I

    .line 420
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    .line 421
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    .line 422
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_MARKER_INNER_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_MARKER_INNER_WIDTH:I

    .line 423
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    .line 425
    sget v0, Lcom/android/calendar/CalendarView;->SMALL_ROUND_RADIUS:F

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/CalendarView;->SMALL_ROUND_RADIUS:F

    .line 429
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/CalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    .line 430
    iget-object v0, p1, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 431
    new-instance v0, Lcom/android/calendar/EventGeometry;

    invoke-direct {v0}, Lcom/android/calendar/EventGeometry;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 432
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    sget v1, Lcom/android/calendar/CalendarView;->MIN_EVENT_HEIGHT:F

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setMinEventHeight(F)V

    .line 433
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    invoke-virtual {v0, v3}, Lcom/android/calendar/EventGeometry;->setHourGap(F)V

    .line 434
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    .line 435
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarApplication;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mCalendarApp:Lcom/android/calendar/CalendarApplication;

    .line 436
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v0, p1, v2}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 437
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/CalendarView;->mLastPopupEventID:J

    .line 439
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;->init(Landroid/content/Context;)V

    .line 440
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/CalendarView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/CalendarView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/calendar/CalendarView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/calendar/CalendarView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/DeleteEventHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/calendar/CalendarView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    return p1
.end method

.method static synthetic access$1512(Lcom/android/calendar/CalendarView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$1520(Lcom/android/calendar/CalendarView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/CalendarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->computeFirstHour()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/calendar/CalendarView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/calendar/CalendarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->resetSelectedHour()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/calendar/CalendarView;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/CalendarView;Ljava/util/TimeZone;)Ljava/util/TimeZone;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mTimeZone:Ljava/util/TimeZone;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/CalendarView$UpdateCurrentTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mUpdateCurrentTime:Lcom/android/calendar/CalendarView$UpdateCurrentTime;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/calendar/CalendarView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/calendar/CalendarView;->mTodayJulianDay:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/calendar/CalendarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->recalc()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/CalendarView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/CalendarView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/calendar/CalendarView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/calendar/CalendarView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    return p1
.end method

.method private adjustHourSelection()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x18

    const/16 v2, 0x17

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1217
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-gez v1, :cond_0

    .line 1218
    iput v4, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1219
    iget v1, p0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    if-lez v1, :cond_0

    .line 1220
    iput-object v6, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1221
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    .line 1225
    :cond_0
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-le v1, v2, :cond_1

    .line 1226
    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1231
    :cond_1
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_4

    .line 1239
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v0, v1, v2

    .line 1240
    .local v0, daynum:I
    iget v1, p0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    .line 1242
    iput-object v6, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1243
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    .line 1244
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1270
    .end local v0           #daynum:I
    :cond_2
    :goto_0
    return-void

    .line 1248
    .restart local v0       #daynum:I
    :cond_3
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-lez v1, :cond_4

    .line 1249
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1250
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 1251
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    if-gez v1, :cond_2

    .line 1252
    iput v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_0

    .line 1258
    .end local v0           #daynum:I
    :cond_4
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v2, v3

    const/4 v3, 0x3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_2

    .line 1259
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    sub-int v2, v5, v2

    if-ge v1, v2, :cond_5

    .line 1260
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1261
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 1262
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_2

    .line 1263
    iget v1, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_0

    .line 1266
    :cond_5
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    sub-int v2, v5, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    if-lez v1, :cond_2

    .line 1267
    iget v1, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_0
.end method

.method private computeAllDayNeighbors()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2017
    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2018
    .local v3, len:I
    if-eqz v3, :cond_0

    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v11, :cond_1

    .line 2072
    :cond_0
    :goto_0
    return-void

    .line 2023
    :cond_1
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 2024
    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 2025
    .local v0, ev:Lcom/android/calendar/Event;
    iput-object v12, v0, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 2026
    iput-object v12, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 2027
    iput-object v12, v0, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 2028
    iput-object v12, v0, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 2023
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2038
    .end local v0           #ev:Lcom/android/calendar/Event;
    :cond_2
    const/4 v10, -0x1

    .line 2039
    .local v10, startPosition:I
    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v11, v11, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v11, :cond_3

    .line 2040
    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    invoke-virtual {v11}, Lcom/android/calendar/Event;->getColumn()I

    move-result v10

    .line 2042
    :cond_3
    const/4 v4, -0x1

    .line 2043
    .local v4, maxPosition:I
    const/4 v9, 0x0

    .line 2044
    .local v9, startEvent:Lcom/android/calendar/Event;
    const/4 v5, 0x0

    .line 2045
    .local v5, maxPositionEvent:Lcom/android/calendar/Event;
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_a

    .line 2046
    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 2047
    .restart local v0       #ev:Lcom/android/calendar/Event;
    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v8

    .line 2048
    .local v8, position:I
    if-ne v8, v10, :cond_6

    .line 2049
    move-object v9, v0

    .line 2054
    :cond_4
    :goto_3
    const/4 v2, 0x0

    .local v2, jj:I
    :goto_4
    if-ge v2, v3, :cond_9

    .line 2055
    if-ne v2, v1, :cond_7

    .line 2054
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2050
    .end local v2           #jj:I
    :cond_6
    if-le v8, v4, :cond_4

    .line 2051
    move-object v5, v0

    .line 2052
    move v4, v8

    goto :goto_3

    .line 2058
    .restart local v2       #jj:I
    :cond_7
    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/Event;

    .line 2059
    .local v6, neighbor:Lcom/android/calendar/Event;
    invoke-virtual {v6}, Lcom/android/calendar/Event;->getColumn()I

    move-result v7

    .line 2060
    .local v7, neighborPosition:I
    const/4 v11, 0x1

    sub-int v11, v8, v11

    if-ne v7, v11, :cond_8

    .line 2061
    iput-object v6, v0, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    goto :goto_5

    .line 2062
    :cond_8
    add-int/lit8 v11, v8, 0x1

    if-ne v7, v11, :cond_5

    .line 2063
    iput-object v6, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    goto :goto_5

    .line 2045
    .end local v6           #neighbor:Lcom/android/calendar/Event;
    .end local v7           #neighborPosition:I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2067
    .end local v0           #ev:Lcom/android/calendar/Event;
    .end local v2           #jj:I
    .end local v8           #position:I
    :cond_a
    if-eqz v9, :cond_b

    .line 2068
    iput-object v9, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto :goto_0

    .line 2070
    :cond_b
    iput-object v5, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto :goto_0
.end method

.method private computeFirstHour()V
    .locals 2

    .prologue
    .line 1212
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1213
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    .line 1214
    return-void
.end method

.method private computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 9
    .parameter "currentMax"
    .parameter "strings"
    .parameter "p"

    .prologue
    .line 1870
    const/4 v3, 0x0

    .line 1872
    .local v3, maxWidthF:F
    array-length v1, p2

    .line 1873
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1874
    aget-object v5, p2, v0

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 1875
    .local v4, width:F
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1873
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1877
    .end local v4           #width:F
    :cond_0
    float-to-double v5, v3

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v2, v5

    .line 1878
    .local v2, maxWidth:I
    if-ge v2, p1, :cond_1

    .line 1879
    move v2, p1

    .line 1881
    :cond_1
    return v2
.end method

.method private computeNeighbors()V
    .locals 45

    .prologue
    .line 2143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 2144
    .local v20, len:I
    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    if-eqz v43, :cond_1

    .line 2425
    :cond_0
    :goto_0
    return-void

    .line 2149
    :cond_1
    const/4 v15, 0x0

    .local v15, ii:I
    :goto_1
    move v0, v15

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 2150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/calendar/Event;

    .line 2151
    .local v14, ev:Lcom/android/calendar/Event;
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object v1, v14

    iput-object v0, v1, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 2152
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object v1, v14

    iput-object v0, v1, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 2153
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object v1, v14

    iput-object v0, v1, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 2154
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object v1, v14

    iput-object v0, v1, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 2149
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2157
    .end local v14           #ev:Lcom/android/calendar/Event;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/calendar/Event;

    .line 2158
    .local v36, startEvent:Lcom/android/calendar/Event;
    const v37, 0x186a0

    .line 2159
    .local v37, startEventDistance1:I
    const v38, 0x186a0

    .line 2160
    .local v38, startEventDistance2:I
    const/16 v30, 0x0

    .line 2165
    .local v30, prevLocation:I
    const/16 v28, 0x0

    .line 2166
    .local v28, prevCenter:I
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->getCurrentSelectionPosition()Landroid/graphics/Rect;

    move-result-object v3

    .line 2167
    .local v3, box:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    if-eqz v43, :cond_f

    .line 2168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v32, v0

    .line 2169
    .local v32, prevTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v27, v0

    .line 2170
    .local v27, prevBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v29, v0

    .line 2171
    .local v29, prevLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v31, v0

    .line 2175
    .local v31, prevRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v27

    move/from16 v1, v43

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v31

    move/from16 v1, v43

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    move/from16 v0, v29

    move/from16 v1, v43

    if-lt v0, v1, :cond_d

    .line 2177
    :cond_3
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 2178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 2179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    .line 2180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    .line 2181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    .line 2200
    :cond_4
    :goto_2
    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    move/from16 v0, v29

    move/from16 v1, v43

    if-lt v0, v1, :cond_10

    .line 2202
    const/16 v30, 0x8

    .line 2203
    add-int v43, v32, v27

    div-int/lit8 v28, v43, 0x2

    .line 2221
    :cond_5
    :goto_3
    const/4 v15, 0x0

    :goto_4
    move v0, v15

    move/from16 v1, v20

    if-ge v0, v1, :cond_32

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/calendar/Event;

    .line 2224
    .restart local v14       #ev:Lcom/android/calendar/Event;
    move-object v0, v14

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v39, v0

    .line 2225
    .local v39, startTime:I
    iget v13, v14, Lcom/android/calendar/Event;->endTime:I

    .line 2226
    .local v13, endTime:I
    move-object v0, v14

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2227
    .local v17, left:I
    move-object v0, v14

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v33, v0

    .line 2228
    .local v33, right:I
    move-object v0, v14

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v40, v0

    .line 2229
    .local v40, top:I
    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v40

    move/from16 v1, v43

    if-ge v0, v1, :cond_6

    .line 2230
    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v40, v0

    .line 2232
    :cond_6
    move-object v0, v14

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move v2, v0

    .line 2233
    .local v2, bottom:I
    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move v0, v2

    move/from16 v1, v43

    if-le v0, v1, :cond_7

    .line 2234
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 2247
    :cond_7
    const/16 v41, 0x2710

    .line 2248
    .local v41, upDistanceMin:I
    const/16 v11, 0x2710

    .line 2249
    .local v11, downDistanceMin:I
    const/16 v18, 0x2710

    .line 2250
    .local v18, leftDistanceMin:I
    const/16 v34, 0x2710

    .line 2251
    .local v34, rightDistanceMin:I
    const/16 v42, 0x0

    .line 2252
    .local v42, upEvent:Lcom/android/calendar/Event;
    const/4 v12, 0x0

    .line 2253
    .local v12, downEvent:Lcom/android/calendar/Event;
    const/16 v19, 0x0

    .line 2254
    .local v19, leftEvent:Lcom/android/calendar/Event;
    const/16 v35, 0x0

    .line 2258
    .local v35, rightEvent:Lcom/android/calendar/Event;
    const/4 v9, 0x0

    .line 2259
    .local v9, distance1:I
    const/4 v10, 0x0

    .line 2260
    .local v10, distance2:I
    const/16 v43, 0x1

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_14

    .line 2261
    move/from16 v0, v17

    move/from16 v1, v28

    if-lt v0, v1, :cond_13

    .line 2262
    sub-int v9, v17, v28

    .line 2266
    :cond_8
    :goto_5
    sub-int v10, v40, v27

    .line 2289
    :cond_9
    :goto_6
    move v0, v9

    move/from16 v1, v37

    if-lt v0, v1, :cond_a

    move v0, v9

    move/from16 v1, v37

    if-ne v0, v1, :cond_b

    move v0, v10

    move/from16 v1, v38

    if-ge v0, v1, :cond_b

    .line 2291
    :cond_a
    move-object/from16 v36, v14

    .line 2292
    move/from16 v37, v9

    .line 2293
    move/from16 v38, v10

    .line 2298
    :cond_b
    const/16 v16, 0x0

    .local v16, jj:I
    :goto_7
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_31

    .line 2299
    move/from16 v0, v16

    move v1, v15

    if-ne v0, v1, :cond_1d

    .line 2298
    :cond_c
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 2184
    .end local v2           #bottom:I
    .end local v9           #distance1:I
    .end local v10           #distance2:I
    .end local v11           #downDistanceMin:I
    .end local v12           #downEvent:Lcom/android/calendar/Event;
    .end local v13           #endTime:I
    .end local v14           #ev:Lcom/android/calendar/Event;
    .end local v16           #jj:I
    .end local v17           #left:I
    .end local v18           #leftDistanceMin:I
    .end local v19           #leftEvent:Lcom/android/calendar/Event;
    .end local v33           #right:I
    .end local v34           #rightDistanceMin:I
    .end local v35           #rightEvent:Lcom/android/calendar/Event;
    .end local v39           #startTime:I
    .end local v40           #top:I
    .end local v41           #upDistanceMin:I
    .end local v42           #upEvent:Lcom/android/calendar/Event;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_e

    .line 2185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 2187
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v27

    move/from16 v1, v43

    if-le v0, v1, :cond_4

    .line 2188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    goto/16 :goto_2

    .line 2193
    .end local v27           #prevBottom:I
    .end local v29           #prevLeft:I
    .end local v31           #prevRight:I
    .end local v32           #prevTop:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 2194
    .restart local v32       #prevTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    .line 2195
    .restart local v27       #prevBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    .line 2196
    .restart local v29       #prevLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    .restart local v31       #prevRight:I
    goto/16 :goto_2

    .line 2204
    :cond_10
    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v31

    move/from16 v1, v43

    if-gt v0, v1, :cond_11

    .line 2206
    const/16 v30, 0x4

    .line 2207
    add-int v43, v32, v27

    div-int/lit8 v28, v43, 0x2

    goto/16 :goto_3

    .line 2208
    :cond_11
    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v27

    move/from16 v1, v43

    if-gt v0, v1, :cond_12

    .line 2210
    const/16 v30, 0x1

    .line 2211
    add-int v43, v29, v31

    div-int/lit8 v28, v43, 0x2

    goto/16 :goto_3

    .line 2212
    :cond_12
    move-object v0, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v32

    move/from16 v1, v43

    if-lt v0, v1, :cond_5

    .line 2214
    const/16 v30, 0x2

    .line 2215
    add-int v43, v29, v31

    div-int/lit8 v28, v43, 0x2

    goto/16 :goto_3

    .line 2263
    .restart local v2       #bottom:I
    .restart local v9       #distance1:I
    .restart local v10       #distance2:I
    .restart local v11       #downDistanceMin:I
    .restart local v12       #downEvent:Lcom/android/calendar/Event;
    .restart local v13       #endTime:I
    .restart local v14       #ev:Lcom/android/calendar/Event;
    .restart local v17       #left:I
    .restart local v18       #leftDistanceMin:I
    .restart local v19       #leftEvent:Lcom/android/calendar/Event;
    .restart local v33       #right:I
    .restart local v34       #rightDistanceMin:I
    .restart local v35       #rightEvent:Lcom/android/calendar/Event;
    .restart local v39       #startTime:I
    .restart local v40       #top:I
    .restart local v41       #upDistanceMin:I
    .restart local v42       #upEvent:Lcom/android/calendar/Event;
    :cond_13
    move/from16 v0, v33

    move/from16 v1, v28

    if-gt v0, v1, :cond_8

    .line 2264
    sub-int v9, v28, v33

    goto/16 :goto_5

    .line 2267
    :cond_14
    const/16 v43, 0x2

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_17

    .line 2268
    move/from16 v0, v17

    move/from16 v1, v28

    if-lt v0, v1, :cond_16

    .line 2269
    sub-int v9, v17, v28

    .line 2273
    :cond_15
    :goto_9
    sub-int v10, v32, v2

    goto/16 :goto_6

    .line 2270
    :cond_16
    move/from16 v0, v33

    move/from16 v1, v28

    if-gt v0, v1, :cond_15

    .line 2271
    sub-int v9, v28, v33

    goto :goto_9

    .line 2274
    :cond_17
    const/16 v43, 0x4

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_1a

    .line 2275
    move v0, v2

    move/from16 v1, v28

    if-gt v0, v1, :cond_19

    .line 2276
    sub-int v9, v28, v2

    .line 2280
    :cond_18
    :goto_a
    sub-int v10, v17, v31

    goto/16 :goto_6

    .line 2277
    :cond_19
    move/from16 v0, v40

    move/from16 v1, v28

    if-lt v0, v1, :cond_18

    .line 2278
    sub-int v9, v40, v28

    goto :goto_a

    .line 2281
    :cond_1a
    const/16 v43, 0x8

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_9

    .line 2282
    move v0, v2

    move/from16 v1, v28

    if-gt v0, v1, :cond_1c

    .line 2283
    sub-int v9, v28, v2

    .line 2287
    :cond_1b
    :goto_b
    sub-int v10, v29, v33

    goto/16 :goto_6

    .line 2284
    :cond_1c
    move/from16 v0, v40

    move/from16 v1, v28

    if-lt v0, v1, :cond_1b

    .line 2285
    sub-int v9, v40, v28

    goto :goto_b

    .line 2302
    .restart local v16       #jj:I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/calendar/Event;

    .line 2303
    .local v21, neighbor:Lcom/android/calendar/Event;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v24, v0

    .line 2304
    .local v24, neighborLeft:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v25, v0

    .line 2305
    .local v25, neighborRight:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v43, v0

    move/from16 v0, v43

    move/from16 v1, v39

    if-gt v0, v1, :cond_25

    .line 2308
    move/from16 v0, v24

    move/from16 v1, v33

    if-ge v0, v1, :cond_1e

    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_1e

    .line 2309
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v43, v0

    sub-int v8, v39, v43

    .line 2310
    .local v8, distance:I
    move v0, v8

    move/from16 v1, v41

    if-ge v0, v1, :cond_20

    .line 2311
    move/from16 v41, v8

    .line 2312
    move-object/from16 v42, v21

    .line 2369
    .end local v8           #distance:I
    :cond_1e
    :goto_c
    move/from16 v0, v24

    move/from16 v1, v33

    if-lt v0, v1, :cond_2d

    .line 2372
    add-int v43, v40, v2

    div-int/lit8 v4, v43, 0x2

    .line 2373
    .local v4, center:I
    const/4 v8, 0x0

    .line 2374
    .restart local v8       #distance:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2375
    .local v22, neighborBottom:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v26, v0

    .line 2376
    .local v26, neighborTop:I
    move/from16 v0, v22

    move v1, v4

    if-gt v0, v1, :cond_2b

    .line 2377
    sub-int v8, v4, v22

    .line 2381
    :cond_1f
    :goto_d
    move v0, v8

    move/from16 v1, v34

    if-ge v0, v1, :cond_2c

    .line 2382
    move/from16 v34, v8

    .line 2383
    move-object/from16 v35, v21

    goto/16 :goto_8

    .line 2313
    .end local v4           #center:I
    .end local v22           #neighborBottom:I
    .end local v26           #neighborTop:I
    :cond_20
    move v0, v8

    move/from16 v1, v41

    if-ne v0, v1, :cond_1e

    .line 2314
    add-int v43, v17, v33

    div-int/lit8 v4, v43, 0x2

    .line 2315
    .restart local v4       #center:I
    const/4 v5, 0x0

    .line 2316
    .local v5, currentDistance:I
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move v6, v0

    .line 2317
    .local v6, currentLeft:I
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move v7, v0

    .line 2318
    .local v7, currentRight:I
    if-gt v7, v4, :cond_23

    .line 2319
    sub-int v5, v4, v7

    .line 2324
    :cond_21
    :goto_e
    const/16 v23, 0x0

    .line 2325
    .local v23, neighborDistance:I
    move/from16 v0, v25

    move v1, v4

    if-gt v0, v1, :cond_24

    .line 2326
    sub-int v23, v4, v25

    .line 2330
    :cond_22
    :goto_f
    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_1e

    .line 2331
    move/from16 v41, v8

    .line 2332
    move-object/from16 v42, v21

    goto :goto_c

    .line 2320
    .end local v23           #neighborDistance:I
    :cond_23
    if-lt v6, v4, :cond_21

    .line 2321
    sub-int v5, v6, v4

    goto :goto_e

    .line 2327
    .restart local v23       #neighborDistance:I
    :cond_24
    move/from16 v0, v24

    move v1, v4

    if-lt v0, v1, :cond_22

    .line 2328
    sub-int v23, v24, v4

    goto :goto_f

    .line 2336
    .end local v4           #center:I
    .end local v5           #currentDistance:I
    .end local v6           #currentLeft:I
    .end local v7           #currentRight:I
    .end local v8           #distance:I
    .end local v23           #neighborDistance:I
    :cond_25
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v43, v0

    move/from16 v0, v43

    move v1, v13

    if-lt v0, v1, :cond_1e

    .line 2339
    move/from16 v0, v24

    move/from16 v1, v33

    if-ge v0, v1, :cond_1e

    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_1e

    .line 2340
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v43, v0

    sub-int v8, v43, v13

    .line 2341
    .restart local v8       #distance:I
    if-ge v8, v11, :cond_26

    .line 2342
    move v11, v8

    .line 2343
    move-object/from16 v12, v21

    goto/16 :goto_c

    .line 2344
    :cond_26
    if-ne v8, v11, :cond_1e

    .line 2345
    add-int v43, v17, v33

    div-int/lit8 v4, v43, 0x2

    .line 2346
    .restart local v4       #center:I
    const/4 v5, 0x0

    .line 2347
    .restart local v5       #currentDistance:I
    move-object v0, v12

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move v6, v0

    .line 2348
    .restart local v6       #currentLeft:I
    move-object v0, v12

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move v7, v0

    .line 2349
    .restart local v7       #currentRight:I
    if-gt v7, v4, :cond_29

    .line 2350
    sub-int v5, v4, v7

    .line 2355
    :cond_27
    :goto_10
    const/16 v23, 0x0

    .line 2356
    .restart local v23       #neighborDistance:I
    move/from16 v0, v25

    move v1, v4

    if-gt v0, v1, :cond_2a

    .line 2357
    sub-int v23, v4, v25

    .line 2361
    :cond_28
    :goto_11
    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_1e

    .line 2362
    move v11, v8

    .line 2363
    move-object/from16 v12, v21

    goto/16 :goto_c

    .line 2351
    .end local v23           #neighborDistance:I
    :cond_29
    if-lt v6, v4, :cond_27

    .line 2352
    sub-int v5, v6, v4

    goto :goto_10

    .line 2358
    .restart local v23       #neighborDistance:I
    :cond_2a
    move/from16 v0, v24

    move v1, v4

    if-lt v0, v1, :cond_28

    .line 2359
    sub-int v23, v24, v4

    goto :goto_11

    .line 2378
    .end local v5           #currentDistance:I
    .end local v6           #currentLeft:I
    .end local v7           #currentRight:I
    .end local v23           #neighborDistance:I
    .restart local v22       #neighborBottom:I
    .restart local v26       #neighborTop:I
    :cond_2b
    move/from16 v0, v26

    move v1, v4

    if-lt v0, v1, :cond_1f

    .line 2379
    sub-int v8, v26, v4

    goto/16 :goto_d

    .line 2384
    :cond_2c
    move v0, v8

    move/from16 v1, v34

    if-ne v0, v1, :cond_c

    .line 2386
    sub-int v23, v24, v33

    .line 2387
    .restart local v23       #neighborDistance:I
    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    sub-int v5, v43, v33

    .line 2388
    .restart local v5       #currentDistance:I
    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_c

    .line 2389
    move/from16 v34, v8

    .line 2390
    move-object/from16 v35, v21

    goto/16 :goto_8

    .line 2393
    .end local v4           #center:I
    .end local v5           #currentDistance:I
    .end local v8           #distance:I
    .end local v22           #neighborBottom:I
    .end local v23           #neighborDistance:I
    .end local v26           #neighborTop:I
    :cond_2d
    move/from16 v0, v25

    move/from16 v1, v17

    if-gt v0, v1, :cond_c

    .line 2396
    add-int v43, v40, v2

    div-int/lit8 v4, v43, 0x2

    .line 2397
    .restart local v4       #center:I
    const/4 v8, 0x0

    .line 2398
    .restart local v8       #distance:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2399
    .restart local v22       #neighborBottom:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v26, v0

    .line 2400
    .restart local v26       #neighborTop:I
    move/from16 v0, v22

    move v1, v4

    if-gt v0, v1, :cond_2f

    .line 2401
    sub-int v8, v4, v22

    .line 2405
    :cond_2e
    :goto_12
    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_30

    .line 2406
    move/from16 v18, v8

    .line 2407
    move-object/from16 v19, v21

    goto/16 :goto_8

    .line 2402
    :cond_2f
    move/from16 v0, v26

    move v1, v4

    if-lt v0, v1, :cond_2e

    .line 2403
    sub-int v8, v26, v4

    goto :goto_12

    .line 2408
    :cond_30
    move v0, v8

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 2410
    sub-int v23, v17, v25

    .line 2411
    .restart local v23       #neighborDistance:I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    sub-int v5, v17, v43

    .line 2412
    .restart local v5       #currentDistance:I
    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_c

    .line 2413
    move/from16 v18, v8

    .line 2414
    move-object/from16 v19, v21

    goto/16 :goto_8

    .line 2419
    .end local v4           #center:I
    .end local v5           #currentDistance:I
    .end local v8           #distance:I
    .end local v21           #neighbor:Lcom/android/calendar/Event;
    .end local v22           #neighborBottom:I
    .end local v23           #neighborDistance:I
    .end local v24           #neighborLeft:I
    .end local v25           #neighborRight:I
    .end local v26           #neighborTop:I
    :cond_31
    move-object/from16 v0, v42

    move-object v1, v14

    iput-object v0, v1, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 2420
    iput-object v12, v14, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 2421
    move-object/from16 v0, v19

    move-object v1, v14

    iput-object v0, v1, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 2422
    move-object/from16 v0, v35

    move-object v1, v14

    iput-object v0, v1, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 2221
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 2424
    .end local v2           #bottom:I
    .end local v9           #distance1:I
    .end local v10           #distance2:I
    .end local v11           #downDistanceMin:I
    .end local v12           #downEvent:Lcom/android/calendar/Event;
    .end local v13           #endTime:I
    .end local v14           #ev:Lcom/android/calendar/Event;
    .end local v16           #jj:I
    .end local v17           #left:I
    .end local v18           #leftDistanceMin:I
    .end local v19           #leftEvent:Lcom/android/calendar/Event;
    .end local v33           #right:I
    .end local v34           #rightDistanceMin:I
    .end local v35           #rightEvent:Lcom/android/calendar/Event;
    .end local v39           #startTime:I
    .end local v40           #top:I
    .end local v41           #upDistanceMin:I
    .end local v42           #upEvent:Lcom/android/calendar/Event;
    :cond_32
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto/16 :goto_0
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 1528
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    .line 1529
    .local v5, p:Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    .line 1530
    .local v7, r:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    add-int/2addr v0, v3

    add-int/lit8 v9, v0, 0x1

    .line 1534
    .local v9, lineY:I
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/CalendarView;->drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1535
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/CalendarView;->drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1538
    iget v2, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    .line 1539
    .local v2, x:I
    iget v0, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v13, v0, 0x1

    .line 1540
    .local v13, deltaX:I
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    .line 1541
    .local v1, cell:I
    const/4 v12, 0x0

    .local v12, day:I
    :goto_0
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ge v12, v0, :cond_1

    .line 1542
    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/CalendarView;->drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1544
    iget v0, p0, Lcom/android/calendar/CalendarView;->mTodayJulianDay:I

    if-ne v1, v0, :cond_0

    .line 1546
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    if-lt v9, v0, :cond_0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    add-int/2addr v0, v3

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    if-ge v9, v0, :cond_0

    .line 1548
    invoke-direct {p0, v9, p1, v5}, Lcom/android/calendar/CalendarView;->drawCurrentTimeMarker(ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    move-object v6, p0

    move v8, v2

    move-object v10, p1

    move-object v11, v5

    .line 1549
    invoke-direct/range {v6 .. v11}, Lcom/android/calendar/CalendarView;->drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1552
    :cond_0
    add-int/2addr v2, v13

    .line 1541
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1554
    :cond_1
    return-void
.end method

.method private drawAfterScroll(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 1392
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    .line 1393
    .local v5, p:Landroid/graphics/Paint;
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    .line 1395
    .local v3, r:Landroid/graphics/Rect;
    iget v0, p0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    if-eqz v0, :cond_0

    .line 1396
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/CalendarView;->drawAllDayEvents(IILandroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1397
    invoke-direct {p0, v3, p1, v5}, Lcom/android/calendar/CalendarView;->drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1400
    :cond_0
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 1401
    invoke-direct {p0, v3, p1, v5}, Lcom/android/calendar/CalendarView;->drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1405
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mIs24HourFormat:Z

    if-nez v0, :cond_2

    .line 1406
    invoke-direct {p0, p1, v5}, Lcom/android/calendar/CalendarView;->drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1411
    :cond_2
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1412
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->updateEventDetails()V

    .line 1414
    :cond_3
    return-void
.end method

.method private drawAllDayEvents(IILandroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 36
    .parameter "firstDay"
    .parameter "numDays"
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1903
    sget v5, Lcom/android/calendar/CalendarView;->NORMAL_FONT_SIZE:I

    int-to-float v5, v5

    move-object/from16 v0, p5

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1904
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object v14, v0

    .line 1908
    .local v14, eventTextPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1909
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mAllDayHeight:I

    move v6, v0

    add-int/2addr v5, v6

    sget v6, Lcom/android/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1910
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1911
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1912
    sget v5, Lcom/android/calendar/CalendarView;->mCalendarAllDayBackground:I

    move-object/from16 v0, p5

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1913
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1916
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1917
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1918
    sget v5, Lcom/android/calendar/CalendarView;->mCalendarGridAreaBackground:I

    move-object/from16 v0, p5

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1919
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1922
    sget v5, Lcom/android/calendar/CalendarView;->mCalendarGridLineVerticalColor:I

    move-object/from16 v0, p5

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1923
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1924
    const/4 v5, 0x0

    move-object/from16 v0, p5

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1925
    const/4 v5, 0x0

    move-object/from16 v0, p5

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1926
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    int-to-float v7, v5

    .line 1927
    .local v7, startY:F
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    int-to-float v9, v5

    .line 1928
    .local v9, stopY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    int-to-float v0, v0

    move/from16 v23, v0

    .line 1929
    .local v23, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v6, v0

    add-int/2addr v5, v6

    int-to-float v6, v5

    .line 1930
    .local v6, x:F
    const/16 v21, 0x0

    .local v21, day:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v5, v0

    move/from16 v0, v21

    move v1, v5

    if-gt v0, v1, :cond_0

    move-object/from16 v5, p4

    move v8, v6

    move-object/from16 v10, p5

    .line 1931
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1932
    add-float v6, v6, v23

    .line 1930
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 1934
    :cond_0
    const/4 v5, 0x1

    move-object/from16 v0, p5

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1935
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1937
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    move v5, v0

    sget v6, Lcom/android/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    .end local v6           #x:F
    add-int v35, v5, v6

    .line 1938
    .local v35, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move v5, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1939
    .local v16, left:F
    add-int v5, p1, p2

    const/4 v6, 0x1

    sub-int v30, v5, v6

    .line 1940
    .local v30, lastDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 1941
    .local v27, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 1942
    .local v31, numEvents:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mAllDayHeight:I

    move v5, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v24, v0

    .line 1943
    .local v24, drawHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    move v5, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v32, v0

    .line 1944
    .local v32, numRectangles:F
    const/16 v29, 0x0

    .local v29, i:I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    .line 1945
    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/calendar/Event;

    .line 1946
    .local v11, event:Lcom/android/calendar/Event;
    iget-boolean v5, v11, Lcom/android/calendar/Event;->allDay:Z

    if-nez v5, :cond_2

    .line 1944
    :cond_1
    :goto_2
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 1948
    :cond_2
    move-object v0, v11

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 v33, v0

    .line 1949
    .local v33, startDay:I
    move-object v0, v11

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move/from16 v25, v0

    .line 1950
    .local v25, endDay:I
    move/from16 v0, v33

    move/from16 v1, v30

    if-gt v0, v1, :cond_1

    move/from16 v0, v25

    move/from16 v1, p1

    if-lt v0, v1, :cond_1

    .line 1952
    move/from16 v0, v33

    move/from16 v1, p1

    if-ge v0, v1, :cond_3

    .line 1953
    move/from16 v33, p1

    .line 1954
    :cond_3
    move/from16 v0, v25

    move/from16 v1, v30

    if-le v0, v1, :cond_4

    .line 1955
    move/from16 v25, v30

    .line 1956
    :cond_4
    sub-int v34, v33, p1

    .line 1957
    .local v34, startIndex:I
    sub-int v26, v25, p1

    .line 1958
    .local v26, endIndex:I
    div-float v28, v24, v32

    .line 1961
    .local v28, height:F
    sget v5, Lcom/android/calendar/CalendarView;->MAX_ALLDAY_EVENT_HEIGHT:I

    int-to-float v5, v5

    cmpl-float v5, v28, v5

    if-lez v5, :cond_5

    .line 1962
    sget v5, Lcom/android/calendar/CalendarView;->MAX_ALLDAY_EVENT_HEIGHT:I

    move v0, v5

    int-to-float v0, v0

    move/from16 v28, v0

    .line 1967
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    mul-int v5, v5, v34

    int-to-float v5, v5

    add-float v5, v5, v16

    const/high16 v6, 0x4000

    add-float/2addr v5, v6

    iput v5, v11, Lcom/android/calendar/Event;->left:F

    .line 1968
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    mul-int v5, v5, v26

    int-to-float v5, v5

    add-float v5, v5, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v6, v0

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x3f80

    sub-float/2addr v5, v6

    iput v5, v11, Lcom/android/calendar/Event;->right:F

    .line 1969
    move/from16 v0, v35

    int-to-float v0, v0

    move v5, v0

    invoke-virtual {v11}, Lcom/android/calendar/Event;->getColumn()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v28

    add-float/2addr v5, v6

    iput v5, v11, Lcom/android/calendar/Event;->top:F

    .line 1972
    iget v5, v11, Lcom/android/calendar/Event;->top:F

    const v6, 0x3f666666

    mul-float v6, v6, v28

    add-float/2addr v5, v6

    iput v5, v11, Lcom/android/calendar/Event;->bottom:F

    .line 1974
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarView;->drawAllDayEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v12

    .line 1975
    .local v12, rf:Landroid/graphics/RectF;
    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v13, p4

    invoke-direct/range {v10 .. v15}, Lcom/android/calendar/CalendarView;->drawEventText(Lcom/android/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 1978
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    move v5, v0

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    move v5, v0

    if-eqz v5, :cond_1

    .line 1979
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move v5, v0

    move/from16 v0, v33

    move v1, v5

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move v5, v0

    move/from16 v0, v25

    move v1, v5

    if-lt v0, v1, :cond_1

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1985
    .end local v11           #event:Lcom/android/calendar/Event;
    .end local v12           #rf:Landroid/graphics/RectF;
    .end local v25           #endDay:I
    .end local v26           #endIndex:I
    .end local v28           #height:F
    .end local v33           #startDay:I
    .end local v34           #startIndex:I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    move v5, v0

    if-eqz v5, :cond_9

    .line 1988
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->computeAllDayNeighbors()V

    .line 1989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v5, v0

    if-eqz v5, :cond_7

    .line 1990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v11, v0

    .line 1991
    .restart local v11       #event:Lcom/android/calendar/Event;
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarView;->drawAllDayEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v12

    .line 1992
    .restart local v12       #rf:Landroid/graphics/RectF;
    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v13, p4

    invoke-direct/range {v10 .. v15}, Lcom/android/calendar/CalendarView;->drawEventText(Lcom/android/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 1996
    .end local v11           #event:Lcom/android/calendar/Event;
    .end local v12           #rf:Landroid/graphics/RectF;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1997
    .local v17, top:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mAllDayHeight:I

    move v5, v0

    int-to-float v5, v5

    add-float v5, v5, v17

    sget v6, Lcom/android/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x3f80

    sub-float v19, v5, v6

    .line 1998
    .local v19, bottom:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    move v6, v0

    sub-int v22, v5, v6

    .line 1999
    .local v22, daynum:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    mul-int v6, v6, v22

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    int-to-float v0, v0

    move/from16 v16, v0

    .line 2000
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v5, v0

    int-to-float v5, v5

    add-float v5, v5, v16

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    const/high16 v6, 0x3f80

    sub-float v18, v5, v6

    .line 2001
    .local v18, right:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 2003
    const/high16 v5, 0x3f80

    sub-float v18, v18, v5

    .line 2005
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPath:Landroid/graphics/Path;

    move-object v15, v0

    .line 2006
    .local v15, path:Landroid/graphics/Path;
    invoke-virtual {v15}, Landroid/graphics/Path;->reset()V

    .line 2007
    sget-object v20, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p4

    move-object v1, v15

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2012
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarView;->saveSelectionPosition(FFFF)V

    .line 2014
    .end local v7           #startY:F
    .end local v15           #path:Landroid/graphics/Path;
    .end local v17           #top:F
    .end local v18           #right:F
    .end local v19           #bottom:F
    .end local v22           #daynum:I
    :cond_9
    return-void
.end method

.method private drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/16 v5, 0xc

    .line 1479
    sget v3, Lcom/android/calendar/CalendarView;->mCalendarAmPmLabel:I

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1480
    sget v3, Lcom/android/calendar/CalendarView;->AMPM_FONT_SIZE:I

    int-to-float v3, v3

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1481
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1482
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1483
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1484
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mAmString:Ljava/lang/String;

    .line 1485
    .local v1, text:Ljava/lang/String;
    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-lt v3, v5, :cond_0

    .line 1486
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    .line 1488
    :cond_0
    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/CalendarView;->mHoursTextHeight:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 1489
    .local v2, y:I
    iget v3, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    const/4 v4, 0x4

    sub-int v0, v3, v4

    .line 1490
    .local v0, right:I
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v1, v3, v4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1492
    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-ge v3, v5, :cond_1

    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v3, v4

    if-le v3, v5, :cond_1

    .line 1494
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    .line 1495
    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    sub-int v4, v5, v4

    iget v5, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/CalendarView;->mHoursTextHeight:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 1497
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v1, v3, v4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1499
    :cond_1
    return-void
.end method

.method private drawCalendarView(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 1371
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSrcRect:Landroid/graphics/Rect;

    .line 1372
    .local v1, src:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mDestRect:Landroid/graphics/Rect;

    .line 1374
    .local v0, dest:Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1375
    iget v2, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1376
    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 1377
    iget v2, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1379
    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1380
    iget v2, p0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1381
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1382
    iget v2, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1384
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1385
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1386
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1387
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1388
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1389
    return-void
.end method

.method private drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "r"
    .parameter "left"
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1514
    sget v0, Lcom/android/calendar/CalendarView;->mCurrentTimeMarkerBorderColor:I

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1515
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    sget v1, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1516
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    sget v1, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1517
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1518
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v0, v1

    sget v1, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1519
    invoke-virtual {p4, p1, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1521
    sget v0, Lcom/android/calendar/CalendarView;->mCurrentTimeLineColor:I

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1522
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1523
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1524
    invoke-virtual {p4, p1, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1525
    return-void
.end method

.method private drawCurrentTimeMarker(ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1502
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1503
    .local v0, r:Landroid/graphics/Rect;
    sget v1, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1504
    sget v1, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1505
    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1506
    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1508
    sget v1, Lcom/android/calendar/CalendarView;->mCurrentTimeMarkerColor:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1509
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1510
    return-void
.end method

.method private drawDayHeader(Ljava/lang/String;IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 15
    .parameter "dateStr"
    .parameter "day"
    .parameter "cell"
    .parameter "x"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1759
    move/from16 v0, p4

    int-to-float v0, v0

    move v10, v0

    iget v11, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    int-to-float v11, v11

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v8, v10, v11

    .line 1761
    .local v8, xCenter:F
    iget v10, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    move/from16 v0, p2

    move v1, v10

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->isSaturday(II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1762
    sget v10, Lcom/android/calendar/CalendarView;->mWeek_saturdayColor:I

    move-object/from16 v0, p6

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1769
    :goto_0
    iget v10, p0, Lcom/android/calendar/CalendarView;->mFirstDate:I

    add-int v5, v10, p2

    .line 1770
    .local v5, dateNum:I
    iget v10, p0, Lcom/android/calendar/CalendarView;->mMonthLength:I

    if-le v5, v10, :cond_0

    .line 1771
    iget v10, p0, Lcom/android/calendar/CalendarView;->mMonthLength:I

    sub-int/2addr v5, v10

    .line 1776
    :cond_0
    const/16 v10, 0xa

    if-ge v5, v10, :cond_5

    .line 1777
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1782
    .local v6, dateNumStr:Ljava/lang/String;
    :goto_1
    iget-object v10, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v7, v10, p2

    .line 1783
    .local v7, header:Lcom/android/calendar/CalendarView$DayHeader;
    if-eqz v7, :cond_1

    iget v10, v7, Lcom/android/calendar/CalendarView$DayHeader;->cell:I

    move v0, v10

    move/from16 v1, p3

    if-eq v0, v1, :cond_2

    .line 1787
    :cond_1
    iget-object v10, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    new-instance v11, Lcom/android/calendar/CalendarView$DayHeader;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/android/calendar/CalendarView$DayHeader;-><init>(Lcom/android/calendar/CalendarView$1;)V

    aput-object v11, v10, p2

    .line 1788
    iget-object v10, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v10, v10, p2

    move/from16 v0, p3

    move-object v1, v10

    iput v0, v1, Lcom/android/calendar/CalendarView$DayHeader;->cell:I

    .line 1789
    iget-object v10, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v10, v10, p2

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f08

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    aput-object v6, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/calendar/CalendarView$DayHeader;->dateString:Ljava/lang/String;

    .line 1792
    :cond_2
    iget-object v10, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v10, v10, p2

    move-object v0, v10

    iget-object v0, v0, Lcom/android/calendar/CalendarView$DayHeader;->dateString:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 1794
    iget v10, p0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    const/4 v11, 0x7

    sub-int/2addr v10, v11

    int-to-float v9, v10

    .line 1795
    .local v9, y:F
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move v2, v8

    move v3, v9

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1796
    return-void

    .line 1763
    .end local v5           #dateNum:I
    .end local v6           #dateNumStr:Ljava/lang/String;
    .end local v7           #header:Lcom/android/calendar/CalendarView$DayHeader;
    .end local v9           #y:F
    :cond_3
    iget v10, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    move/from16 v0, p2

    move v1, v10

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->isSunday(II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1764
    sget v10, Lcom/android/calendar/CalendarView;->mWeek_sundayColor:I

    move-object/from16 v0, p6

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 1766
    :cond_4
    sget v10, Lcom/android/calendar/CalendarView;->mCalendarDateBannerTextColor:I

    move-object/from16 v0, p6

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 1779
    .restart local v5       #dateNum:I
    :cond_5
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #dateNumStr:Ljava/lang/String;
    goto :goto_1
.end method

.method private drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1430
    sget v0, Lcom/android/calendar/CalendarView;->mCalendarDateBannerBackground:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1431
    iput v6, p1, Landroid/graphics/Rect;->top:I

    .line 1432
    iget v0, p0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1433
    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 1434
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v1, v5

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1435
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1438
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1439
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1440
    sget v0, Lcom/android/calendar/CalendarView;->mCalendarGridAreaBackground:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1441
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1445
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v0, :cond_0

    .line 1446
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-le v0, v10, :cond_0

    .line 1447
    sget v0, Lcom/android/calendar/CalendarView;->mCalendarDateSelected:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1448
    iput v6, p1, Landroid/graphics/Rect;->top:I

    .line 1449
    iget v0, p0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1450
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v8, v0, v1

    .line 1451
    .local v8, daynum:I
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v8

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1452
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1453
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1457
    .end local v8           #daynum:I
    :cond_0
    sget v0, Lcom/android/calendar/CalendarView;->HEADER_FONT_SIZE:I

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1458
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1459
    iget v4, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    .line 1460
    .local v4, x:I
    iget v0, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v9, v0, 0x1

    .line 1461
    .local v9, deltaX:I
    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    .line 1464
    .local v3, cell:I
    iget v0, p0, Lcom/android/calendar/CalendarView;->mDateStrWidth:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    if-ge v0, v1, :cond_1

    .line 1465
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    .line 1470
    .local v7, dayNames:[Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1471
    invoke-virtual {p3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1472
    const/4 v2, 0x0

    .local v2, day:I
    :goto_1
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ge v2, v0, :cond_2

    .line 1473
    iget v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    add-int/2addr v0, v2

    aget-object v1, v7, v0

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/CalendarView;->drawDayHeader(Ljava/lang/String;IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1474
    add-int/2addr v4, v9

    .line 1472
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1467
    .end local v2           #day:I
    .end local v7           #dayNames:[Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    .restart local v7       #dayNames:[Ljava/lang/String;
    goto :goto_0

    .line 1476
    .restart local v2       #day:I
    :cond_2
    return-void
.end method

.method private drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;
    .locals 11
    .parameter "event"
    .parameter "canvas"
    .parameter "p"
    .parameter "eventTextPaint"

    .prologue
    .line 2430
    iget v2, p1, Lcom/android/calendar/Event;->color:I

    .line 2433
    .local v2, color:I
    iget v8, p1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    move v3, v8

    .line 2434
    .local v3, declined:Z
    :goto_0
    if-eqz v3, :cond_0

    .line 2435
    const/high16 v8, -0x100

    and-int v0, v2, v8

    .line 2436
    .local v0, alpha:I
    const v8, 0xffffff

    and-int/2addr v2, v8

    .line 2437
    const/high16 v8, 0xff

    and-int/2addr v8, v2

    shr-int/lit8 v6, v8, 0x10

    .line 2438
    .local v6, red:I
    const v8, 0xff00

    and-int/2addr v8, v2

    shr-int/lit8 v4, v8, 0x8

    .line 2439
    .local v4, green:I
    and-int/lit16 v1, v2, 0xff

    .line 2440
    .local v1, blue:I
    shr-int/lit8 v8, v6, 0x1

    shl-int/lit8 v8, v8, 0x10

    shr-int/lit8 v9, v4, 0x1

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    shr-int/lit8 v9, v1, 0x1

    or-int v2, v8, v9

    .line 2441
    const v8, 0x7f7f7f

    add-int/2addr v8, v0

    add-int/2addr v2, v8

    .line 2445
    .end local v0           #alpha:I
    .end local v1           #blue:I
    .end local v4           #green:I
    .end local v6           #red:I
    :cond_0
    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v8, p1, :cond_5

    .line 2446
    iget v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    iget v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 2448
    :cond_1
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 2449
    sget v8, Lcom/android/calendar/CalendarView;->mSelectionColor:I

    invoke-virtual {p3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 2450
    sget v8, Lcom/android/calendar/CalendarView;->mSelectedEventTextColor:I

    invoke-virtual {p4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 2464
    :goto_1
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mRectF:Landroid/graphics/RectF;

    .line 2465
    .local v7, rf:Landroid/graphics/RectF;
    iget v8, p1, Lcom/android/calendar/Event;->top:F

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 2466
    iget v8, p1, Lcom/android/calendar/Event;->bottom:F

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 2467
    iget v8, p1, Lcom/android/calendar/Event;->left:F

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 2468
    iget v8, p1, Lcom/android/calendar/Event;->right:F

    const/high16 v9, 0x3f80

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 2470
    sget v8, Lcom/android/calendar/CalendarView;->SMALL_ROUND_RADIUS:F

    sget v9, Lcom/android/calendar/CalendarView;->SMALL_ROUND_RADIUS:F

    invoke-virtual {p2, v7, v8, v9, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2473
    const/4 v8, 0x3

    new-array v5, v8, [F

    .line 2474
    .local v5, hsv:[F
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    invoke-static {v8, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 2475
    const/4 v8, 0x1

    const/high16 v9, 0x3f80

    aput v9, v5, v8

    .line 2476
    const/4 v8, 0x2

    aget v9, v5, v8

    const/high16 v10, 0x3f40

    mul-float/2addr v9, v10

    aput v9, v5, v8

    .line 2477
    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 2478
    sget v8, Lcom/android/calendar/CalendarView;->SMALL_ROUND_RADIUS:F

    sget v9, Lcom/android/calendar/CalendarView;->SMALL_ROUND_RADIUS:F

    iget-object v10, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2480
    iget v8, v7, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x4000

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 2481
    iget v8, v7, Landroid/graphics/RectF;->right:F

    const/high16 v9, 0x4000

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 2483
    return-object v7

    .line 2433
    .end local v3           #declined:Z
    .end local v5           #hsv:[F
    .end local v7           #rf:Landroid/graphics/RectF;
    :cond_2
    const/4 v8, 0x0

    move v3, v8

    goto/16 :goto_0

    .line 2451
    .restart local v3       #declined:Z
    :cond_3
    iget v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    .line 2452
    sget v8, Lcom/android/calendar/CalendarView;->mSelectionColor:I

    invoke-virtual {p3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 2453
    sget v8, Lcom/android/calendar/CalendarView;->mSelectedEventTextColor:I

    invoke-virtual {p4, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 2455
    :cond_4
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2456
    sget v8, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    invoke-virtual {p4, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 2459
    :cond_5
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2460
    sget v8, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    invoke-virtual {p4, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method private drawEventText(Lcom/android/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 20
    .parameter "event"
    .parameter "rf"
    .parameter "canvas"
    .parameter "p"
    .parameter "topMargin"

    .prologue
    .line 2498
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mDrawTextInEventRect:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 2585
    :cond_0
    return-void

    .line 2502
    :cond_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    sub-float v17, v18, v19

    .line 2503
    .local v17, width:F
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    sub-float v8, v18, v19

    .line 2506
    .local v8, height:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mEventTextHeight:I

    move/from16 v18, v0

    add-int/lit8 v12, v18, 0x1

    .line 2509
    .local v12, lineHeight:I
    sget v18, Lcom/android/calendar/CalendarView;->MIN_CELL_WIDTH_FOR_TEXT:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v17, v18

    if-ltz v18, :cond_0

    move v0, v12

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v8, v18

    if-lez v18, :cond_0

    .line 2514
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/Event;->getTitleAndLocation()Ljava/lang/String;

    move-result-object v15

    .line 2516
    .local v15, text:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/calendar/CalendarView;->drawTextSanitizer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2518
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    .line 2519
    .local v11, len:I
    const/16 v18, 0x1f4

    move v0, v11

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 2520
    const/16 v18, 0x0

    const/16 v19, 0x1f4

    move-object v0, v15

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 2521
    const/16 v11, 0x1f4

    .line 2527
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mCharWidths:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    move-object v1, v15

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 2528
    move-object v7, v15

    .line 2529
    .local v7, fragment:Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mEventTextAscent:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v16, v18, v19

    .line 2530
    .local v16, top:F
    const/4 v13, 0x0

    .line 2533
    .local v13, start:I
    :goto_0
    if-ge v13, v11, :cond_0

    add-int/lit8 v18, v12, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v8, v18

    if-ltz v18, :cond_0

    .line 2534
    mul-int/lit8 v18, v12, 0x2

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v8, v18

    if-gez v18, :cond_7

    const/16 v18, 0x1

    move/from16 v10, v18

    .line 2537
    .local v10, lastLine:Z
    :cond_3
    :goto_1
    invoke-virtual {v15, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2538
    .local v5, c:C
    const/16 v18, 0x20

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 2542
    :goto_2
    const/4 v14, 0x0

    .line 2543
    .local v14, sum:F
    move v6, v13

    .line 2544
    .local v6, end:I
    move v9, v13

    .local v9, ii:I
    :goto_3
    if-ge v9, v11, :cond_5

    .line 2545
    invoke-virtual {v15, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2549
    const/16 v18, 0x20

    move v0, v5

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 2550
    move v6, v9

    .line 2552
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mCharWidths:[F

    move-object/from16 v18, v0

    aget v18, v18, v9

    add-float v14, v14, v18

    .line 2556
    cmpl-float v18, v14, v17

    if-lez v18, :cond_a

    .line 2557
    if-le v6, v13, :cond_9

    if-nez v10, :cond_9

    .line 2559
    invoke-virtual {v15, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2560
    move v13, v6

    .line 2575
    :cond_5
    :goto_4
    cmpg-float v18, v14, v17

    if-gtz v18, :cond_6

    .line 2576
    invoke-virtual {v15, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2577
    move v13, v11

    .line 2580
    :cond_6
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    const/high16 v19, 0x3f80

    add-float v18, v18, v19

    move-object/from16 v0, p3

    move-object v1, v7

    move/from16 v2, v18

    move/from16 v3, v16

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2582
    move v0, v12

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v16, v16, v18

    .line 2583
    move v0, v12

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v8, v8, v18

    .line 2584
    goto :goto_0

    .line 2534
    .end local v5           #c:C
    .end local v6           #end:I
    .end local v9           #ii:I
    .end local v10           #lastLine:Z
    .end local v14           #sum:F
    :cond_7
    const/16 v18, 0x0

    move/from16 v10, v18

    goto :goto_1

    .line 2539
    .restart local v5       #c:C
    .restart local v10       #lastLine:Z
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 2540
    if-lt v13, v11, :cond_3

    goto :goto_2

    .line 2567
    .restart local v6       #end:I
    .restart local v9       #ii:I
    .restart local v14       #sum:F
    :cond_9
    invoke-virtual {v15, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2568
    move v13, v9

    .line 2569
    goto :goto_4

    .line 2544
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method private drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 22
    .parameter "date"
    .parameter "left"
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object v15, v0

    .line 2101
    .local v15, eventTextPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v9, v0

    .line 2102
    .local v9, cellWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move/from16 v17, v0

    .line 2105
    .local v17, cellHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 2106
    .local v21, selectionArea:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    move v6, v0

    add-int/lit8 v7, v17, 0x1

    mul-int/2addr v6, v7

    add-int v6, v6, p3

    move v0, v6

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2107
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    add-int v6, v6, v17

    move v0, v6

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2108
    move/from16 v0, p2

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2109
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    add-int/2addr v6, v9

    move v0, v6

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 2112
    .local v18, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 2113
    .local v20, numEvents:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    move-object v5, v0

    .line 2115
    .local v5, geometry:Lcom/android/calendar/EventGeometry;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 2116
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calendar/Event;

    .local v10, event:Lcom/android/calendar/Event;
    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 2117
    invoke-virtual/range {v5 .. v10}, Lcom/android/calendar/EventGeometry;->computeEventRect(IIIILcom/android/calendar/Event;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2115
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 2121
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move v6, v0

    move/from16 v0, p1

    move v1, v6

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    move v6, v0

    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    move v6, v0

    if-eqz v6, :cond_1

    move-object v0, v5

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/EventGeometry;->eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2126
    :cond_1
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v13

    .line 2127
    .local v13, rf:Landroid/graphics/RectF;
    const/16 v16, 0x2

    move-object/from16 v11, p0

    move-object v12, v10

    move-object/from16 v14, p4

    invoke-direct/range {v11 .. v16}, Lcom/android/calendar/CalendarView;->drawEventText(Lcom/android/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    goto :goto_1

    .line 2130
    .end local v10           #event:Lcom/android/calendar/Event;
    .end local v13           #rf:Landroid/graphics/RectF;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move v6, v0

    move/from16 v0, p1

    move v1, v6

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    move v6, v0

    if-nez v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    move v6, v0

    if-eqz v6, :cond_3

    .line 2132
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->computeNeighbors()V

    .line 2133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v6, v0

    if-eqz v6, :cond_3

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v13

    .line 2135
    .restart local v13       #rf:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v12, v0

    const/16 v16, 0x2

    move-object/from16 v11, p0

    move-object/from16 v14, p4

    invoke-direct/range {v11 .. v16}, Lcom/android/calendar/CalendarView;->drawEventText(Lcom/android/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 2138
    .end local v13           #rf:Landroid/graphics/RectF;
    :cond_3
    return-void
.end method

.method private drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 18
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1799
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v17

    .line 1802
    .local v17, savedStyle:Landroid/graphics/Paint$Style;
    sget v3, Lcom/android/calendar/CalendarView;->mCalendarGridAreaBackground:I

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1803
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1804
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    move v3, v0

    move v0, v3

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1805
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1806
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    move v3, v0

    move v0, v3

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1807
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1810
    sget v3, Lcom/android/calendar/CalendarView;->mCalendarGridLineHorizontalColor:I

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1811
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1812
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1813
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1814
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move v3, v0

    int-to-float v4, v3

    .line 1815
    .local v4, startX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v6, v0

    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    int-to-float v6, v3

    .line 1816
    .local v6, stopX:F
    const/4 v5, 0x0

    .line 1817
    .local v5, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    int-to-float v15, v3

    .line 1818
    .local v15, deltaY:F
    const/16 v16, 0x0

    .local v16, hour:I
    :goto_0
    const/16 v3, 0x18

    move/from16 v0, v16

    move v1, v3

    if-gt v0, v1, :cond_0

    move-object/from16 v3, p2

    move v7, v5

    move-object/from16 v8, p3

    .line 1819
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1820
    add-float/2addr v5, v15

    .line 1818
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1824
    :cond_0
    sget v3, Lcom/android/calendar/CalendarView;->mCalendarGridLineVerticalColor:I

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1825
    const/4 v9, 0x0

    .line 1826
    .local v9, startY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x18

    add-int/lit8 v3, v3, 0x1

    int-to-float v11, v3

    .line 1827
    .local v11, stopY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    int-to-float v14, v3

    .line 1828
    .local v14, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v4, v0

    .end local v4           #startX:F
    add-int/2addr v3, v4

    int-to-float v8, v3

    .line 1829
    .local v8, x:F
    const/4 v13, 0x0

    .local v13, day:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v3, v0

    if-ge v13, v3, :cond_1

    move-object/from16 v7, p2

    move v10, v8

    move-object/from16 v12, p3

    .line 1830
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1831
    add-float/2addr v8, v14

    .line 1829
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1835
    :cond_1
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1836
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1837
    return-void
.end method

.method private drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1558
    sget v1, Lcom/android/calendar/CalendarView;->mCalendarHourBackground:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1559
    const/4 v1, 0x0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1560
    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x18

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1561
    const/4 v1, 0x0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 1562
    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 1563
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1566
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1567
    iget v1, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1568
    sget v1, Lcom/android/calendar/CalendarView;->mCalendarGridAreaBackground:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1569
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1572
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    if-nez v1, :cond_2

    .line 1573
    sget v1, Lcom/android/calendar/CalendarView;->mCalendarHourSelected:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1574
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1575
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1576
    const/4 v1, 0x0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 1577
    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 1578
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1580
    const/4 v7, 0x0

    .line 1581
    .local v7, drawBorder:Z
    if-nez v7, :cond_0

    .line 1582
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1583
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1587
    :cond_0
    sget v1, Lcom/android/calendar/CalendarView;->mCalendarGridAreaSelected:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1588
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v6, v1, v2

    .line 1589
    .local v6, daynum:I
    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v6

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 1590
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 1591
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1594
    if-eqz v7, :cond_1

    .line 1595
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPath:Landroid/graphics/Path;

    .line 1596
    .local v0, path:Landroid/graphics/Path;
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1597
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1598
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1599
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1600
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1603
    .end local v0           #path:Landroid/graphics/Path;
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarView;->saveSelectionPosition(FFFF)V

    .line 1606
    .end local v6           #daynum:I
    .end local v7           #drawBorder:Z
    :cond_2
    sget v1, Lcom/android/calendar/CalendarView;->mCalendarHourLabel:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1607
    sget v1, Lcom/android/calendar/CalendarView;->HOURS_FONT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1608
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1609
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1610
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1612
    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    const/4 v2, 0x4

    sub-int v9, v1, v2

    .line 1613
    .local v9, right:I
    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursTextHeight:I

    add-int/lit8 v11, v1, 0x1

    .line 1615
    .local v11, y:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/16 v1, 0x18

    if-ge v8, v1, :cond_3

    .line 1616
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    aget-object v10, v1, v8

    .line 1617
    .local v10, time:Ljava/lang/String;
    int-to-float v1, v9

    int-to-float v2, v11

    invoke-virtual {p2, v10, v1, v2, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1618
    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v11, v1

    .line 1615
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1620
    .end local v10           #time:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private drawTextSanitizer(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x20

    const/16 v2, 0xa

    .line 2492
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2493
    .local v0, m:Ljava/util/regex/Matcher;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 2494
    return-object p1
.end method

.method private drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1420
    sget v0, Lcom/android/calendar/CalendarView;->mCalendarHourBackground:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1421
    iget v0, p0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1422
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mAllDayHeight:I

    add-int/2addr v0, v1

    sget v1, Lcom/android/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1423
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1424
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1425
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1426
    return-void
.end method

.method private findSelectedEvent(II)V
    .locals 35
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3173
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move v5, v0

    .line 3174
    .local v5, date:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move v8, v0

    .line 3175
    .local v8, cellWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 3176
    .local v18, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 3177
    .local v25, numEvents:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    add-int/lit8 v34, v8, 0x1

    mul-int v33, v33, v34

    add-int v6, v32, v33

    .line 3178
    .local v6, left:I
    const/4 v7, 0x0

    .line 3179
    .local v7, top:I
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 3181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->clear()V

    .line 3182
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    move/from16 v32, v0

    if-eqz v32, :cond_7

    .line 3184
    const v24, 0x461c4000

    .line 3185
    .local v24, minYdistance:F
    const/4 v10, 0x0

    .line 3186
    .local v10, closestEvent:Lcom/android/calendar/Event;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mAllDayHeight:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move v12, v0

    .line 3187
    .local v12, drawHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    move/from16 v32, v0

    sget v33, Lcom/android/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    add-int v31, v32, v33

    .line 3188
    .local v31, yOffset:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 3189
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/Event;

    .line 3190
    .local v9, event:Lcom/android/calendar/Event;
    move-object v0, v9

    iget-boolean v0, v0, Lcom/android/calendar/Event;->allDay:Z

    move/from16 v32, v0

    if-nez v32, :cond_1

    .line 3188
    :cond_0
    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 3194
    :cond_1
    move-object v0, v9

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_0

    move-object v0, v9

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_0

    .line 3195
    invoke-virtual {v9}, Lcom/android/calendar/Event;->getMaxColumns()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v26, v0

    .line 3196
    .local v26, numRectangles:F
    div-float v19, v12, v26

    .line 3197
    .local v19, height:F
    sget v32, Lcom/android/calendar/CalendarView;->MAX_ALLDAY_EVENT_HEIGHT:I

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v32, v19, v32

    if-lez v32, :cond_2

    .line 3198
    sget v32, Lcom/android/calendar/CalendarView;->MAX_ALLDAY_EVENT_HEIGHT:I

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v19, v0

    .line 3200
    :cond_2
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual {v9}, Lcom/android/calendar/Event;->getColumn()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v19

    add-float v17, v32, v33

    .line 3201
    .local v17, eventTop:F
    add-float v16, v17, v19

    .line 3202
    .local v16, eventBottom:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v17, v32

    if-gez v32, :cond_5

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v32, v16, v32

    if-lez v32, :cond_5

    .line 3205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3206
    move-object v10, v9

    .line 3222
    .end local v9           #event:Lcom/android/calendar/Event;
    .end local v16           #eventBottom:F
    .end local v17           #eventTop:F
    .end local v19           #height:F
    .end local v26           #numRectangles:F
    :cond_3
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 3294
    .end local v10           #closestEvent:Lcom/android/calendar/Event;
    .end local v12           #drawHeight:F
    .end local v24           #minYdistance:F
    .end local v31           #yOffset:I
    :cond_4
    :goto_2
    return-void

    .line 3210
    .restart local v9       #event:Lcom/android/calendar/Event;
    .restart local v10       #closestEvent:Lcom/android/calendar/Event;
    .restart local v12       #drawHeight:F
    .restart local v16       #eventBottom:F
    .restart local v17       #eventTop:F
    .restart local v19       #height:F
    .restart local v24       #minYdistance:F
    .restart local v26       #numRectangles:F
    .restart local v31       #yOffset:I
    :cond_5
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v32, v17, v32

    if-ltz v32, :cond_6

    .line 3211
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v30, v17, v32

    .line 3215
    .local v30, yDistance:F
    :goto_3
    cmpg-float v32, v30, v24

    if-gez v32, :cond_0

    .line 3216
    move/from16 v24, v30

    .line 3217
    move-object v10, v9

    goto/16 :goto_1

    .line 3213
    .end local v30           #yDistance:F
    :cond_6
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v30, v32, v16

    .restart local v30       #yDistance:F
    goto :goto_3

    .line 3227
    .end local v9           #event:Lcom/android/calendar/Event;
    .end local v10           #closestEvent:Lcom/android/calendar/Event;
    .end local v12           #drawHeight:F
    .end local v16           #eventBottom:F
    .end local v17           #eventTop:F
    .end local v19           #height:F
    .end local v20           #i:I
    .end local v24           #minYdistance:F
    .end local v26           #numRectangles:F
    .end local v30           #yDistance:F
    .end local v31           #yOffset:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    add-int p2, p2, v32

    .line 3230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    .line 3231
    .local v27, region:Landroid/graphics/Rect;
    const/16 v32, 0xa

    sub-int v32, p1, v32

    move/from16 v0, v32

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3232
    add-int/lit8 v32, p1, 0xa

    move/from16 v0, v32

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3233
    const/16 v32, 0xa

    sub-int v32, p2, v32

    move/from16 v0, v32

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3234
    add-int/lit8 v32, p2, 0xa

    move/from16 v0, v32

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    move-object v4, v0

    .line 3238
    .local v4, geometry:Lcom/android/calendar/EventGeometry;
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 3239
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/Event;

    .line 3241
    .restart local v9       #event:Lcom/android/calendar/Event;
    invoke-virtual/range {v4 .. v9}, Lcom/android/calendar/EventGeometry;->computeEventRect(IIIILcom/android/calendar/Event;)Z

    move-result v32

    if-nez v32, :cond_9

    .line 3238
    :cond_8
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 3247
    :cond_9
    move-object v0, v4

    move-object v1, v9

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/EventGeometry;->eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 3248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3254
    .end local v9           #event:Lcom/android/calendar/Event;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_4

    .line 3255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 3256
    .local v22, len:I
    const/4 v10, 0x0

    .line 3257
    .restart local v10       #closestEvent:Lcom/android/calendar/Event;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v23, v0

    .line 3258
    .local v23, minDist:F
    const/16 v21, 0x0

    .local v21, index:I
    :goto_6
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 3259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/calendar/Event;

    .line 3260
    .local v15, ev:Lcom/android/calendar/Event;
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v33, v0

    move-object v0, v4

    move/from16 v1, v32

    move/from16 v2, v33

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/EventGeometry;->pointToEvent(FFLcom/android/calendar/Event;)F

    move-result v11

    .line 3261
    .local v11, dist:F
    cmpg-float v32, v11, v23

    if-gez v32, :cond_b

    .line 3262
    move/from16 v23, v11

    .line 3263
    move-object v10, v15

    .line 3258
    :cond_b
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 3266
    .end local v11           #dist:F
    .end local v15           #ev:Lcom/android/calendar/Event;
    :cond_c
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 3272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 v28, v0

    .line 3273
    .local v28, startDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move v13, v0

    .line 3274
    .local v13, endDay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    .line 3275
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 3280
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v32, v0

    div-int/lit8 v29, v32, 0x3c

    .line 3282
    .local v29, startHour:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_f

    .line 3283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v32, v0

    const/16 v33, 0x1

    sub-int v32, v32, v33

    div-int/lit8 v14, v32, 0x3c

    .line 3288
    .local v14, endHour:I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v29

    if-ge v0, v1, :cond_10

    .line 3289
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    goto/16 :goto_2

    .line 3276
    .end local v14           #endHour:I
    .end local v29           #startHour:I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move/from16 v32, v0

    move/from16 v0, v32

    move v1, v13

    if-le v0, v1, :cond_d

    .line 3277
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    goto :goto_7

    .line 3285
    .restart local v29       #startHour:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v32, v0

    div-int/lit8 v14, v32, 0x3c

    .restart local v14       #endHour:I
    goto :goto_8

    .line 3290
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    move/from16 v32, v0

    move/from16 v0, v32

    move v1, v14

    if-le v0, v1, :cond_4

    .line 3291
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    goto/16 :goto_2
.end method

.method private getCurrentSelectionPosition()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 1892
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1893
    .local v0, box:Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1894
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1895
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 1896
    .local v1, daynum:I
    iget v2, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1897
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1898
    return-object v0
.end method

.method private static getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I
    .locals 8
    .parameter "context"
    .parameter "e"

    .prologue
    .line 3072
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3074
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 3075
    .local v6, visibility:I
    const/4 p0, 0x2

    .line 3078
    .local p0, relationship:I
    sget-object p0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    .end local p0           #relationship:I
    iget-wide v1, p1, Lcom/android/calendar/Event;->id:J

    invoke-static {p0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string v3, "calendar_id"

    aput-object v3, v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 3084
    .local p0, cursor:Landroid/database/Cursor;
    if-nez p0, :cond_0

    .line 3085
    const/4 p1, 0x0

    move v0, p1

    move p1, v6

    .line 3122
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #visibility:I
    .local p1, visibility:I
    :goto_0
    return v0

    .line 3088
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #visibility:I
    .local p1, e:Lcom/android/calendar/Event;
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 3089
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 3090
    const/4 p1, 0x0

    move v0, p1

    move p1, v6

    .end local v6           #visibility:I
    .local p1, visibility:I
    goto :goto_0

    .line 3093
    .restart local v6       #visibility:I
    .local p1, e:Lcom/android/calendar/Event;
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3094
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3095
    .local v2, calId:J
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 3097
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 3098
    .local v1, uri:Landroid/net/Uri;
    const-string p0, "_id=%d"

    .end local p0           #cursor:Landroid/database/Cursor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .end local v2           #calId:J
    aput-object v2, v4, v5

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3099
    .local v3, where:Ljava/lang/String;
    sget-object v2, Lcom/android/calendar/CalendarView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3101
    .local v0, cursor:Landroid/database/Cursor;
    const/4 p0, 0x0

    .line 3102
    .local p0, calendarOwnerAccount:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 3103
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3104
    const/4 p0, 0x1

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    .end local p0           #calendarOwnerAccount:Ljava/lang/String;
    move-result v1

    .line 3105
    .end local v6           #visibility:I
    .local v1, visibility:I
    const/4 p0, 0x2

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 3106
    .restart local p0       #calendarOwnerAccount:Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3109
    :goto_1
    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_2

    .line 3110
    const/4 p0, 0x0

    move p1, v1

    .end local v1           #visibility:I
    .local p1, visibility:I
    move-object v7, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    .local v7, cursor:Landroid/database/Cursor;
    move v0, p0

    move-object p0, v7

    .end local v7           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 3113
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #visibility:I
    .local p0, calendarOwnerAccount:Ljava/lang/String;
    .local p1, e:Lcom/android/calendar/Event;
    :cond_2
    iget-boolean v2, p1, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-eqz v2, :cond_3

    .line 3114
    const/4 p0, 0x2

    move p1, v1

    .end local v1           #visibility:I
    .local p1, visibility:I
    move-object v7, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    move v0, p0

    move-object p0, v7

    .end local v7           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 3117
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #visibility:I
    .local p0, calendarOwnerAccount:Ljava/lang/String;
    .local p1, e:Lcom/android/calendar/Event;
    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object p1, p1, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    .end local p1           #e:Lcom/android/calendar/Event;
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    .end local p0           #calendarOwnerAccount:Ljava/lang/String;
    if-eqz p0, :cond_4

    .line 3119
    const/4 p0, 0x2

    move p1, v1

    .end local v1           #visibility:I
    .local p1, visibility:I
    move-object v7, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    move v0, p0

    move-object p0, v7

    .end local v7           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 3122
    .end local p0           #cursor:Landroid/database/Cursor;
    .end local p1           #visibility:I
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #visibility:I
    :cond_4
    const/4 p0, 0x1

    move p1, v1

    .end local v1           #visibility:I
    .restart local p1       #visibility:I
    move-object v7, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    move v0, p0

    move-object p0, v7

    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local p0       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .restart local v0       #cursor:Landroid/database/Cursor;
    .local v1, uri:Landroid/net/Uri;
    .restart local v6       #visibility:I
    .local p0, calendarOwnerAccount:Ljava/lang/String;
    .local p1, e:Lcom/android/calendar/Event;
    :cond_5
    move v1, v6

    .end local v6           #visibility:I
    .local v1, visibility:I
    goto :goto_1
.end method

.method static getNewEvent(IJI)Lcom/android/calendar/Event;
    .locals 5
    .parameter "julianDay"
    .parameter "utcMillis"
    .parameter "minutesSinceMidnight"

    .prologue
    .line 1859
    invoke-static {}, Lcom/android/calendar/Event;->newInstance()Lcom/android/calendar/Event;

    move-result-object v0

    .line 1860
    .local v0, event:Lcom/android/calendar/Event;
    iput p0, v0, Lcom/android/calendar/Event;->startDay:I

    .line 1861
    iput p0, v0, Lcom/android/calendar/Event;->endDay:I

    .line 1862
    iput-wide p1, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 1863
    iget-wide v1, v0, Lcom/android/calendar/Event;->startMillis:J

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 1864
    iput p3, v0, Lcom/android/calendar/Event;->startTime:I

    .line 1865
    iget v1, v0, Lcom/android/calendar/Event;->startTime:I

    add-int/lit8 v1, v1, 0x3c

    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    .line 1866
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 22
    .parameter "context"

    .prologue
    .line 443
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarView;->setFocusable(Z)V

    .line 447
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarView;->setFocusableInTouchMode(Z)V

    .line 448
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarView;->setClickable(Z)V

    .line 449
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 451
    invoke-static {}, Lcom/android/calendar/Utils;->getFirstDayOfWeek()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mStartDay:I

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mTimeZone:Ljava/util/TimeZone;

    .line 455
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    .line 456
    new-instance v17, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 458
    .local v5, currentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mUpdateCurrentTime:Lcom/android/calendar/CalendarView$UpdateCurrentTime;

    move-object/from16 v17, v0

    const-wide/32 v18, 0x493e0

    const-wide/32 v20, 0x493e0

    rem-long v20, v5, v20

    sub-long v18, v18, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v17, v0

    move-wide v0, v5

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mTodayJulianDay:I

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070009

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mWeek_saturdayColor:I

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f07000a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mWeek_sundayColor:I

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070011

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mCalendarDateBannerTextColor:I

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070008

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mCalendarAllDayBackground:I

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f07000c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mCalendarAmPmLabel:I

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f07000f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mCalendarDateBannerBackground:I

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070010

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mCalendarDateSelected:I

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070012

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mCalendarGridAreaBackground:I

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070013

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mCalendarGridAreaSelected:I

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070014

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mCalendarGridLineHorizontalColor:I

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070015

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mCalendarGridLineVerticalColor:I

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f07000d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mCalendarHourBackground:I

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f07000b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mCalendarHourLabel:I

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f07000e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mCalendarHourSelected:I

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070017

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mSelectionColor:I

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070018

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mPressedColor:I

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070005

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mSelectedEventTextColor:I

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070006

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070023

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mCurrentTimeMarkerColor:I

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070024

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mCurrentTimeLineColor:I

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070025

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    sput v17, Lcom/android/calendar/CalendarView;->mCurrentTimeMarkerBorderColor:I

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget v18, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget v18, Lcom/android/calendar/CalendarView;->EVENT_TEXT_FONT_SIZE:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f070016

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 491
    .local v9, gridLineColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    move-object v15, v0

    .line 492
    .local v15, p:Landroid/graphics/Paint;
    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    sget-object v17, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 494
    const/high16 v17, 0x4000

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 495
    const/16 v17, 0x0

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    move-object v15, v0

    .line 498
    const/16 v17, 0x1

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const v18, -0x373738

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 507
    const/16 v17, 0xe

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    .line 510
    const/16 v17, 0xe

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    .line 512
    const/4 v10, 0x1

    .local v10, i:I
    :goto_0
    const/16 v17, 0x7

    move v0, v10

    move/from16 v1, v17

    if-gt v0, v1, :cond_1

    .line 513
    const/16 v17, 0x1

    sub-int v11, v10, v17

    .line 515
    .local v11, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x14

    move v0, v10

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v11

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v11

    aput-object v19, v17, v18

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1e

    move v0, v10

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v11

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x32

    move v0, v10

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v11

    .line 525
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v11

    aput-object v19, v17, v18

    .line 512
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 530
    .end local v11           #index:I
    :cond_1
    sget v17, Lcom/android/calendar/CalendarView;->NORMAL_FONT_SIZE:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 532
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v7, v0

    const/16 v17, 0x0

    const-string v18, " 28"

    aput-object v18, v7, v17

    const/16 v17, 0x1

    const-string v18, " 30"

    aput-object v18, v7, v17

    .line 533
    .local v7, dateStrs:[Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object v2, v7

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/CalendarView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mDateStrWidth:I

    .line 534
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mDateStrWidth:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/CalendarView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mDateStrWidth:I

    .line 536
    sget v17, Lcom/android/calendar/CalendarView;->HOURS_FONT_SIZE:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 537
    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->updateIs24HourFormat()V

    .line 540
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mAmString:Ljava/lang/String;

    .line 541
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    .line 542
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mAmString:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v4, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v4, v17

    .line 543
    .local v4, ampm:[Ljava/lang/String;
    sget v17, Lcom/android/calendar/CalendarView;->AMPM_FONT_SIZE:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object v2, v4

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/CalendarView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    .line 545
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    .line 548
    const-string v17, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 549
    .local v12, inflater:Landroid/view/LayoutInflater;
    const v17, 0x7f030007

    const/16 v18, 0x0

    move-object v0, v12

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    new-instance v17, Landroid/widget/PopupWindow;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 556
    .local v8, dialogTheme:Landroid/content/res/Resources$Theme;
    const v17, 0x103000b

    const/16 v18, 0x1

    move-object v0, v8

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 557
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const v19, 0x1010054

    aput v19, v17, v18

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 559
    .local v16, ta:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    new-instance v17, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 567
    .local v13, millis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 569
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    .line 570
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[Z

    .line 572
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/high16 v18, 0x7f09

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mNumHours:I

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0c0003

    invoke-virtual/range {v17 .. v18}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    .line 574
    return-void
.end method

.method private initFirstHour()V
    .locals 3

    .prologue
    const/16 v2, 0x18

    .line 1198
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1199
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-gez v0, :cond_1

    .line 1200
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v0, v1

    if-le v0, v2, :cond_0

    .line 1202
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    goto :goto_0
.end method

.method private initNextView(I)Z
    .locals 7
    .parameter "deltaX"

    .prologue
    .line 2805
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v3}, Lcom/android/calendar/CalendarActivity;->getNextView()Lcom/android/calendar/CalendarView;

    move-result-object v2

    .line 2806
    .local v2, view:Lcom/android/calendar/CalendarView;
    iget-object v0, v2, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    .line 2807
    .local v0, date:Landroid/text/format/Time;
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 2809
    if-lez p1, :cond_0

    .line 2810
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 2811
    iget v3, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 2812
    const/4 v1, 0x0

    .line 2818
    .local v1, switchForward:Z
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 2819
    invoke-direct {p0, v2}, Lcom/android/calendar/CalendarView;->initView(Lcom/android/calendar/CalendarView;)V

    .line 2820
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/calendar/CalendarView;->layout(IIII)V

    .line 2821
    invoke-virtual {v2}, Lcom/android/calendar/CalendarView;->reloadEvents()V

    .line 2822
    return v1

    .line 2814
    .end local v1           #switchForward:Z
    :cond_0
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 2815
    iget v3, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 2816
    const/4 v1, 0x1

    .restart local v1       #switchForward:Z
    goto :goto_0
.end method

.method private initView(Lcom/android/calendar/CalendarView;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 886
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 887
    iget-object v0, p1, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 888
    iput-boolean v2, p1, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 889
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 890
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    .line 891
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/calendar/CalendarView;->remeasure(II)V

    .line 893
    iput-object v3, p1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 894
    iput-object v3, p1, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 895
    iget v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mStartDay:I

    .line 896
    iget-object v0, p1, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 897
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    iput-boolean v0, p1, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    .line 905
    :goto_0
    iput-boolean v2, p1, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 906
    invoke-direct {p1}, Lcom/android/calendar/CalendarView;->recalc()V

    .line 907
    return-void

    .line 899
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    goto :goto_0
.end method

.method private recalc()V
    .locals 21

    .prologue
    .line 666
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v4, v0

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v4, v0

    move-object v0, v4

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v16, v0

    .line 668
    .local v16, dayOfWeek:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mStartDay:I

    move v4, v0

    sub-int v17, v16, v4

    .line 669
    .local v17, diff:I
    if-eqz v17, :cond_1

    .line 670
    if-gez v17, :cond_0

    .line 671
    add-int/lit8 v17, v17, 0x7

    .line 673
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v4, v0

    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    sub-int v5, v5, v17

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 678
    .end local v16           #dayOfWeek:I
    .end local v17           #diff:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 679
    .local v5, start:J
    move-wide v7, v5

    .line 680
    .local v7, end:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v4, v0

    iget-wide v10, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    .line 681
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v9, v0

    add-int/2addr v4, v9

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v4, v0

    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mMonthLength:I

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v4, v0

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mFirstDate:I

    .line 686
    const/4 v9, 0x4

    .line 687
    .local v9, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 688
    or-int/lit16 v9, v9, 0x80

    .line 690
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v4, v0

    const/4 v10, 0x1

    if-le v4, v10, :cond_5

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v4, v0

    iget v7, v4, Landroid/text/format/Time;->monthDay:I

    .end local v7           #end:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v8, v0

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    add-int/2addr v7, v8

    iput v7, v4, Landroid/text/format/Time;->monthDay:I

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v4, v0

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    .line 693
    .restart local v7       #end:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v4, v0

    iget v10, v4, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v11, v0

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    sub-int/2addr v10, v11

    iput v10, v4, Landroid/text/format/Time;->monthDay:I

    .line 694
    or-int/lit8 v9, v9, 0x20

    .line 700
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    move-object v7, v0

    .end local v7           #end:J
    invoke-static {v4, v7}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 703
    const/4 v9, 0x1

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 705
    or-int/lit16 v9, v9, 0x80

    .line 707
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    move-object v7, v0

    invoke-static {v4, v7}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v20

    .line 710
    .local v20, tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v4, v0

    iget v4, v4, Landroid/text/format/Time;->isDst:I

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 711
    .local v18, isDST:Z
    :goto_1
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 712
    .local v19, title:Ljava/lang/StringBuilder;
    const-string v4, " ("

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    move-object v10, v0

    move-wide v11, v5

    move-wide v13, v5

    move v15, v9

    invoke-static/range {v10 .. v15}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mTimeZone:Ljava/util/TimeZone;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    move-object v0, v7

    move/from16 v1, v18

    move v2, v8

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    .line 723
    .end local v18           #isDST:Z
    .end local v19           #title:Ljava/lang/StringBuilder;
    .end local v20           #tz:Ljava/lang/String;
    :cond_4
    return-void

    .line 696
    .restart local v7       #end:J
    :cond_5
    const v4, 0x10012

    or-int/2addr v9, v4

    goto/16 :goto_0

    .line 710
    .end local v7           #end:J
    .restart local v20       #tz:Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    move/from16 v18, v4

    goto :goto_1
.end method

.method private remeasure(II)V
    .locals 21
    .parameter "width"
    .parameter "height"

    .prologue
    .line 764
    const/4 v5, 0x0

    .local v5, day:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move/from16 v17, v0

    move v0, v5

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    move-object/from16 v17, v0

    const/16 v18, 0x19

    aput v18, v17, v5

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[Z

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-boolean v18, v17, v5

    .line 764
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 773
    :cond_0
    const/4 v15, 0x0

    .line 774
    .local v15, maxAllDayEvents:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    move-object v10, v0

    .line 775
    .local v10, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 776
    .local v13, len:I
    const/4 v12, 0x0

    .local v12, ii:I
    :goto_1
    if-ge v12, v13, :cond_8

    .line 777
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/Event;

    .line 778
    .local v8, event:Lcom/android/calendar/Event;
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 776
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 780
    :cond_2
    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/calendar/Event;->allDay:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 781
    invoke-virtual {v8}, Lcom/android/calendar/Event;->getColumn()I

    move-result v17

    add-int/lit8 v14, v17, 0x1

    .line 782
    .local v14, max:I
    if-ge v15, v14, :cond_3

    .line 783
    move v15, v14

    .line 785
    :cond_3
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 786
    .local v6, daynum:I
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move/from16 v17, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    add-int/lit8 v7, v17, 0x1

    .line 787
    .local v7, durationDays:I
    if-gez v6, :cond_4

    .line 788
    add-int/2addr v7, v6

    .line 789
    const/4 v6, 0x0

    .line 791
    :cond_4
    add-int v17, v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move/from16 v17, v0

    sub-int v7, v17, v6

    .line 794
    :cond_5
    move v5, v6

    :goto_3
    if-lez v7, :cond_1

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[Z

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aput-boolean v18, v17, v5

    .line 794
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 798
    .end local v6           #daynum:I
    .end local v7           #durationDays:I
    .end local v14           #max:I
    :cond_6
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 799
    .restart local v6       #daynum:I
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v17, v0

    div-int/lit8 v11, v17, 0x3c

    .line 800
    .local v11, hour:I
    if-ltz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    move-object/from16 v17, v0

    aget v17, v17, v6

    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    move-object/from16 v17, v0

    aput v11, v17, v6

    .line 806
    :cond_7
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 807
    move-object v0, v8

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v17, v0

    div-int/lit8 v11, v17, 0x3c

    .line 808
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move/from16 v17, v0

    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    move-object/from16 v17, v0

    aget v17, v17, v6

    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    move-object/from16 v17, v0

    aput v11, v17, v6

    goto/16 :goto_2

    .line 813
    .end local v6           #daynum:I
    .end local v8           #event:Lcom/android/calendar/Event;
    .end local v11           #hour:I
    :cond_8
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    .line 815
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mFirstCell:I

    .line 816
    const/4 v3, 0x0

    .line 817
    .local v3, allDayHeight:I
    if-lez v15, :cond_11

    .line 820
    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 821
    sget v3, Lcom/android/calendar/CalendarView;->SINGLE_ALLDAY_HEIGHT:I

    .line 830
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    move/from16 v17, v0

    add-int v17, v17, v3

    sget v18, Lcom/android/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mFirstCell:I

    .line 834
    :goto_5
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mAllDayHeight:I

    .line 836
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    move/from16 v17, v0

    sub-int v17, p2, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    .line 837
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumHours:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    mul-int/lit8 v18, v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumHours:I

    move/from16 v18, v0

    div-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mCellHeight:I

    .line 838
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumHours:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    add-int/lit8 v16, v17, 0x1

    .line 839
    .local v16, usedGridAreaHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    move/from16 v17, v0

    sub-int v4, v17, v16

    .line 840
    .local v4, bottomSpace:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/calendar/EventGeometry;->setHourHeight(F)V

    .line 843
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x18

    add-int/lit8 v17, v17, 0x1

    add-int v17, v17, v4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    :cond_a
    if-lez p1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    move/from16 v17, v0

    if-lez v17, :cond_c

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 849
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    move/from16 v17, v0

    sget-object v18, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    .line 850
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mCanvas:Landroid/graphics/Canvas;

    .line 852
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    .line 854
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 855
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->initFirstHour()V

    .line 856
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    .line 863
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_e

    .line 864
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    .line 866
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 868
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    mul-int v9, v17, v18

    .line 870
    .local v9, eventAreaWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/CalendarView;->mLastPopupEventID:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_f

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/PopupWindow;->dismiss()V

    .line 873
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    const/16 v18, 0x14

    sub-int v18, v9, v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    const/16 v18, -0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 875
    return-void

    .line 825
    .end local v4           #bottomSpace:I
    .end local v9           #eventAreaWidth:I
    .end local v16           #usedGridAreaHeight:I
    :cond_10
    sget v17, Lcom/android/calendar/CalendarView;->MAX_ALLDAY_EVENT_HEIGHT:I

    mul-int v3, v15, v17

    .line 826
    sget v17, Lcom/android/calendar/CalendarView;->MAX_ALLDAY_HEIGHT:I

    move v0, v3

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    .line 827
    sget v3, Lcom/android/calendar/CalendarView;->MAX_ALLDAY_HEIGHT:I

    goto/16 :goto_4

    .line 832
    :cond_11
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    goto/16 :goto_5
.end method

.method private resetSelectedHour()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1184
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1185
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1186
    iput-object v5, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1187
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1188
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1195
    :cond_0
    :goto_0
    return-void

    .line 1189
    :cond_1
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v4

    if-le v0, v1, :cond_0

    .line 1190
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1191
    iput-object v5, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1192
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1193
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    goto :goto_0
.end method

.method private saveSelectionPosition(FFFF)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1886
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1887
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1888
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1889
    return-void
.end method

.method private sendAccessibilityEvents()V
    .locals 4

    .prologue
    .line 1623
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1642
    :cond_0
    :goto_0
    return-void

    .line 1627
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1629
    .local v1, titleTextViewText:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mPrevTitleTextViewText:Ljava/lang/CharSequence;

    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    move v0, v2

    .line 1630
    .local v0, titleChanged:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 1631
    iput-object v1, p0, Lcom/android/calendar/CalendarView;->mPrevTitleTextViewText:Ljava/lang/CharSequence;

    .line 1632
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/calendar/CalendarView;->sendAccessibilityEvent(I)V

    .line 1636
    :cond_2
    if-nez v0, :cond_3

    iget v2, p0, Lcom/android/calendar/CalendarView;->mPrevSelectionDay:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/calendar/CalendarView;->mPrevSelectionHour:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-eq v2, v3, :cond_0

    .line 1638
    :cond_3
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iput v2, p0, Lcom/android/calendar/CalendarView;->mPrevSelectionDay:I

    .line 1639
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v2, p0, Lcom/android/calendar/CalendarView;->mPrevSelectionHour:I

    .line 1640
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/calendar/CalendarView;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 1629
    .end local v0           #titleChanged:Z
    :cond_4
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method private setSelectionFromPosition(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3135
    iget v2, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    if-ge p1, v2, :cond_0

    move v2, v5

    .line 3169
    :goto_0
    return v2

    .line 3139
    :cond_0
    iget v2, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v3, v3, 0x1

    div-int v0, v2, v3

    .line 3140
    .local v0, day:I
    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-lt v0, v2, :cond_1

    .line 3141
    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    sub-int v0, v2, v4

    .line 3143
    :cond_1
    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    add-int/2addr v0, v2

    .line 3145
    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_2

    .line 3146
    iput-boolean v4, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    .line 3153
    :goto_1
    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 3154
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/CalendarView;->findSelectedEvent(II)V

    move v2, v4

    .line 3169
    goto :goto_0

    .line 3148
    :cond_2
    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    div-int v1, v2, v3

    .line 3149
    .local v1, hour:I
    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/2addr v1, v2

    .line 3150
    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 3151
    iput-boolean v5, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    goto :goto_1
.end method

.method private switchViews(Z)V
    .locals 12
    .parameter "trackBallSelection"

    .prologue
    .line 917
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 919
    .local v6, selectedEvent:Lcom/android/calendar/Event;
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->dismiss()V

    .line 920
    const-wide/16 v9, -0x1

    iput-wide v9, p0, Lcom/android/calendar/CalendarView;->mLastPopupEventID:J

    .line 921
    iget v9, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 926
    if-eqz p1, :cond_1

    .line 927
    if-nez v6, :cond_0

    .line 929
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v7

    .line 930
    .local v7, startMillis:J
    const-wide/32 v9, 0x36ee80

    add-long v0, v7, v9

    .line 931
    .local v0, endMillis:J
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 932
    .local v3, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const-class v10, Lcom/android/calendar/EditEvent;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 933
    const-string v9, "beginTime"

    invoke-virtual {v3, v9, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 934
    const-string v9, "endTime"

    invoke-virtual {v3, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 935
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v9, v3}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 991
    .end local v0           #endMillis:J
    .end local v3           #intent:Landroid/content/Intent;
    .end local v7           #startMillis:J
    :goto_0
    return-void

    .line 938
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .restart local v3       #intent:Landroid/content/Intent;
    sget-object v9, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v6, Lcom/android/calendar/Event;->id:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 941
    .local v2, eventUri:Landroid/net/Uri;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 942
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const-class v10, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    const-string v9, "beginTime"

    iget-wide v10, v6, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 944
    const-string v9, "endTime"

    iget-wide v10, v6, Lcom/android/calendar/Event;->endMillis:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 945
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v9, v3}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 951
    .end local v2           #eventUri:Landroid/net/Uri;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 953
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 954
    .restart local v3       #intent:Landroid/content/Intent;
    sget-object v9, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v6, Lcom/android/calendar/Event;->id:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 956
    .restart local v2       #eventUri:Landroid/net/Uri;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 957
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const-class v10, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    const-string v9, "beginTime"

    iget-wide v10, v6, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 959
    const-string v9, "endTime"

    iget-wide v10, v6, Lcom/android/calendar/Event;->endMillis:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 960
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v9, v3}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 963
    .end local v2           #eventUri:Landroid/net/Uri;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v4

    .line 964
    .local v4, millis:J
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v10, p0, Lcom/android/calendar/CalendarView;->mDetailedView:Ljava/lang/String;

    invoke-static {v9, v10, v4, v5}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 971
    .end local v4           #millis:J
    :cond_3
    if-nez v6, :cond_4

    .line 973
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v7

    .line 974
    .restart local v7       #startMillis:J
    const-wide/32 v9, 0x36ee80

    add-long v0, v7, v9

    .line 975
    .restart local v0       #endMillis:J
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 976
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const-class v10, Lcom/android/calendar/EditEvent;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 977
    const-string v9, "beginTime"

    invoke-virtual {v3, v9, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 978
    const-string v9, "endTime"

    invoke-virtual {v3, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 979
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v9, v3}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 982
    .end local v0           #endMillis:J
    .end local v3           #intent:Landroid/content/Intent;
    .end local v7           #startMillis:J
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 983
    .restart local v3       #intent:Landroid/content/Intent;
    sget-object v9, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v6, Lcom/android/calendar/Event;->id:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 984
    .restart local v2       #eventUri:Landroid/net/Uri;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 985
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const-class v10, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    const-string v9, "beginTime"

    iget-wide v10, v6, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 987
    const-string v9, "endTime"

    iget-wide v10, v6, Lcom/android/calendar/Event;->endMillis:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 988
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v9, v3}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private updateEventDetails()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x0

    .line 2588
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2590
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2638
    :cond_1
    :goto_0
    return-void

    .line 2593
    :cond_2
    iget-wide v0, p0, Lcom/android/calendar/CalendarView;->mLastPopupEventID:J

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v2, v2, Lcom/android/calendar/Event;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2597
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    iput-wide v0, p0, Lcom/android/calendar/CalendarView;->mLastPopupEventID:J

    .line 2600
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDismissPopup:Lcom/android/calendar/CalendarView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2602
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 2603
    .local v7, event:Lcom/android/calendar/Event;
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 2604
    .local v11, titleView:Landroid/widget/TextView;
    iget-object v0, v7, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2606
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 2607
    .local v8, imageView:Landroid/widget/ImageView;
    iget-boolean v0, v7, Lcom/android/calendar/Event;->hasAlarm:Z

    if-eqz v0, :cond_5

    move v0, v13

    :goto_1
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2609
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #imageView:Landroid/widget/ImageView;
    check-cast v8, Landroid/widget/ImageView;

    .line 2610
    .restart local v8       #imageView:Landroid/widget/ImageView;
    iget-boolean v0, v7, Lcom/android/calendar/Event;->isRepeating:Z

    if-eqz v0, :cond_6

    move v0, v13

    :goto_2
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2613
    iget-boolean v0, v7, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v0, :cond_7

    .line 2614
    const v5, 0x82012

    .line 2621
    .local v5, flags:I
    :goto_3
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2622
    or-int/lit16 v5, v5, 0x80

    .line 2624
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-wide v1, v7, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v3, v7, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v9

    .line 2626
    .local v9, timeRange:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2627
    .local v10, timeView:Landroid/widget/TextView;
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2629
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2630
    .local v12, whereView:Landroid/widget/TextView;
    iget-object v0, v7, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 2631
    .local v6, empty:Z
    if-eqz v6, :cond_8

    move v0, v14

    :goto_4
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2632
    if-nez v6, :cond_4

    iget-object v0, v7, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2634
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x53

    iget v2, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    const/4 v3, 0x5

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2635
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mDismissPopup:Lcom/android/calendar/CalendarView$DismissPopup;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2637
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarView;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .end local v5           #flags:I
    .end local v6           #empty:Z
    .end local v9           #timeRange:Ljava/lang/String;
    .end local v10           #timeView:Landroid/widget/TextView;
    .end local v12           #whereView:Landroid/widget/TextView;
    :cond_5
    move v0, v14

    .line 2607
    goto :goto_1

    :cond_6
    move v0, v14

    .line 2610
    goto :goto_2

    .line 2617
    :cond_7
    const v5, 0x81413

    .restart local v5       #flags:I
    goto :goto_3

    .restart local v6       #empty:Z
    .restart local v9       #timeRange:Ljava/lang/String;
    .restart local v10       #timeView:Landroid/widget/TextView;
    .restart local v12       #whereView:Landroid/widget/TextView;
    :cond_8
    move v0, v13

    .line 2631
    goto :goto_4
.end method


# virtual methods
.method public cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3383
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3384
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3386
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/calendar/CalendarView;->mLastPopupEventID:J

    .line 3387
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3388
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 3389
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDismissPopup:Lcom/android/calendar/CalendarView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3390
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mUpdateCurrentTime:Lcom/android/calendar/CalendarView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3394
    :cond_1
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 3395
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 3398
    iput v3, p0, Lcom/android/calendar/CalendarView;->mPrevSelectionDay:I

    .line 3399
    iput v3, p0, Lcom/android/calendar/CalendarView;->mPrevSelectionHour:I

    .line 3400
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/CalendarView;->mPrevTitleTextViewText:Ljava/lang/CharSequence;

    .line 3401
    return-void
.end method

.method clearCachedEvents()V
    .locals 2

    .prologue
    .line 1273
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/CalendarView;->mLastReloadMillis:J

    .line 1274
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 29
    .parameter "event"

    .prologue
    .line 1657
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_4

    .line 1659
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1661
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1732
    :cond_0
    :goto_0
    const/16 v26, 0x0

    .line 1733
    .local v26, todayEventCount:I
    const/16 v18, 0x0

    .line 1734
    .local v18, sameHourEventCount:I
    const/4 v13, 0x0

    .line 1735
    .local v13, currentSameHourEventIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    move v4, v0

    mul-int/lit8 v21, v4, 0x3c

    .line 1736
    .local v21, selectionHourStart:I
    add-int/lit8 v20, v21, 0x3c

    .line 1737
    .local v20, selectionHourEnd:I
    const/16 v17, 0x0

    .local v17, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, count:I
    :goto_1
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_a

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/calendar/Event;

    .line 1739
    .local v11, calendarEvent:Lcom/android/calendar/Event;
    iget v4, v11, Lcom/android/calendar/Event;->endDay:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move v5, v0

    if-ne v4, v5, :cond_1

    .line 1740
    add-int/lit8 v26, v26, 0x1

    .line 1741
    iget v4, v11, Lcom/android/calendar/Event;->endTime:I

    move/from16 v0, v21

    move v1, v4

    if-ge v0, v1, :cond_1

    iget v4, v11, Lcom/android/calendar/Event;->startTime:I

    move/from16 v0, v20

    move v1, v4

    if-gt v0, v1, :cond_8

    .line 1737
    :cond_1
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1665
    .end local v11           #calendarEvent:Lcom/android/calendar/Event;
    .end local v12           #count:I
    .end local v13           #currentSameHourEventIndex:I
    .end local v17           #i:I
    .end local v18           #sameHourEventCount:I
    .end local v20           #selectionHourEnd:I
    .end local v21           #selectionHourStart:I
    .end local v26           #todayEventCount:I
    :cond_2
    const v9, 0x11416

    .line 1668
    .local v9, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1669
    or-int/lit16 v9, v9, 0x80

    .line 1672
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    .line 1673
    .local v22, start:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v4, v0

    iget-wide v15, v4, Landroid/text/format/Time;->gmtoff:J

    .line 1674
    .local v15, gmtOff:J
    move-wide/from16 v0, v22

    move-wide v2, v15

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v14

    .line 1676
    .local v14, firstJulianDay:I
    new-instance v24, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v4, v0

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1677
    .local v24, time:Landroid/text/format/Time;
    move-object/from16 v0, v24

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1678
    const/4 v4, 0x1

    move-object/from16 v0, v24

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 1679
    .local v5, startTime:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v4, v0

    add-int/2addr v4, v14

    move-object/from16 v0, v24

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1680
    const/4 v4, 0x1

    move-object/from16 v0, v24

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v7

    .line 1682
    .local v7, endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v25

    .line 1684
    .local v25, timeRange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1686
    .end local v5           #startTime:J
    .end local v7           #endTime:J
    .end local v9           #flags:I
    .end local v14           #firstJulianDay:I
    .end local v15           #gmtOff:J
    .end local v22           #start:J
    .end local v24           #time:Landroid/text/format/Time;
    .end local v25           #timeRange:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 1687
    const/4 v9, 0x0

    .line 1689
    .restart local v9       #flags:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 1691
    const/16 v9, 0x1401

    .line 1696
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v5

    .line 1697
    .restart local v5       #startTime:J
    const-wide/32 v27, 0x36ee80

    add-long v7, v5, v27

    .line 1698
    .restart local v7       #endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1699
    or-int/lit16 v9, v9, 0x80

    .line 1701
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v25

    .line 1703
    .restart local v25       #timeRange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v4, v0

    if-eqz v4, :cond_0

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v19, v0

    .line 1708
    .local v19, selectedEvent:Lcom/android/calendar/Event;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mTempEventBundle:Landroid/os/Bundle;

    move-object v4, v0

    if-nez v4, :cond_6

    .line 1709
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mTempEventBundle:Landroid/os/Bundle;

    .line 1711
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mTempEventBundle:Landroid/os/Bundle;

    move-object v10, v0

    .line 1712
    .local v10, bundle:Landroid/os/Bundle;
    invoke-virtual {v10}, Landroid/os/Bundle;->clear()V

    .line 1713
    const-string v4, "id"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v27, v0

    move-object v0, v10

    move-object v1, v4

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1714
    const-string v4, "color"

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/Event;->color:I

    move v5, v0

    .end local v5           #startTime:J
    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1715
    const-string v4, "title"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1716
    const-string v4, "location"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1717
    const-string v4, "allDay"

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/calendar/Event;->allDay:Z

    move v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1718
    const-string v4, "startDay"

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1719
    const-string v4, "endDay"

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1720
    const-string v4, "startTime"

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1721
    const-string v4, "endTime"

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1722
    const-string v4, "startMillis"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v27, v0

    move-object v0, v10

    move-object v1, v4

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1723
    const-string v4, "endMillis"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v27, v0

    move-object v0, v10

    move-object v1, v4

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1724
    const-string v4, "organizer"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    const-string v4, "guestsCanModify"

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/calendar/Event;->guestsCanModify:Z

    move v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1726
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 1693
    .end local v7           #endTime:J
    .end local v10           #bundle:Landroid/os/Bundle;
    .end local v19           #selectedEvent:Lcom/android/calendar/Event;
    .end local v25           #timeRange:Ljava/lang/String;
    :cond_7
    const/16 v9, 0x1413

    goto/16 :goto_3

    .line 1745
    .end local v9           #flags:I
    .restart local v11       #calendarEvent:Lcom/android/calendar/Event;
    .restart local v12       #count:I
    .restart local v13       #currentSameHourEventIndex:I
    .restart local v17       #i:I
    .restart local v18       #sameHourEventCount:I
    .restart local v20       #selectionHourEnd:I
    .restart local v21       #selectionHourStart:I
    .restart local v26       #todayEventCount:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v4, v0

    if-ne v11, v4, :cond_9

    .line 1746
    move/from16 v13, v18

    .line 1748
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 1751
    .end local v11           #calendarEvent:Lcom/android/calendar/Event;
    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 1752
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1753
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1755
    const/4 v4, 0x1

    return v4
.end method

.method doDown(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 2644
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 2645
    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    .line 2646
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mOnFlingCalled:Z

    .line 2647
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2648
    return-void
.end method

.method doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v9, 0x0

    .line 2781
    iput v9, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 2782
    iput v9, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 2783
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mOnFlingCalled:Z

    .line 2784
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    sub-int v0, v6, v7

    .line 2785
    .local v0, deltaX:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2786
    .local v2, distanceX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    sub-int v1, v6, v7

    .line 2787
    .local v1, deltaY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2789
    .local v3, distanceY:I
    sget v6, Lcom/android/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-lt v2, v6, :cond_0

    if-le v2, v3, :cond_0

    .line 2790
    invoke-direct {p0, v0}, Lcom/android/calendar/CalendarView;->initNextView(I)Z

    move-result v4

    .line 2791
    .local v4, switchForward:Z
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v6}, Lcom/android/calendar/CalendarActivity;->getNextView()Lcom/android/calendar/CalendarView;

    move-result-object v5

    .line 2792
    .local v5, view:Lcom/android/calendar/CalendarView;
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v7, v5, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2793
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget v7, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    int-to-float v8, v8

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/calendar/CalendarActivity;->switchViews(ZFF)Landroid/view/View;

    .line 2794
    iput v9, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    .line 2801
    .end local v4           #switchForward:Z
    .end local v5           #view:Lcom/android/calendar/CalendarView;
    :goto_0
    return-void

    .line 2799
    :cond_0
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

    float-to-int v7, p4

    div-int/lit8 v7, v7, 0x14

    invoke-virtual {v6, v7}, Lcom/android/calendar/CalendarView$ContinueScroll;->init(I)V

    .line 2800
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

    invoke-virtual {p0, v6}, Lcom/android/calendar/CalendarView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method doLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "ev"

    .prologue
    .line 2684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 2685
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 2687
    .local v2, y:I
    invoke-direct {p0, v1, v2}, Lcom/android/calendar/CalendarView;->setSelectionFromPosition(II)Z

    move-result v0

    .line 2688
    .local v0, validPosition:Z
    if-nez v0, :cond_0

    .line 2697
    :goto_0
    return-void

    .line 2693
    :cond_0
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 2694
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 2695
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 2696
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->performLongClick()Z

    goto :goto_0
.end method

.method doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2703
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    sub-int v3, v6, v7

    .line 2704
    .local v3, distanceX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    sub-int v4, v6, v7

    .line 2708
    .local v4, distanceY:I
    iget v6, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    if-ne v6, v9, :cond_5

    .line 2709
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2710
    .local v0, absDistanceX:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2711
    .local v1, absDistanceY:I
    iget v6, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iput v6, p0, Lcom/android/calendar/CalendarView;->mScrollStartY:I

    .line 2712
    iput v8, p0, Lcom/android/calendar/CalendarView;->mPreviousDistanceX:I

    .line 2713
    iput v8, p0, Lcom/android/calendar/CalendarView;->mPreviousDirection:I

    .line 2717
    mul-int/lit8 v6, v1, 0x2

    if-lt v0, v6, :cond_4

    .line 2718
    const/16 v6, 0x40

    iput v6, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 2719
    iput v3, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    .line 2720
    iget v6, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    neg-int v6, v6

    invoke-direct {p0, v6}, Lcom/android/calendar/CalendarView;->initNextView(I)Z

    .line 2761
    .end local v0           #absDistanceX:I
    .end local v1           #absDistanceY:I
    :cond_0
    :goto_0
    iget v6, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_2

    .line 2762
    iget v6, p0, Lcom/android/calendar/CalendarView;->mScrollStartY:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 2763
    iget v6, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    if-gez v6, :cond_c

    .line 2764
    iput v8, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 2768
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->computeFirstHour()V

    .line 2771
    :cond_2
    iput-boolean v9, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 2773
    iget v6, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v6, :cond_3

    .line 2774
    iput v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 2775
    iput-boolean v9, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 2777
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 2778
    return-void

    .line 2722
    .restart local v0       #absDistanceX:I
    .restart local v1       #absDistanceY:I
    :cond_4
    const/16 v6, 0x20

    iput v6, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    goto :goto_0

    .line 2724
    .end local v0           #absDistanceX:I
    .end local v1           #absDistanceY:I
    :cond_5
    iget v6, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_0

    .line 2728
    iput v3, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    .line 2729
    if-eqz v3, :cond_6

    .line 2730
    if-lez v3, :cond_8

    move v2, v9

    .line 2731
    .local v2, direction:I
    :goto_2
    iget v6, p0, Lcom/android/calendar/CalendarView;->mPreviousDirection:I

    if-eq v2, v6, :cond_6

    .line 2734
    iget v6, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    neg-int v6, v6

    invoke-direct {p0, v6}, Lcom/android/calendar/CalendarView;->initNextView(I)Z

    .line 2735
    iput v2, p0, Lcom/android/calendar/CalendarView;->mPreviousDirection:I

    .line 2742
    .end local v2           #direction:I
    :cond_6
    sget v6, Lcom/android/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-lt v3, v6, :cond_9

    .line 2743
    iget v6, p0, Lcom/android/calendar/CalendarView;->mPreviousDistanceX:I

    sget v7, Lcom/android/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-ge v6, v7, :cond_7

    .line 2744
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v6}, Lcom/android/calendar/CalendarActivity;->getNextView()Lcom/android/calendar/CalendarView;

    move-result-object v5

    .line 2745
    .local v5, view:Lcom/android/calendar/CalendarView;
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v7, v5, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2758
    .end local v5           #view:Lcom/android/calendar/CalendarView;
    :cond_7
    :goto_3
    iput v3, p0, Lcom/android/calendar/CalendarView;->mPreviousDistanceX:I

    goto :goto_0

    .line 2730
    :cond_8
    const/4 v6, -0x1

    move v2, v6

    goto :goto_2

    .line 2747
    :cond_9
    sget v6, Lcom/android/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    neg-int v6, v6

    if-gt v3, v6, :cond_a

    .line 2748
    iget v6, p0, Lcom/android/calendar/CalendarView;->mPreviousDistanceX:I

    sget v7, Lcom/android/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    neg-int v7, v7

    if-le v6, v7, :cond_7

    .line 2749
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v6}, Lcom/android/calendar/CalendarActivity;->getNextView()Lcom/android/calendar/CalendarView;

    move-result-object v5

    .line 2750
    .restart local v5       #view:Lcom/android/calendar/CalendarView;
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v7, v5, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2753
    .end local v5           #view:Lcom/android/calendar/CalendarView;
    :cond_a
    iget v6, p0, Lcom/android/calendar/CalendarView;->mPreviousDistanceX:I

    sget v7, Lcom/android/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-ge v6, v7, :cond_b

    iget v6, p0, Lcom/android/calendar/CalendarView;->mPreviousDistanceX:I

    sget v7, Lcom/android/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    neg-int v7, v7

    if-gt v6, v7, :cond_7

    .line 2755
    :cond_b
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2765
    :cond_c
    iget v6, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v7, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    if-le v6, v7, :cond_1

    .line 2766
    iget v6, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    iput v6, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto/16 :goto_1
.end method

.method doSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "ev"

    .prologue
    .line 2651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 2652
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 2653
    .local v5, y:I
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 2654
    .local v1, selectedDay:I
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 2656
    .local v2, selectedHour:I
    invoke-direct {p0, v4, v5}, Lcom/android/calendar/CalendarView;->setSelectionFromPosition(II)Z

    move-result v3

    .line 2657
    .local v3, validPosition:Z
    if-nez v3, :cond_1

    .line 2681
    :cond_0
    :goto_0
    return-void

    .line 2662
    :cond_1
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 2663
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 2664
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 2666
    const/4 v0, 0x0

    .line 2667
    .local v0, launchNewView:Z
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v6, :cond_3

    .line 2669
    const/4 v0, 0x1

    .line 2678
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 2679
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    goto :goto_0

    .line 2670
    :cond_3
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v6, :cond_2

    iget v6, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-ne v1, v6, :cond_2

    iget v6, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-ne v2, v6, :cond_2

    .line 2675
    const/4 v0, 0x1

    goto :goto_1
.end method

.method drawAllDayEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;
    .locals 4
    .parameter "event"
    .parameter "canvas"
    .parameter "p"
    .parameter "eventTextPaint"

    .prologue
    const/high16 v3, 0x4000

    .line 2076
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v1, p1, :cond_0

    .line 2078
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 2079
    sget v1, Lcom/android/calendar/CalendarView;->mSelectionColor:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2080
    sget v1, Lcom/android/calendar/CalendarView;->mSelectedEventTextColor:I

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2087
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mRectF:Landroid/graphics/RectF;

    .line 2088
    .local v0, rf:Landroid/graphics/RectF;
    iget v1, p1, Lcom/android/calendar/Event;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 2089
    iget v1, p1, Lcom/android/calendar/Event;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 2090
    iget v1, p1, Lcom/android/calendar/Event;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2091
    iget v1, p1, Lcom/android/calendar/Event;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 2092
    sget v1, Lcom/android/calendar/CalendarView;->SMALL_ROUND_RADIUS:F

    sget v2, Lcom/android/calendar/CalendarView;->SMALL_ROUND_RADIUS:F

    invoke-virtual {p2, v0, v1, v2, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2094
    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2095
    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 2096
    return-object v0

    .line 2083
    .end local v0           #rf:Landroid/graphics/RectF;
    :cond_0
    iget v1, p1, Lcom/android/calendar/Event;->color:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2084
    sget v1, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method getNewEvent()Lcom/android/calendar/Event;
    .locals 4

    .prologue
    .line 1853
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedMinutesSinceMidnight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/CalendarView;->getNewEvent(IJI)Lcom/android/calendar/Event;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDay()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 652
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 653
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 654
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 659
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 660
    return-object v0
.end method

.method getSelectedEvent()Lcom/android/calendar/Event;
    .locals 4

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v0, :cond_0

    .line 1842
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedMinutesSinceMidnight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/CalendarView;->getNewEvent(IJI)Lcom/android/calendar/Event;

    move-result-object v0

    .line 1845
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto :goto_0
.end method

.method getSelectedMinutesSinceMidnight()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    mul-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method getSelectedTime()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 609
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 610
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 611
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 616
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 617
    return-object v0
.end method

.method getSelectedTimeInMillis()J
    .locals 3

    .prologue
    .line 598
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 599
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 600
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 605
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method isEventSelected()Z
    .locals 1

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopupView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 583
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    .line 585
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 2892
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2893
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 2894
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 2895
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 2898
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v1

    .line 2899
    .local v1, startMillis:J
    const/16 v5, 0x1403

    .line 2902
    .local v5, flags:I
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v9

    .line 2904
    .local v9, title:Ljava/lang/String;
    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2906
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2907
    .local v8, numSelectedEvents:I
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2912
    .end local v1           #startMillis:J
    const/4 v0, 0x1

    if-lt v8, v0, :cond_3

    .line 2913
    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const v3, 0x7f080010

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2914
    .local v7, item:Landroid/view/MenuItem;
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2915
    const v0, 0x1080041

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2917
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-static {v0, v1}, Lcom/android/calendar/CalendarView;->getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I

    move-result v6

    .line 2918
    .local v6, accessLevel:I
    const/4 v0, 0x2

    if-ne v6, v0, :cond_1

    .line 2919
    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const v3, 0x7f080012

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2920
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2921
    const v0, 0x108003e

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2922
    const/16 v0, 0x65

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2925
    :cond_1
    const/4 v0, 0x1

    if-lt v6, v0, :cond_2

    .line 2926
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x7f080013

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2927
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2928
    const v0, 0x108003c

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2931
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const v3, 0x7f080011

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2932
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2933
    const v0, 0x1080033

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2934
    const/16 v0, 0x6e

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3000
    .end local v6           #accessLevel:I
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3001
    return-void

    .line 2938
    .end local v7           #item:Landroid/view/MenuItem;
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const v3, 0x7f080011

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2939
    .restart local v7       #item:Landroid/view/MenuItem;
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2940
    const v0, 0x1080033

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2941
    const/16 v0, 0x6e

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_0

    .line 2948
    .end local v7           #item:Landroid/view/MenuItem;
    :cond_4
    const/4 v0, 0x1

    if-lt v8, v0, :cond_7

    .line 2949
    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const v3, 0x7f080010

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2950
    .restart local v7       #item:Landroid/view/MenuItem;
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2951
    const v0, 0x1080041

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2953
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-static {v0, v1}, Lcom/android/calendar/CalendarView;->getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I

    move-result v6

    .line 2954
    .restart local v6       #accessLevel:I
    const/4 v0, 0x2

    if-ne v6, v0, :cond_5

    .line 2955
    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const v3, 0x7f080012

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2956
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2957
    const v0, 0x108003e

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2958
    const/16 v0, 0x65

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2961
    :cond_5
    const/4 v0, 0x1

    if-lt v6, v0, :cond_6

    .line 2962
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x7f080013

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2963
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2964
    const v0, 0x108003c

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2967
    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const v3, 0x7f080011

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2968
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2969
    const v0, 0x1080033

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2970
    const/16 v0, 0x6e

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2972
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const v3, 0x7f08000b

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2973
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2974
    const v0, 0x108003b

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2975
    const/16 v0, 0x64

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2977
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const v3, 0x7f08000a

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2978
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2979
    const v0, 0x1080034

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2980
    const/16 v0, 0x61

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2983
    .end local v6           #accessLevel:I
    .end local v7           #item:Landroid/view/MenuItem;
    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const v3, 0x7f080011

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2984
    .restart local v7       #item:Landroid/view/MenuItem;
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2985
    const v0, 0x1080033

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2986
    const/16 v0, 0x6e

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2988
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const v3, 0x7f08000b

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2989
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2990
    const v0, 0x108003b

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2991
    const/16 v0, 0x64

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2993
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const v3, 0x7f08000a

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 2994
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContextMenuHandler:Lcom/android/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2995
    const v0, 0x1080034

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2996
    const/16 v0, 0x61

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 3412
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->cleanup()V

    .line 3413
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3414
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    .line 3417
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 3418
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1325
    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    if-eqz v1, :cond_0

    .line 1326
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/CalendarView;->remeasure(II)V

    .line 1327
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 1330
    :cond_0
    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_1

    .line 1331
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Lcom/android/calendar/CalendarView;->doDraw(Landroid/graphics/Canvas;)V

    .line 1332
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1335
    :cond_1
    iget v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    .line 1336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1337
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    if-lez v1, :cond_5

    .line 1338
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1342
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarActivity;->getNextView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    .line 1345
    .local v0, nextView:Lcom/android/calendar/CalendarView;
    iput v3, v0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 1347
    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1348
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1349
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1350
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1353
    .end local v0           #nextView:Lcom/android/calendar/CalendarView;
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1354
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;->drawCalendarView(Landroid/graphics/Canvas;)V

    .line 1358
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;->drawAfterScroll(Landroid/graphics/Canvas;)V

    .line 1359
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1361
    iget v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    .line 1362
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1365
    :cond_4
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->sendAccessibilityEvents()V

    .line 1366
    return-void

    .line 1340
    :cond_5
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    add-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 19
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1039
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    move v3, v0

    if-nez v3, :cond_2

    .line 1040
    const/16 v3, 0x42

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_0

    const/16 v3, 0x16

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_0

    const/16 v3, 0x15

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_0

    const/16 v3, 0x13

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_0

    const/16 v3, 0x14

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_1

    .line 1045
    :cond_0
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 1046
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1047
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 1048
    const/4 v3, 0x1

    .line 1178
    :goto_0
    return v3

    .line 1049
    :cond_1
    const/16 v3, 0x17

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_2

    .line 1052
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 1053
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1054
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 1055
    const/4 v3, 0x1

    goto :goto_0

    .line 1059
    :cond_2
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 1060
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 1062
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move v15, v0

    .line 1064
    .local v15, selectionDay:I
    sparse-switch p1, :sswitch_data_0

    .line 1145
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 1067
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v14, v0

    .line 1068
    .local v14, selectedEvent:Lcom/android/calendar/Event;
    if-nez v14, :cond_3

    .line 1069
    const/4 v3, 0x0

    goto :goto_0

    .line 1071
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1072
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/CalendarView;->mLastPopupEventID:J

    .line 1074
    iget-wide v4, v14, Lcom/android/calendar/Event;->startMillis:J

    .line 1075
    .local v4, begin:J
    iget-wide v6, v14, Lcom/android/calendar/Event;->endMillis:J

    .line 1076
    .local v6, end:J
    iget-wide v8, v14, Lcom/android/calendar/Event;->id:J

    .line 1077
    .local v8, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    move-object v3, v0

    const/4 v10, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 1078
    const/4 v3, 0x1

    goto :goto_0

    .line 1080
    .end local v4           #begin:J
    .end local v6           #end:J
    .end local v8           #id:J
    .end local v14           #selectedEvent:Lcom/android/calendar/Event;
    :sswitch_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    .line 1081
    const/4 v3, 0x1

    goto :goto_0

    .line 1083
    :sswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 1084
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1085
    const/4 v3, 0x1

    goto :goto_0

    .line 1087
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 1089
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-eqz v3, :cond_5

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1092
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-nez v3, :cond_6

    .line 1093
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/CalendarView;->mLastPopupEventID:J

    .line 1094
    add-int/lit8 v15, v15, -0x1

    .line 1096
    :cond_6
    const/4 v13, 0x1

    .line 1148
    .local v13, redraw:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    move v3, v0

    if-lt v15, v3, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    move v3, v0

    if-le v15, v3, :cond_10

    .line 1150
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/calendar/CalendarActivity;->getNextView()Lcom/android/calendar/CalendarView;

    move-result-object v16

    .line 1151
    .local v16, view:Lcom/android/calendar/CalendarView;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v11, v0

    .line 1152
    .local v11, date:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object v3, v0

    invoke-virtual {v11, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    move v3, v0

    if-ge v15, v3, :cond_f

    .line 1154
    iget v3, v11, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v4, v0

    sub-int/2addr v3, v4

    iput v3, v11, Landroid/text/format/Time;->monthDay:I

    .line 1155
    const/4 v12, 0x0

    .line 1160
    .local v12, forward:Z
    :goto_2
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1161
    move v0, v15

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 1163
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/calendar/CalendarView;->initView(Lcom/android/calendar/CalendarView;)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    move-object v3, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v12, v4, v5}, Lcom/android/calendar/CalendarActivity;->switchViews(ZFF)Landroid/view/View;

    .line 1166
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1100
    .end local v11           #date:Landroid/text/format/Time;
    .end local v12           #forward:Z
    .end local v13           #redraw:Z
    .end local v16           #view:Lcom/android/calendar/CalendarView;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-eqz v3, :cond_8

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1103
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-nez v3, :cond_9

    .line 1104
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/CalendarView;->mLastPopupEventID:J

    .line 1105
    add-int/lit8 v15, v15, 0x1

    .line 1107
    :cond_9
    const/4 v13, 0x1

    .line 1108
    .restart local v13       #redraw:Z
    goto/16 :goto_1

    .line 1111
    .end local v13           #redraw:Z
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-eqz v3, :cond_a

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1114
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-nez v3, :cond_b

    .line 1115
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/CalendarView;->mLastPopupEventID:J

    .line 1116
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    move v3, v0

    if-nez v3, :cond_b

    .line 1117
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    move v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1118
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->adjustHourSelection()V

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1120
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1123
    :cond_b
    const/4 v13, 0x1

    .line 1124
    .restart local v13       #redraw:Z
    goto/16 :goto_1

    .line 1127
    .end local v13           #redraw:Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-eqz v3, :cond_c

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1130
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-nez v3, :cond_d

    .line 1131
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/CalendarView;->mLastPopupEventID:J

    .line 1132
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    move v3, v0

    if-eqz v3, :cond_e

    .line 1133
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    .line 1141
    :cond_d
    :goto_3
    const/4 v13, 0x1

    .line 1142
    .restart local v13       #redraw:Z
    goto/16 :goto_1

    .line 1135
    .end local v13           #redraw:Z
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1136
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->adjustHourSelection()V

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1138
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    goto :goto_3

    .line 1157
    .restart local v11       #date:Landroid/text/format/Time;
    .restart local v13       #redraw:Z
    .restart local v16       #view:Lcom/android/calendar/CalendarView;
    :cond_f
    iget v3, v11, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move v4, v0

    add-int/2addr v3, v4

    iput v3, v11, Landroid/text/format/Time;->monthDay:I

    .line 1158
    const/4 v12, 0x1

    .restart local v12       #forward:Z
    goto/16 :goto_2

    .line 1168
    .end local v11           #date:Landroid/text/format/Time;
    .end local v12           #forward:Z
    .end local v16           #view:Lcom/android/calendar/CalendarView;
    :cond_10
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1170
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1172
    if-eqz v13, :cond_11

    .line 1173
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1174
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 1175
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1178
    :cond_11
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 1064
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 995
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 996
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 998
    .local v0, duration:J
    sparse-switch p1, :sswitch_data_0

    .line 1034
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 1000
    :sswitch_0
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v2, :cond_0

    .line 1005
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-ne v2, v6, :cond_1

    .line 1010
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 1011
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1012
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto :goto_0

    .line 1017
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 1018
    invoke-direct {p0, v6}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    goto :goto_0

    .line 1020
    :cond_2
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 1021
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1022
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 1023
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->performLongClick()Z

    goto :goto_0

    .line 1027
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1028
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1029
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarActivity;->finish()V

    move v2, v6

    .line 1030
    goto :goto_1

    .line 998
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 731
    iput p1, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    .line 732
    iput p2, p0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    .line 733
    iget v5, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    sub-int v2, p1, v5

    .line 734
    .local v2, gridAreaWidth:I
    iget v5, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v2, v5

    iget v6, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    .line 736
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 737
    .local v3, p:Landroid/graphics/Paint;
    sget v5, Lcom/android/calendar/CalendarView;->NORMAL_FONT_SIZE:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 738
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 740
    .local v1, bannerTextHeight:I
    sget v5, Lcom/android/calendar/CalendarView;->HOURS_FONT_SIZE:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 741
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/calendar/CalendarView;->mHoursTextHeight:I

    .line 743
    sget v5, Lcom/android/calendar/CalendarView;->EVENT_TEXT_FONT_SIZE:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 744
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    neg-float v0, v5

    .line 745
    .local v0, ascent:F
    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p0, Lcom/android/calendar/CalendarView;->mEventTextAscent:I

    .line 746
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v5

    add-float v4, v0, v5

    .line 747
    .local v4, totalHeight:F
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p0, Lcom/android/calendar/CalendarView;->mEventTextHeight:I

    .line 749
    iget v5, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 750
    add-int/lit8 v5, v1, 0xe

    iput v5, p0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    .line 755
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/CalendarView;->remeasure(II)V

    .line 756
    return-void

    .line 752
    :cond_0
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/calendar/CalendarView;->mBannerPlusMargin:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2827
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2829
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 2879
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v5

    .line 2882
    :goto_0
    return v1

    .line 2831
    :pswitch_0
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v1, v5

    .line 2832
    goto :goto_0

    .line 2835
    :pswitch_1
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v1, v5

    .line 2836
    goto :goto_0

    .line 2839
    :pswitch_2
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2840
    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mOnFlingCalled:Z

    if-eqz v1, :cond_0

    move v1, v5

    .line 2841
    goto :goto_0

    .line 2843
    :cond_0
    iget v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3

    .line 2844
    iput v6, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 2845
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Lcom/android/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-le v1, v2, :cond_2

    .line 2847
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget v2, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    if-lez v2, :cond_1

    move v2, v5

    :goto_1
    iget v3, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/calendar/CalendarActivity;->switchViews(ZFF)Landroid/view/View;

    .line 2848
    iput v6, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    move v1, v5

    .line 2849
    goto :goto_0

    :cond_1
    move v2, v6

    .line 2847
    goto :goto_1

    .line 2854
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->recalc()V

    .line 2855
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2856
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 2857
    iput v6, p0, Lcom/android/calendar/CalendarView;->mViewStartX:I

    .line 2863
    :cond_3
    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    if-eqz v1, :cond_4

    .line 2864
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 2865
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->resetSelectedHour()V

    .line 2866
    iput-boolean v5, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 2867
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    :cond_4
    move v1, v5

    .line 2869
    goto :goto_0

    .line 2873
    :pswitch_3
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2874
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 2875
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->resetSelectedHour()V

    move v1, v5

    .line 2876
    goto :goto_0

    .line 2882
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 2829
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method reloadEvents()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1285
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    if-nez v0, :cond_1

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1289
    :cond_1
    iput-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1290
    iput-object v1, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1291
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1294
    new-instance v7, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1295
    .local v7, weekStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1296
    iput v5, v7, Landroid/text/format/Time;->hour:I

    .line 1297
    iput v5, v7, Landroid/text/format/Time;->minute:I

    .line 1298
    iput v5, v7, Landroid/text/format/Time;->second:I

    .line 1299
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 1302
    .local v3, millis:J
    iget-wide v0, p0, Lcom/android/calendar/CalendarView;->mLastReloadMillis:J

    cmp-long v0, v3, v0

    if-eqz v0, :cond_0

    .line 1305
    iput-wide v3, p0, Lcom/android/calendar/CalendarView;->mLastReloadMillis:J

    .line 1308
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->startProgressSpinner()V

    .line 1309
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventLoader:Lcom/android/calendar/EventLoader;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    new-instance v5, Lcom/android/calendar/CalendarView$3;

    invoke-direct {v5, p0, v2}, Lcom/android/calendar/CalendarView$3;-><init>(Lcom/android/calendar/CalendarView;Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mCancelCallback:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 1649
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1653
    :goto_0
    return-void

    .line 1652
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method setDetailedView(Ljava/lang/String;)V
    .locals 0
    .parameter "detailedView"

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mDetailedView:Ljava/lang/String;

    .line 727
    return-void
.end method

.method public setSelectedDay(Landroid/text/format/Time;)V
    .locals 5
    .parameter "time"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 630
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 631
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 632
    iput-object v3, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 633
    iput-object v3, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 634
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 635
    .local v0, millis:J
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 636
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 637
    iput-boolean v4, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 640
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 641
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->recalc()V

    .line 642
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 646
    iput-boolean v4, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 647
    iput-boolean v4, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 648
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 649
    return-void
.end method

.method public updateIs24HourFormat()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mIs24HourFormat:Z

    .line 589
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mIs24HourFormat:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/calendar/CalendarData;->s24Hours:[Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    .line 590
    return-void

    .line 589
    :cond_0
    sget-object v0, Lcom/android/calendar/CalendarData;->s12HoursNoAmPm:[Ljava/lang/String;

    goto :goto_0
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 3407
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3408
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mUpdateCurrentTime:Lcom/android/calendar/CalendarView$UpdateCurrentTime;

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarView;->post(Ljava/lang/Runnable;)Z

    .line 3409
    return-void
.end method
