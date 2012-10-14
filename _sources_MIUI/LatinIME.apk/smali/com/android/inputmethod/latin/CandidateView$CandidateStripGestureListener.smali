.class Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/CandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CandidateStripGestureListener"
.end annotation


# instance fields
.field private final mTouchSlopSquare:I

.field final synthetic this$0:Lcom/android/inputmethod/latin/CandidateView;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/CandidateView;I)V
    .locals 1
    .parameter
    .parameter "touchSlop"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 139
    mul-int v0, p2, p2

    iput v0, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->mTouchSlopSquare:I

    .line 140
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #setter for: Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/CandidateView;->access$302(Lcom/android/inputmethod/latin/CandidateView;Z)Z

    .line 154
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "me"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #getter for: Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/inputmethod/latin/CandidateView;->access$000(Lcom/android/inputmethod/latin/CandidateView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #getter for: Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I
    invoke-static {v1}, Lcom/android/inputmethod/latin/CandidateView;->access$100(Lcom/android/inputmethod/latin/CandidateView;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #calls: Lcom/android/inputmethod/latin/CandidateView;->longPressFirstWord()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/CandidateView;->access$200(Lcom/android/inputmethod/latin/CandidateView;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v7, 0x1

    .line 160
    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #getter for: Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z
    invoke-static {v5}, Lcom/android/inputmethod/latin/CandidateView;->access$300(Lcom/android/inputmethod/latin/CandidateView;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 162
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v0, v5

    .line 163
    .local v0, deltaX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 164
    .local v1, deltaY:I
    mul-int v5, v0, v0

    mul-int v6, v1, v1

    add-int v2, v5, v6

    .line 165
    .local v2, distance:I
    iget v5, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->mTouchSlopSquare:I

    if-ge v2, v5, :cond_0

    move v5, v7

    .line 185
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v2           #distance:I
    :goto_0
    return v5

    .line 168
    .restart local v0       #deltaX:I
    .restart local v1       #deltaY:I
    .restart local v2       #distance:I
    :cond_0
    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #setter for: Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z
    invoke-static {v5, v7}, Lcom/android/inputmethod/latin/CandidateView;->access$302(Lcom/android/inputmethod/latin/CandidateView;Z)Z

    .line 171
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v2           #distance:I
    :cond_1
    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/CandidateView;->getWidth()I

    move-result v4

    .line 172
    .local v4, width:I
    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #setter for: Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z
    invoke-static {v5, v7}, Lcom/android/inputmethod/latin/CandidateView;->access$302(Lcom/android/inputmethod/latin/CandidateView;Z)Z

    .line 173
    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v3

    .line 174
    .local v3, scrollX:I
    float-to-int v5, p3

    add-int/2addr v3, v5

    .line 175
    if-gez v3, :cond_2

    .line 176
    const/4 v3, 0x0

    .line 178
    :cond_2
    const/4 v5, 0x0

    cmpl-float v5, p3, v5

    if-lez v5, :cond_3

    add-int v5, v3, v4

    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #getter for: Lcom/android/inputmethod/latin/CandidateView;->mTotalWidth:I
    invoke-static {v6}, Lcom/android/inputmethod/latin/CandidateView;->access$400(Lcom/android/inputmethod/latin/CandidateView;)I

    move-result v6

    if-le v5, v6, :cond_3

    .line 179
    float-to-int v5, p3

    sub-int/2addr v3, v5

    .line 181
    :cond_3
    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #setter for: Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I
    invoke-static {v5, v3}, Lcom/android/inputmethod/latin/CandidateView;->access$502(Lcom/android/inputmethod/latin/CandidateView;I)I

    .line 182
    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/CandidateView;->getScrollY()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 183
    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #calls: Lcom/android/inputmethod/latin/CandidateView;->hidePreview()V
    invoke-static {v5}, Lcom/android/inputmethod/latin/CandidateView;->access$600(Lcom/android/inputmethod/latin/CandidateView;)V

    .line 184
    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    move v5, v7

    .line 185
    goto :goto_0
.end method
