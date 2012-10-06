.class final Lcom/google/android/common/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private synthetic a:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)Lw;

    move-result-object v0

    invoke-interface {v0}, Lw;->c()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)Lw;

    move-result-object v0

    invoke-interface {v0}, Lw;->c()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    cmpl-float v0, p3, v1

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, p3, v1

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/common/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    cmpg-float v0, p3, v1

    if-gez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/common/d;->b()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    cmpg-float v0, p3, v1

    if-gez v0, :cond_3

    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->c(Lcom/google/android/common/SwipeySwitcher;)V

    :goto_2
    iget-object v1, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1, v0}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;Z)V

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->d(Lcom/google/android/common/SwipeySwitcher;)V

    goto :goto_2
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v0

    float-to-int v1, p3

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v1}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/common/d;->a()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    iget-object v1, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)Lw;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)Lw;

    move-result-object v1

    invoke-interface {v1}, Lw;->c()I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v1}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->e(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/h;

    move-result-object v2

    aget-object v2, v2, v3

    instance-of v2, v2, Lcom/google/android/common/g;

    if-eqz v2, :cond_3

    move v0, v4

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->f(Lcom/google/android/common/SwipeySwitcher;)V

    :cond_1
    return v4

    :cond_2
    iget-object v1, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v1}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/common/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_3
    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->e(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/h;

    move-result-object v0

    aget-object v0, v0, v5

    instance-of v0, v0, Lcom/google/android/common/g;

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
