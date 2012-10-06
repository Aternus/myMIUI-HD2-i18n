.class Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LatinKeyboardBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/LatinKeyboardBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter "me1"
    .parameter "me2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 526
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 527
    .local v0, absX:F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 528
    .local v1, absY:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float v2, v8, v9

    .line 529
    .local v2, deltaX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float v3, v8, v9

    .line 530
    .local v3, deltaY:F
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getWidth()I

    move-result v8

    div-int/lit8 v6, v8, 0x2

    .line 531
    .local v6, travelX:I
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getHeight()I

    move-result v8

    div-int/lit8 v7, v8, 0x2

    .line 532
    .local v7, travelY:I
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeTracker:Lcom/android/inputmethod/latin/SwipeTracker;
    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$500(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/SwipeTracker;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/android/inputmethod/latin/SwipeTracker;->computeCurrentVelocity(I)V

    .line 533
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeTracker:Lcom/android/inputmethod/latin/SwipeTracker;
    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$500(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/SwipeTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/SwipeTracker;->getXVelocity()F

    move-result v4

    .line 534
    .local v4, endingVelocityX:F
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeTracker:Lcom/android/inputmethod/latin/SwipeTracker;
    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$500(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/SwipeTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/SwipeTracker;->getYVelocity()F

    move-result v5

    .line 535
    .local v5, endingVelocityY:F
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeThreshold:I
    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$600(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, p3, v8

    if-lez v8, :cond_0

    cmpg-float v8, v1, v0

    if-gez v8, :cond_0

    int-to-float v8, v6

    cmpl-float v8, v2, v8

    if-lez v8, :cond_0

    .line 536
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDisambiguateSwipe:Z
    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$700(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x4080

    div-float v8, p3, v8

    cmpl-float v8, v4, v8

    if-ltz v8, :cond_3

    .line 537
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->swipeRight()V

    .line 538
    const/4 v8, 0x1

    .line 556
    :goto_0
    return v8

    .line 540
    :cond_0
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeThreshold:I
    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$600(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, p3, v8

    if-gez v8, :cond_1

    cmpg-float v8, v1, v0

    if-gez v8, :cond_1

    neg-int v8, v6

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gez v8, :cond_1

    .line 541
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDisambiguateSwipe:Z
    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$700(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x4080

    div-float v8, p3, v8

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_3

    .line 542
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->swipeLeft()V

    .line 543
    const/4 v8, 0x1

    goto :goto_0

    .line 545
    :cond_1
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeThreshold:I
    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$600(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, p4, v8

    if-gez v8, :cond_2

    cmpg-float v8, v0, v1

    if-gez v8, :cond_2

    neg-int v8, v7

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-gez v8, :cond_2

    .line 546
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDisambiguateSwipe:Z
    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$700(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x4080

    div-float v8, p4, v8

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_3

    .line 547
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->swipeUp()V

    .line 548
    const/4 v8, 0x1

    goto :goto_0

    .line 550
    :cond_2
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeThreshold:I
    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$600(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, p4, v8

    if-lez v8, :cond_3

    const/high16 v8, 0x4000

    div-float v8, v1, v8

    cmpg-float v8, v0, v8

    if-gez v8, :cond_3

    int-to-float v8, v7

    cmpl-float v8, v3, v8

    if-lez v8, :cond_3

    .line 551
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDisambiguateSwipe:Z
    invoke-static {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$700(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x4080

    div-float v8, p4, v8

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_3

    .line 552
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->swipeDown()V

    .line 553
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 556
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0
.end method
