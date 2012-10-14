.class public Lcom/google/android/common/SwipeySwitcher;
.super Landroid/view/ViewGroup;


# static fields
.field private static s:[I

.field private static t:[I


# instance fields
.field private a:[Lcom/google/android/common/h;

.field private b:Lw;

.field private c:I

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Landroid/view/GestureDetector;

.field private i:Landroid/widget/Scroller;

.field private j:Lw;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/google/android/common/i;

.field private q:Lcom/google/android/common/i;

.field private r:Ljava/lang/Runnable;

.field private u:Ljava/util/HashMap;

.field private v:Lcom/google/android/common/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/common/SwipeySwitcher;->s:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/common/SwipeySwitcher;->t:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/common/h;

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/common/i;

    new-instance v1, Lcom/google/android/common/f;

    invoke-direct {v1, p0}, Lcom/google/android/common/f;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/i;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/b;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->p:Lcom/google/android/common/i;

    new-instance v0, Lcom/google/android/common/i;

    new-instance v1, Lcom/google/android/common/e;

    invoke-direct {v1, p0}, Lcom/google/android/common/e;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/i;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/b;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->q:Lcom/google/android/common/i;

    new-instance v0, Lcom/google/android/common/c;

    invoke-direct {v0, p0}, Lcom/google/android/common/c;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->r:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->u:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/common/a;

    invoke-direct {v0, p0}, Lcom/google/android/common/a;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->v:Lcom/google/android/common/a;

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->b()Landroid/view/GestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->h:Landroid/view/GestureDetector;

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->i:Landroid/widget/Scroller;

    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->d:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/common/h;

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/common/i;

    new-instance v1, Lcom/google/android/common/f;

    invoke-direct {v1, p0}, Lcom/google/android/common/f;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/i;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/b;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->p:Lcom/google/android/common/i;

    new-instance v0, Lcom/google/android/common/i;

    new-instance v1, Lcom/google/android/common/e;

    invoke-direct {v1, p0}, Lcom/google/android/common/e;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/i;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/b;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->q:Lcom/google/android/common/i;

    new-instance v0, Lcom/google/android/common/c;

    invoke-direct {v0, p0}, Lcom/google/android/common/c;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->r:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->u:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/common/a;

    invoke-direct {v0, p0}, Lcom/google/android/common/a;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->v:Lcom/google/android/common/a;

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->b()Landroid/view/GestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->h:Landroid/view/GestureDetector;

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->i:Landroid/widget/Scroller;

    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->d:Landroid/content/Context;

    return-void
.end method

.method private a(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lw;

    if-nez v0, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lw;

    invoke-interface {v0}, Lw;->c()I

    move-result v0

    if-nez v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int v1, p1

    rem-int/2addr v1, v0

    sub-int v1, v0, v1

    :goto_1
    rem-int v0, v1, v0

    goto :goto_0

    :cond_2
    move v1, p1

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/common/SwipeySwitcher;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->d:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    aget-object v2, v2, v4

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    aput-object v0, v1, v4

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/h;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/h;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/common/SwipeySwitcher;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->a(Z)V

    return-void
.end method

.method private a(Lcom/google/android/common/h;I)V
    .locals 6

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getHeight()I

    move-result v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-interface {p1}, Lcom/google/android/common/h;->a()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p2, v2, v4}, Lcom/google/android/common/SwipeySwitcher;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    mul-int v2, v0, p2

    const/4 v4, 0x0

    mul-int v5, v0, p2

    add-int/2addr v0, v5

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    aput-object p1, v0, p2

    return-void
.end method

.method private a(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x190

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/common/SwipeySwitcher;->a(ZLjava/lang/Runnable;I)V

    return-void
.end method

.method private a(ZLjava/lang/Runnable;I)V
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->c:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->e:I

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->v:Lcom/google/android/common/a;

    iput-object p2, v0, Lcom/google/android/common/a;->a:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->i:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    neg-int v3, v3

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->v:Lcom/google/android/common/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->i:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->v:Lcom/google/android/common/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private b()Landroid/view/GestureDetector;
    .locals 3

    new-instance v0, Lcom/google/android/common/d;

    invoke-direct {v0, p0}, Lcom/google/android/common/d;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->d:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v1
.end method

.method static synthetic b(Lcom/google/android/common/SwipeySwitcher;)Lw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lw;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/common/SwipeySwitcher;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->k:Z

    return v0
.end method

.method private c()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method static synthetic c(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lw;

    invoke-interface {v0}, Lw;->c()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->p:Lcom/google/android/common/i;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/common/i;->a(Lcom/google/android/common/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->a()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/google/android/common/SwipeySwitcher;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lw;

    invoke-interface {v0}, Lw;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->p:Lcom/google/android/common/i;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/common/i;->a(Lcom/google/android/common/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->a()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->a()V

    return-void
.end method

.method static synthetic g(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->q:Lcom/google/android/common/i;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/common/SwipeySwitcher;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->i:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/common/SwipeySwitcher;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/common/SwipeySwitcher;)I
    .locals 1

    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->e:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/common/h;->b()V

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/16 v7, 0x19

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->k:Z

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->o:I

    if-eq v0, v4, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iput-boolean v5, p0, Lcom/google/android/common/SwipeySwitcher;->f:Z

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->h:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->m:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->n:I

    iput v5, p0, Lcom/google/android/common/SwipeySwitcher;->o:I

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->j:Lw;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget v1, p0, Lcom/google/android/common/SwipeySwitcher;->o:I

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/google/android/common/SwipeySwitcher;->m:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/google/android/common/SwipeySwitcher;->n:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v1, v7, :cond_5

    if-ge v2, v1, :cond_5

    iput v4, p0, Lcom/google/android/common/SwipeySwitcher;->o:I

    const/4 v0, 0x3

    :cond_2
    :goto_2
    iget v1, p0, Lcom/google/android/common/SwipeySwitcher;->o:I

    if-eq v1, v6, :cond_3

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->h:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->j:Lw;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->c()F

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    :cond_5
    if-le v2, v7, :cond_2

    if-ge v1, v2, :cond_2

    iput v6, p0, Lcom/google/android/common/SwipeySwitcher;->o:I

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1, v5}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    goto :goto_2

    :pswitch_2
    iput-boolean v4, p0, Lcom/google/android/common/SwipeySwitcher;->f:Z

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->h:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->c()F

    move-result v0

    const v1, 0x3e4ccccd

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    invoke-direct {p0, v4}, Lcom/google/android/common/SwipeySwitcher;->a(Z)V

    goto/16 :goto_1

    :cond_6
    const v1, -0x41b33333

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    invoke-direct {p0, v5}, Lcom/google/android/common/SwipeySwitcher;->a(Z)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0, v5}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    goto/16 :goto_1

    :cond_8
    move v0, v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public foreachView$77bf88de(Lc;)V
    .locals 0

    return-void
.end method

.method public getAdapter$253a7d97()Lw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lw;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getAdapter$253a7d97()Lw;

    move-result-object v0

    invoke-interface {v0}, Lw;->c()I

    move-result v0

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->e:I

    invoke-direct {p0, v0}, Lcom/google/android/common/SwipeySwitcher;->a(I)I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/common/h;->a()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedViewAdjacent(Z)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :goto_0
    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/common/h;->a()Landroid/view/View;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lw;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lw;

    invoke-interface {v1}, Lw;->c()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lw;

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->removeAllViews()V

    iget v2, p0, Lcom/google/android/common/SwipeySwitcher;->e:I

    iput v2, p0, Lcom/google/android/common/SwipeySwitcher;->c:I

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->u:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/google/android/common/h;->c()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_6

    sget-object v3, Lcom/google/android/common/SwipeySwitcher;->s:[I

    :goto_3
    const/4 v4, 0x0

    :goto_4
    array-length v5, v3

    if-ge v4, v5, :cond_7

    aget v5, v3, v4

    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lw;

    invoke-interface {v6}, Lw;->b()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/common/h;

    if-eqz p1, :cond_5

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    aput-object p1, v6, v5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    sget-object v3, Lcom/google/android/common/SwipeySwitcher;->t:[I

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/common/h;

    invoke-interface {p1}, Lcom/google/android/common/h;->b()V

    goto :goto_5

    :cond_8
    const/4 v2, -0x1

    :goto_6
    const/4 v3, 0x1

    if-gt v2, v3, :cond_12

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    aget-object v4, v4, v3

    if-nez v4, :cond_b

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    const/4 v5, 0x0

    :cond_9
    :goto_7
    if-eqz v5, :cond_10

    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->p:Lcom/google/android/common/i;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/common/i;->a(Landroid/content/Intent;)Lcom/google/android/common/h;

    move-result-object v4

    :cond_a
    :goto_8
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    add-int/lit8 v6, v2, 0x1

    aput-object v4, v5, v6

    :cond_b
    invoke-direct {p0, v4, v3}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/h;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :pswitch_0
    if-eqz v2, :cond_c

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    goto :goto_7

    :pswitch_1
    const/4 v6, -0x1

    if-ne v2, v6, :cond_e

    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->p:Lcom/google/android/common/i;

    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/google/android/common/i;->a(Lcom/google/android/common/h;)Z

    move-result v5

    if-nez v5, :cond_d

    const/4 v5, 0x1

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    goto :goto_7

    :cond_e
    const/4 v6, 0x1

    if-ne v2, v6, :cond_9

    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->p:Lcom/google/android/common/i;

    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/google/android/common/i;->a(Lcom/google/android/common/h;)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x1

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    goto :goto_7

    :cond_10
    if-nez v2, :cond_11

    if-lez v1, :cond_11

    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lw;

    invoke-interface {v4}, Lw;->a()Lcom/google/android/common/h;

    move-result-object v4

    :cond_11
    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->q:Lcom/google/android/common/i;

    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lw;

    invoke-interface {v5}, Lw;->b()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/common/i;->a(Landroid/content/Intent;)Lcom/google/android/common/h;

    move-result-object v4

    goto :goto_8

    :cond_12
    iget-boolean v1, p0, Lcom/google/android/common/SwipeySwitcher;->f:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    :cond_13
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->l:Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 8

    const/high16 v7, 0x4000

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/android/common/SwipeySwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/common/SwipeySwitcher;->setMeasuredDimension(II)V

    return-void
.end method

.method public selectNext(ZLjava/lang/Runnable;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/common/SwipeySwitcher;->a(ZLjava/lang/Runnable;I)V

    return-void
.end method

.method public setAdapter$6217e8e3(Lw;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lw;

    if-nez p1, :cond_1

    move v0, v3

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/common/h;->b()V

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Lcom/google/android/common/h;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/google/android/common/SwipeySwitcher;->e:I

    iput v3, p0, Lcom/google/android/common/SwipeySwitcher;->c:I

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    return-void
.end method

.method public setOnTouchCallback$72dcce34(Lw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->j:Lw;

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/common/SwipeySwitcher;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:Z

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    return-void
.end method
