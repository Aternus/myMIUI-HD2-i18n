.class public Lcom/miui/player/helper/RotateSwitchAnimationChain;
.super Ljava/lang/Object;
.source "RotateSwitchAnimationChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;,
        Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;
    }
.end annotation


# static fields
.field private static final ROTATE_ANTICLOCKWISE:[[F

.field private static final ROTATE_CLOCKWISE:[[F


# instance fields
.field private final mCallback:Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;

.field private final mDepth:F

.field private final mDuation:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 10
    new-array v0, v2, [[F

    sput-object v0, Lcom/miui/player/helper/RotateSwitchAnimationChain;->ROTATE_CLOCKWISE:[[F

    .line 11
    new-array v0, v2, [[F

    sput-object v0, Lcom/miui/player/helper/RotateSwitchAnimationChain;->ROTATE_ANTICLOCKWISE:[[F

    .line 14
    sget-object v0, Lcom/miui/player/helper/RotateSwitchAnimationChain;->ROTATE_CLOCKWISE:[[F

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    .line 15
    sget-object v0, Lcom/miui/player/helper/RotateSwitchAnimationChain;->ROTATE_CLOCKWISE:[[F

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    .line 16
    sget-object v0, Lcom/miui/player/helper/RotateSwitchAnimationChain;->ROTATE_ANTICLOCKWISE:[[F

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    .line 17
    sget-object v0, Lcom/miui/player/helper/RotateSwitchAnimationChain;->ROTATE_ANTICLOCKWISE:[[F

    new-array v1, v2, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    .line 18
    return-void

    .line 14
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xb4t 0x42t
    .end array-data

    .line 15
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x87t 0x43t
        0x0t 0x0t 0xb4t 0x43t
    .end array-data

    .line 16
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xb4t 0xc2t
    .end array-data

    .line 17
    :array_3
    .array-data 0x4
        0x0t 0x0t 0xb4t 0x42t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;JF)V
    .locals 0
    .parameter "callback"
    .parameter "duration"
    .parameter "depth"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain;->mCallback:Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;

    .line 26
    iput-wide p2, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain;->mDuation:J

    .line 27
    iput p4, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain;->mDepth:F

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/helper/RotateSwitchAnimationChain;)Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain;->mCallback:Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/helper/RotateSwitchAnimationChain;Landroid/view/View;[[FI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/player/helper/RotateSwitchAnimationChain;->applyRotate(Landroid/view/View;[[FI)V

    return-void
.end method

.method private applyRotate(Landroid/view/View;[[FI)V
    .locals 8
    .parameter "v"
    .parameter "rotate"
    .parameter "times"

    .prologue
    const/4 v6, 0x0

    const/high16 v2, 0x4000

    const/4 v7, 0x1

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v2

    .line 45
    .local v3, centerX:F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v2

    .line 46
    .local v4, centerY:F
    new-instance v0, Lcom/miui/player/helper/Rotate3dAnimation;

    aget-object v1, p2, p3

    aget v1, v1, v6

    aget-object v2, p2, p3

    aget v2, v2, v7

    iget v5, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain;->mDepth:F

    if-nez p3, :cond_0

    move v6, v7

    :cond_0
    invoke-direct/range {v0 .. v6}, Lcom/miui/player/helper/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 47
    .local v0, a:Landroid/view/animation/Animation;
    iget-wide v1, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain;->mDuation:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 49
    if-nez p3, :cond_1

    .line 50
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 53
    :cond_1
    new-instance v1, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;-><init>(Lcom/miui/player/helper/RotateSwitchAnimationChain;Landroid/view/View;[[FI)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 55
    return-void
.end method


# virtual methods
.method public startAnimation(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "clockwise"

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 41
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain;->mCallback:Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;

    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain;->mCallback:Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;

    invoke-interface {v1, p1}, Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;->onFirstAnimationStart(Landroid/view/View;)V

    .line 39
    :cond_1
    if-eqz p2, :cond_2

    sget-object v1, Lcom/miui/player/helper/RotateSwitchAnimationChain;->ROTATE_CLOCKWISE:[[F

    move-object v0, v1

    .line 40
    .local v0, rotate:[[F
    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/player/helper/RotateSwitchAnimationChain;->applyRotate(Landroid/view/View;[[FI)V

    goto :goto_0

    .line 39
    .end local v0           #rotate:[[F
    :cond_2
    sget-object v1, Lcom/miui/player/helper/RotateSwitchAnimationChain;->ROTATE_ANTICLOCKWISE:[[F

    move-object v0, v1

    goto :goto_1
.end method
