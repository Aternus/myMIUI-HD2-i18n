.class Lcom/android/calendar/CalendarActivity$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 388
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 389
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->doDown(Landroid/view/MotionEvent;)V

    .line 390
    const/4 v1, 0x1

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 382
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/calendar/CalendarView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 383
    const/4 v1, 0x1

    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 369
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->doLongPress(Landroid/view/MotionEvent;)V

    .line 370
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 375
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/calendar/CalendarView;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 376
    const/4 v1, 0x1

    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 362
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->doSingleTapUp(Landroid/view/MotionEvent;)V

    .line 363
    const/4 v1, 0x1

    return v1
.end method
