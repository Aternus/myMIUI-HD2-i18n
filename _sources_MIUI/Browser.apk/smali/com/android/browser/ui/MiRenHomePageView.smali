.class public Lcom/android/browser/ui/MiRenHomePageView;
.super Landroid/widget/ScreenView;
.source "MiRenHomePageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/widget/ScreenView;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 22
    invoke-super/range {p0 .. p5}, Landroid/widget/ScreenView;->onLayout(ZIIII)V

    .line 23
    iget v0, p0, Lcom/android/browser/ui/MiRenHomePageView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenHomePageView;->setCurrentScreen(I)V

    .line 24
    return-void
.end method
