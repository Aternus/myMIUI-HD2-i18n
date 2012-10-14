.class public Lcom/android/phone/AlphaCallCardLayout;
.super Landroid/widget/LinearLayout;
.source "AlphaCallCardLayout.java"


# instance fields
.field private mAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/phone/AlphaCallCardLayout;->mAlpha:F

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/AlphaCallCardLayout;->setStaticTransformationsEnabled(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/phone/AlphaCallCardLayout;->mAlpha:F

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/phone/AlphaCallCardLayout;->mAlpha:F

    .line 36
    return-void
.end method
