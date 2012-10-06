.class public Lcom/android/browser/ui/MirenGestureDetector;
.super Ljava/lang/Object;
.source "MirenGestureDetector.java"


# static fields
.field public static final BACK_FORWARD_GESTURE_THRESHOLD_X:F = 150.0f

.field public static final BACK_FORWARD_GESTURE_THRESHOLD_Y:F = 100.0f


# instance fields
.field private downXValue:F

.field private downYValue:F

.field private mContext:Lcom/android/browser/ui/MiRenBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/browser/ui/MirenGestureDetector;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    .line 17
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/high16 v6, 0x4316

    const/4 v7, 0x0

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    move v5, v7

    .line 62
    :goto_1
    return v5

    .line 22
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/browser/ui/MirenGestureDetector;->downXValue:F

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/browser/ui/MirenGestureDetector;->downYValue:F

    goto :goto_0

    .line 28
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 29
    .local v1, currentY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 30
    .local v0, currentX:F
    iget v5, p0, Lcom/android/browser/ui/MirenGestureDetector;->downYValue:F

    sub-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 31
    .local v3, differenceY:F
    iget v5, p0, Lcom/android/browser/ui/MirenGestureDetector;->downXValue:F

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 33
    .local v2, differenceX:F
    const/high16 v5, 0x42c8

    cmpg-float v5, v3, v5

    if-gez v5, :cond_0

    .line 34
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/BrowserSettings;->getLeftRightGestureChoice()Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;

    move-result-object v4

    .line 37
    .local v4, leftRightGestureOpt:Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;
    sget-object v5, Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;->LEFT_RIGHT_GESTURE_GO_BACK_FORWARD:Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;

    if-ne v4, v5, :cond_2

    .line 38
    iget v5, p0, Lcom/android/browser/ui/MirenGestureDetector;->downXValue:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_1

    cmpl-float v5, v2, v6

    if-lez v5, :cond_1

    .line 39
    iget-object v5, p0, Lcom/android/browser/ui/MirenGestureDetector;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const/16 v6, 0xe

    invoke-virtual {v5, v7, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->startTimer(II)V

    move v5, v8

    .line 40
    goto :goto_1

    .line 43
    :cond_1
    iget v5, p0, Lcom/android/browser/ui/MirenGestureDetector;->downXValue:F

    cmpl-float v5, v5, v0

    if-lez v5, :cond_0

    cmpl-float v5, v2, v6

    if-lez v5, :cond_0

    .line 44
    iget-object v5, p0, Lcom/android/browser/ui/MirenGestureDetector;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const/16 v6, 0xf

    invoke-virtual {v5, v7, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->startTimer(II)V

    move v5, v8

    .line 45
    goto :goto_1

    .line 48
    :cond_2
    sget-object v5, Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;->LEFT_RIGHT_GESTURE_SWITCH_TABS:Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;

    if-ne v4, v5, :cond_0

    .line 49
    iget v5, p0, Lcom/android/browser/ui/MirenGestureDetector;->downXValue:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_3

    cmpl-float v5, v2, v6

    if-lez v5, :cond_3

    .line 50
    iget-object v5, p0, Lcom/android/browser/ui/MirenGestureDetector;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const/16 v6, 0x11

    invoke-virtual {v5, v7, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->startTimer(II)V

    move v5, v8

    .line 51
    goto :goto_1

    .line 54
    :cond_3
    iget v5, p0, Lcom/android/browser/ui/MirenGestureDetector;->downXValue:F

    cmpl-float v5, v5, v0

    if-lez v5, :cond_0

    cmpl-float v5, v2, v6

    if-lez v5, :cond_0

    .line 55
    iget-object v5, p0, Lcom/android/browser/ui/MirenGestureDetector;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const/16 v6, 0x10

    invoke-virtual {v5, v7, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->startTimer(II)V

    move v5, v8

    .line 56
    goto/16 :goto_1

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
