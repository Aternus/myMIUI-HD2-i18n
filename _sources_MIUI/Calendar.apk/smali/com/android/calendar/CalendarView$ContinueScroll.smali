.class Lcom/android/calendar/CalendarView$ContinueScroll;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinueScroll"
.end annotation


# static fields
.field private static final FREE_SPIN_MILLIS:J = 0xb4L

.field private static final FRICTION_COEF:F = 0.7f

.field private static final MAX_DELTA:I = 0x3c

.field private static final SCROLL_REPEAT_INTERVAL:I = 0x1e


# instance fields
.field mAbsDeltaY:I

.field mFloatDeltaY:F

.field mFreeSpinTime:J

.field mSignDeltaY:I

.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/CalendarView;)V
    .locals 0
    .parameter

    .prologue
    .line 3299
    iput-object p1, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3299
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView$ContinueScroll;-><init>(Lcom/android/calendar/CalendarView;)V

    return-void
.end method


# virtual methods
.method public init(I)V
    .locals 4
    .parameter "deltaY"

    .prologue
    const/16 v1, 0x3c

    .line 3310
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mSignDeltaY:I

    .line 3311
    if-lez p1, :cond_2

    .line 3312
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mSignDeltaY:I

    .line 3316
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    .line 3319
    iget v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    if-le v0, v1, :cond_1

    .line 3320
    iput v1, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    .line 3322
    :cond_1
    iget v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFloatDeltaY:F

    .line 3323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xb4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFreeSpinTime:J

    .line 3326
    return-void

    .line 3313
    :cond_2
    if-gez p1, :cond_0

    .line 3314
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mSignDeltaY:I

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3332
    .local v0, time:J
    iget-wide v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFreeSpinTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 3335
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_2

    .line 3336
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    .line 3342
    :goto_0
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    if-gez v2, :cond_0

    .line 3343
    iput v4, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    .line 3347
    :cond_0
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mSignDeltaY:I

    if-ne v2, v5, :cond_3

    .line 3348
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    iget v3, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    invoke-static {v2, v3}, Lcom/android/calendar/CalendarView;->access$1520(Lcom/android/calendar/CalendarView;I)I

    .line 3355
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mViewStartY:I
    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1500(Lcom/android/calendar/CalendarView;)I

    move-result v2

    if-gez v2, :cond_4

    .line 3356
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    #setter for: Lcom/android/calendar/CalendarView;->mViewStartY:I
    invoke-static {v2, v4}, Lcom/android/calendar/CalendarView;->access$1502(Lcom/android/calendar/CalendarView;I)I

    .line 3357
    iput v4, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    .line 3363
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    #calls: Lcom/android/calendar/CalendarView;->computeFirstHour()V
    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1700(Lcom/android/calendar/CalendarView;)V

    .line 3365
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    if-lez v2, :cond_5

    .line 3366
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3374
    :goto_3
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 3375
    return-void

    .line 3338
    :cond_2
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFloatDeltaY:F

    const v3, 0x3f333333

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFloatDeltaY:F

    .line 3339
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFloatDeltaY:F

    float-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    goto :goto_0

    .line 3350
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    iget v3, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    invoke-static {v2, v3}, Lcom/android/calendar/CalendarView;->access$1512(Lcom/android/calendar/CalendarView;I)I

    goto :goto_1

    .line 3358
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mViewStartY:I
    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1500(Lcom/android/calendar/CalendarView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mMaxViewStartY:I
    invoke-static {v3}, Lcom/android/calendar/CalendarView;->access$1600(Lcom/android/calendar/CalendarView;)I

    move-result v3

    if-le v2, v3, :cond_1

    .line 3359
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v3, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mMaxViewStartY:I
    invoke-static {v3}, Lcom/android/calendar/CalendarView;->access$1600(Lcom/android/calendar/CalendarView;)I

    move-result v3

    #setter for: Lcom/android/calendar/CalendarView;->mViewStartY:I
    invoke-static {v2, v3}, Lcom/android/calendar/CalendarView;->access$1502(Lcom/android/calendar/CalendarView;I)I

    .line 3360
    iput v4, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    goto :goto_2

    .line 3369
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    #setter for: Lcom/android/calendar/CalendarView;->mScrolling:Z
    invoke-static {v2, v4}, Lcom/android/calendar/CalendarView;->access$1802(Lcom/android/calendar/CalendarView;Z)Z

    .line 3370
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    #calls: Lcom/android/calendar/CalendarView;->resetSelectedHour()V
    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1900(Lcom/android/calendar/CalendarView;)V

    .line 3371
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    #setter for: Lcom/android/calendar/CalendarView;->mRedrawScreen:Z
    invoke-static {v2, v5}, Lcom/android/calendar/CalendarView;->access$1002(Lcom/android/calendar/CalendarView;Z)Z

    goto :goto_3
.end method
