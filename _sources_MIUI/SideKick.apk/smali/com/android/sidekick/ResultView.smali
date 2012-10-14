.class public Lcom/android/sidekick/ResultView;
.super Landroid/widget/LinearLayout;
.source "ResultView.java"


# instance fields
.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLastTouchY:F

.field private mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/sidekick/ResultView;->setDrawingCacheEnabled(Z)V

    .line 17
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/sidekick/ResultView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 18
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 41
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 30
    :pswitch_1
    iget-object v0, p0, Lcom/android/sidekick/ResultView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/sidekick/ResultView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/sidekick/ResultView;->mLastTouchY:F

    goto :goto_0

    .line 34
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/android/sidekick/ResultView;->mLastTouchY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4170

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/sidekick/ResultView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/sidekick/ResultView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    invoke-virtual {v0}, Lcom/android/sidekick/GroupSearchAdapter;->tryLeaveDeleteMode()V

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setSearchAdapter(Lcom/android/sidekick/GroupSearchAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/sidekick/ResultView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    .line 25
    return-void
.end method
