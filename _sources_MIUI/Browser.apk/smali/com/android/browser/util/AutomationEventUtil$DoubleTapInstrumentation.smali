.class Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;
.super Landroid/app/Instrumentation;
.source "AutomationEventUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/util/AutomationEventUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DoubleTapInstrumentation"
.end annotation


# instance fields
.field mx:I

.field my:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 17
    iput p1, p0, Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;->mx:I

    .line 18
    iput p2, p0, Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;->my:I

    .line 19
    return-void
.end method

.method private simulateClick(II)V
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 37
    .local v0, downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 39
    .local v2, eventTime:J
    const/4 v4, 0x0

    int-to-float v5, p1

    int-to-float v6, p2

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 41
    .local v8, event:Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 44
    const/4 v4, 0x2

    int-to-float v5, p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    int-to-float v6, p2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .end local v8           #event:Landroid/view/MotionEvent;
    move-result-object v8

    .line 47
    .restart local v8       #event:Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 50
    const/4 v4, 0x1

    int-to-float v5, p1

    int-to-float v6, p2

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 51
    invoke-virtual {p0, v8}, Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 52
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 26
    :try_start_0
    iget v1, p0, Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;->mx:I

    iget v2, p0, Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;->my:I

    invoke-direct {p0, v1, v2}, Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;->simulateClick(II)V

    .line 27
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 28
    iget v1, p0, Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;->mx:I

    iget v2, p0, Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;->my:I

    invoke-direct {p0, v1, v2}, Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;->simulateClick(II)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 30
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
