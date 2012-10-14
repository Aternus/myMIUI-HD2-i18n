.class public Lcom/miui/player/ui/view/ExtendScrollView;
.super Landroid/widget/ScrollView;
.source "ExtendScrollView.java"

# interfaces
.implements Lcom/miui/player/helper/controller/ExtendScroller$Scrollable;


# instance fields
.field private final mExtendScroller:Lcom/miui/player/helper/controller/ExtendScroller;

.field private mIsNeedFling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Lcom/miui/player/helper/controller/ExtendScroller;

    invoke-direct {v0, p0}, Lcom/miui/player/helper/controller/ExtendScroller;-><init>(Lcom/miui/player/helper/controller/ExtendScroller$Scrollable;)V

    iput-object v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mExtendScroller:Lcom/miui/player/helper/controller/ExtendScroller;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mIsNeedFling:Z

    .line 21
    return-void
.end method


# virtual methods
.method public fling(I)V
    .locals 1
    .parameter "velocityY"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mIsNeedFling:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 32
    :cond_0
    return-void
.end method

.method public handleInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mExtendScroller:Lcom/miui/player/helper/controller/ExtendScroller;

    invoke-virtual {v0, p1}, Lcom/miui/player/helper/controller/ExtendScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mExtendScroller:Lcom/miui/player/helper/controller/ExtendScroller;

    invoke-virtual {v0, p1}, Lcom/miui/player/helper/controller/ExtendScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setNeedFling(Z)V
    .locals 0
    .parameter "isNeedFling"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mIsNeedFling:Z

    .line 25
    return-void
.end method

.method public setOnExtendScrollListener(Lcom/miui/player/helper/controller/ExtendScroller$OnExtendScrollListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mExtendScroller:Lcom/miui/player/helper/controller/ExtendScroller;

    invoke-virtual {v0, p1}, Lcom/miui/player/helper/controller/ExtendScroller;->setOnExtendScrollListener(Lcom/miui/player/helper/controller/ExtendScroller$OnExtendScrollListener;)V

    .line 48
    return-void
.end method
