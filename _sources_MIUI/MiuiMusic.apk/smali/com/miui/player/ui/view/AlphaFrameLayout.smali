.class public Lcom/miui/player/ui/view/AlphaFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AlphaFrameLayout.java"


# instance fields
.field private mAlpha:F

.field private mAlphaChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/miui/player/ui/view/AlphaFrameLayout;->mAlpha:F

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/ui/view/AlphaFrameLayout;->mAlphaChild:I

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/view/AlphaFrameLayout;->setStaticTransformationsEnabled(Z)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 2
    .parameter "child"
    .parameter "t"

    .prologue
    .line 31
    iget v0, p0, Lcom/miui/player/ui/view/AlphaFrameLayout;->mAlphaChild:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 32
    iget v0, p0, Lcom/miui/player/ui/view/AlphaFrameLayout;->mAlpha:F

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 22
    iput p1, p0, Lcom/miui/player/ui/view/AlphaFrameLayout;->mAlpha:F

    .line 23
    return-void
.end method

.method public setAlphaChild(I)V
    .locals 0
    .parameter "childId"

    .prologue
    .line 26
    iput p1, p0, Lcom/miui/player/ui/view/AlphaFrameLayout;->mAlphaChild:I

    .line 27
    return-void
.end method
