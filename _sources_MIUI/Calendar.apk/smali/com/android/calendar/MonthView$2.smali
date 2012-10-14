.class Lcom/android/calendar/MonthView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthView;->init(Lcom/android/calendar/MonthActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthView;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthView;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 338
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v0, v1}, Lcom/android/calendar/MonthView;->access$702(Lcom/android/calendar/MonthView;Z)Z

    .line 339
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 301
    iget-object v3, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v3, v6}, Lcom/android/calendar/MonthView;->access$702(Lcom/android/calendar/MonthView;Z)Z

    .line 302
    iget-object v3, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mSelectionMode:I
    invoke-static {v3, v6}, Lcom/android/calendar/MonthView;->access$802(Lcom/android/calendar/MonthView;I)I

    .line 304
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 305
    .local v0, distanceX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 306
    .local v1, distanceY:I
    invoke-static {}, Lcom/android/calendar/MonthView;->access$900()I

    move-result v3

    if-lt v1, v3, :cond_0

    if-ge v1, v0, :cond_1

    :cond_0
    move v3, v6

    .line 331
    :goto_0
    return v3

    .line 311
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/android/calendar/MonthView;->access$600(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v2

    .line 312
    .local v2, time:Landroid/text/format/Time;
    iget-object v3, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 313
    const/4 v3, 0x0

    cmpg-float v3, p4, v3

    if-gez v3, :cond_2

    .line 314
    iget v3, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->month:I

    .line 326
    :goto_1
    iput v5, v2, Landroid/text/format/Time;->monthDay:I

    .line 328
    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 329
    iget-object v3, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v3}, Lcom/android/calendar/MonthView;->access$1000(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;Z)V

    move v3, v5

    .line 331
    goto :goto_0

    .line 316
    :cond_2
    iget v3, v2, Landroid/text/format/Time;->month:I

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/text/format/Time;->month:I

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$700(Lcom/android/calendar/MonthView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v0, v1}, Lcom/android/calendar/MonthView;->access$702(Lcom/android/calendar/MonthView;Z)Z

    .line 376
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    const/4 v1, 0x3

    #setter for: Lcom/android/calendar/MonthView;->mSelectionMode:I
    invoke-static {v0, v1}, Lcom/android/calendar/MonthView;->access$802(Lcom/android/calendar/MonthView;I)I

    .line 377
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    const/4 v1, 0x1

    #setter for: Lcom/android/calendar/MonthView;->mRedrawScreen:Z
    invoke-static {v0, v1}, Lcom/android/calendar/MonthView;->access$1802(Lcom/android/calendar/MonthView;Z)Z

    .line 378
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 379
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->performLongClick()Z

    .line 381
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v0, v1}, Lcom/android/calendar/MonthView;->access$702(Lcom/android/calendar/MonthView;Z)Z

    .line 391
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mSelectionMode:I
    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mSelectionMode:I
    invoke-static {v0, v1}, Lcom/android/calendar/MonthView;->access$802(Lcom/android/calendar/MonthView;I)I

    .line 393
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mRedrawScreen:Z
    invoke-static {v0, v2}, Lcom/android/calendar/MonthView;->access$1802(Lcom/android/calendar/MonthView;Z)Z

    .line 394
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 396
    :cond_0
    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 361
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mHasAccount:Z
    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$1700(Lcom/android/calendar/MonthView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/calendar/MonthView$2;->setSelectedCell(Landroid/view/MotionEvent;)V

    .line 363
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mSelectionMode:I
    invoke-static {v0, v1}, Lcom/android/calendar/MonthView;->access$802(Lcom/android/calendar/MonthView;I)I

    .line 364
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mRedrawScreen:Z
    invoke-static {v0, v1}, Lcom/android/calendar/MonthView;->access$1802(Lcom/android/calendar/MonthView;Z)Z

    .line 365
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 367
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    const/4 v6, 0x1

    .line 401
    iget-object v4, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mHasAccount:Z
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$1700(Lcom/android/calendar/MonthView;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$700(Lcom/android/calendar/MonthView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/calendar/MonthView$2;->setSelectedCell(Landroid/view/MotionEvent;)V

    .line 403
    iget-object v4, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    const/4 v5, 0x2

    #setter for: Lcom/android/calendar/MonthView;->mSelectionMode:I
    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$802(Lcom/android/calendar/MonthView;I)I

    .line 404
    iget-object v4, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mRedrawScreen:Z
    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$1802(Lcom/android/calendar/MonthView;Z)Z

    .line 405
    iget-object v4, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 406
    iget-object v4, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    const/4 v5, 0x0

    #setter for: Lcom/android/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$702(Lcom/android/calendar/MonthView;Z)Z

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 408
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 409
    .local v3, y:I
    iget-object v4, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #calls: Lcom/android/calendar/MonthView;->getSelectedMillisFor(II)J
    invoke-static {v4, v2, v3}, Lcom/android/calendar/MonthView;->access$1900(Lcom/android/calendar/MonthView;II)J

    move-result-wide v0

    .line 410
    .local v0, millis:J
    iget-object v4, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$2000(Lcom/android/calendar/MonthView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0, v1}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 413
    .end local v0           #millis:J
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_0
    return v6
.end method

.method public setSelectedCell(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "e"

    .prologue
    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 344
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 345
    .local v3, y:I
    invoke-static {}, Lcom/android/calendar/MonthView;->access$1100()I

    move-result v4

    sub-int v4, v3, v4

    invoke-static {}, Lcom/android/calendar/MonthView;->access$1100()I

    move-result v5

    iget-object v6, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCellHeight:I
    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$1200(Lcom/android/calendar/MonthView;)I

    move-result v6

    add-int/2addr v5, v6

    div-int v1, v4, v5

    .line 346
    .local v1, row:I
    iget-object v4, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mBorder:I
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$1300(Lcom/android/calendar/MonthView;)I

    move-result v4

    sub-int v4, v2, v4

    invoke-static {}, Lcom/android/calendar/MonthView;->access$1400()I

    move-result v5

    iget-object v6, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCellWidth:I
    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$1500(Lcom/android/calendar/MonthView;)I

    move-result v6

    add-int/2addr v5, v6

    div-int v0, v4, v5

    .line 347
    .local v0, col:I
    const/4 v4, 0x5

    if-le v1, v4, :cond_0

    .line 348
    const/4 v1, 0x5

    .line 350
    :cond_0
    const/4 v4, 0x6

    if-le v0, v4, :cond_1

    .line 351
    const/4 v0, 0x6

    .line 355
    :cond_1
    iget-object v4, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/DayOfMonthCursor;
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$1600(Lcom/android/calendar/MonthView;)Lcom/android/calendar/DayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/DayOfMonthCursor;->setSelectedRowColumn(II)V

    .line 356
    return-void
.end method
