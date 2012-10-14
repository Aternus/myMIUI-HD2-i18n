.class public abstract Lcom/android/contacts/TextHighlightingAnimation;
.super Ljava/lang/Object;
.source "TextHighlightingAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/TextHighlightingAnimation$1;,
        Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;,
        Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;
    }
.end annotation


# static fields
.field private static final sEmptySpans:[Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;


# instance fields
.field private ACCELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateInterpolator;

.field private DECELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private mAnimating:Z

.field private mDimming:Z

.field private mDimmingSpan:Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

.field private final mDuration:I

.field private mHandler:Landroid/os/Handler;

.field private mTargetTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

    sput-object v0, Lcom/android/contacts/TextHighlightingAnimation;->sEmptySpans:[Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/TextHighlightingAnimation;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateInterpolator;

    .line 38
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/TextHighlightingAnimation;->DECELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 210
    iput p1, p0, Lcom/android/contacts/TextHighlightingAnimation;->mDuration:I

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/TextHighlightingAnimation;->mHandler:Landroid/os/Handler;

    .line 212
    new-instance v0, Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;-><init>(Lcom/android/contacts/TextHighlightingAnimation$1;)V

    iput-object v0, p0, Lcom/android/contacts/TextHighlightingAnimation;->mDimmingSpan:Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

    .line 213
    iget-object v0, p0, Lcom/android/contacts/TextHighlightingAnimation;->mDimmingSpan:Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;->setAlpha(I)V

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/TextHighlightingAnimation;)Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/contacts/TextHighlightingAnimation;->mDimmingSpan:Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

    return-object v0
.end method

.method static synthetic access$100()[Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/contacts/TextHighlightingAnimation;->sEmptySpans:[Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

    return-object v0
.end method

.method private startAnimation(Z)V
    .locals 6
    .parameter "dim"

    .prologue
    .line 256
    iget-boolean v2, p0, Lcom/android/contacts/TextHighlightingAnimation;->mDimming:Z

    if-eq v2, p1, :cond_0

    .line 257
    iput-boolean p1, p0, Lcom/android/contacts/TextHighlightingAnimation;->mDimming:Z

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 259
    .local v0, now:J
    iget-boolean v2, p0, Lcom/android/contacts/TextHighlightingAnimation;->mAnimating:Z

    if-nez v2, :cond_1

    .line 260
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/TextHighlightingAnimation;->mAnimating:Z

    .line 261
    iget v2, p0, Lcom/android/contacts/TextHighlightingAnimation;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/contacts/TextHighlightingAnimation;->mTargetTime:J

    .line 262
    invoke-virtual {p0}, Lcom/android/contacts/TextHighlightingAnimation;->onAnimationStarted()V

    .line 263
    iget-object v2, p0, Lcom/android/contacts/TextHighlightingAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    .end local v0           #now:J
    :cond_0
    :goto_0
    return-void

    .line 268
    .restart local v0       #now:J
    :cond_1
    iget v2, p0, Lcom/android/contacts/TextHighlightingAnimation;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/android/contacts/TextHighlightingAnimation;->mTargetTime:J

    sub-long/2addr v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/contacts/TextHighlightingAnimation;->mTargetTime:J

    goto :goto_0
.end method


# virtual methods
.method public createTextWithHighlighting()Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;

    invoke-direct {v0, p0}, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;-><init>(Lcom/android/contacts/TextHighlightingAnimation;)V

    return-object v0
.end method

.method protected abstract invalidate()V
.end method

.method protected onAnimationEnded()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method protected onAnimationStarted()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/high16 v9, 0x434d

    const/high16 v8, 0x4248

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 278
    .local v1, now:J
    iget-wide v6, p0, Lcom/android/contacts/TextHighlightingAnimation;->mTargetTime:J

    sub-long v3, v6, v1

    .line 279
    .local v3, timeLeft:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gez v6, :cond_1

    .line 280
    iget-object v6, p0, Lcom/android/contacts/TextHighlightingAnimation;->mDimmingSpan:Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

    iget-boolean v7, p0, Lcom/android/contacts/TextHighlightingAnimation;->mDimming:Z

    if-eqz v7, :cond_0

    const/16 v7, 0x32

    :goto_0
    invoke-virtual {v6, v7}, Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;->setAlpha(I)V

    .line 281
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/contacts/TextHighlightingAnimation;->mAnimating:Z

    .line 282
    invoke-virtual {p0}, Lcom/android/contacts/TextHighlightingAnimation;->onAnimationEnded()V

    .line 300
    :goto_1
    return-void

    .line 280
    :cond_0
    const/16 v7, 0xff

    goto :goto_0

    .line 287
    :cond_1
    long-to-float v6, v3

    iget v7, p0, Lcom/android/contacts/TextHighlightingAnimation;->mDuration:I

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 288
    .local v5, virtualTime:F
    iget-boolean v6, p0, Lcom/android/contacts/TextHighlightingAnimation;->mDimming:Z

    if-eqz v6, :cond_2

    .line 289
    iget-object v6, p0, Lcom/android/contacts/TextHighlightingAnimation;->DECELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v6, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 290
    .local v0, interpolatedTime:F
    iget-object v6, p0, Lcom/android/contacts/TextHighlightingAnimation;->mDimmingSpan:Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

    mul-float v7, v9, v0

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;->setAlpha(I)V

    .line 296
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/TextHighlightingAnimation;->invalidate()V

    .line 299
    iget-object v6, p0, Lcom/android/contacts/TextHighlightingAnimation;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x32

    invoke-virtual {v6, p0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 292
    .end local v0           #interpolatedTime:F
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/TextHighlightingAnimation;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v6, v5}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 293
    .restart local v0       #interpolatedTime:F
    iget-object v6, p0, Lcom/android/contacts/TextHighlightingAnimation;->mDimmingSpan:Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

    const/high16 v7, 0x3f80

    sub-float/2addr v7, v0

    mul-float/2addr v7, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;->setAlpha(I)V

    goto :goto_2
.end method

.method public startHighlighting()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/TextHighlightingAnimation;->startAnimation(Z)V

    .line 233
    return-void
.end method

.method public stopHighlighting()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/TextHighlightingAnimation;->startAnimation(Z)V

    .line 241
    return-void
.end method
