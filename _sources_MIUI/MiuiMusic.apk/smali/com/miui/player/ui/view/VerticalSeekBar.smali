.class public Lcom/miui/player/ui/view/VerticalSeekBar;
.super Landroid/widget/AbsSeekBar;
.source "VerticalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;

.field private final mSetProgress:Ljava/lang/reflect/Method;

.field private mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/player/ui/view/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/player/ui/view/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, m:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 40
    .local v1, progressClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v2, "setProgress"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 41
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1           #progressClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    iput-object v0, p0, Lcom/miui/player/ui/view/VerticalSeekBar;->mSetProgress:Ljava/lang/reflect/Method;

    .line 46
    return-void

    .line 42
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 203
    :cond_0
    return-void
.end method

.method private setProgressOnMove(F)V
    .locals 5
    .parameter "progress"

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/ui/view/VerticalSeekBar;->mSetProgress:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    float-to-int v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 209
    .local v0, e:Ljava/lang/Exception;
    float-to-int v1, p1

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/view/VerticalSeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .parameter "h"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, p1

    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->getPaddingRight()I

    move-result v8

    sub-int v0, v7, v8

    .line 165
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 166
    .local v5, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 167
    .local v3, thumbHeight:I
    sub-int/2addr v0, v5

    .line 169
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->getThumbOffset()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 170
    int-to-float v7, v0

    mul-float/2addr v7, p3

    float-to-int v4, v7

    .line 172
    .local v4, thumbPos:I
    const/high16 v7, -0x8000

    if-ne p4, v7, :cond_0

    .line 173
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 174
    .local v2, oldBounds:Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 175
    .local v6, topBound:I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 180
    .end local v2           #oldBounds:Landroid/graphics/Rect;
    .local v1, bottomBound:I
    :goto_0
    add-int v7, v4, v5

    invoke-virtual {p2, v4, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    return-void

    .line 177
    .end local v1           #bottomBound:I
    .end local v6           #topBound:I
    :cond_0
    move v6, p4

    .line 178
    .restart local v6       #topBound:I
    add-int v1, p4, v3

    .restart local v1       #bottomBound:I
    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->getHeight()I

    move-result v2

    .line 185
    .local v2, height:I
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->getPaddingBottom()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->getPaddingTop()I

    move-result v5

    sub-int v1, v4, v5

    .line 186
    .local v1, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v0, v4

    .line 187
    .local v0, Y:I
    const/4 v3, 0x0

    .line 188
    .local v3, scale:F
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->getPaddingBottom()I

    move-result v4

    sub-int v4, v2, v4

    if-le v0, v4, :cond_0

    .line 189
    const/4 v3, 0x0

    .line 196
    :goto_0
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/miui/player/ui/view/VerticalSeekBar;->setProgressOnMove(F)V

    .line 197
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->getPaddingTop()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 191
    const/high16 v3, 0x3f80

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->getPaddingBottom()I

    move-result v4

    sub-int v4, v2, v4

    sub-int/2addr v4, v0

    int-to-float v4, v4

    int-to-float v5, v1

    div-float v3, v4, v5

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, newEvent:Landroid/view/KeyEvent;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 124
    :goto_0
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p0, v3, v3}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v1

    .line 128
    .end local v0           #newEvent:Landroid/view/KeyEvent;
    :goto_1
    return v1

    .line 109
    .restart local v0       #newEvent:Landroid/view/KeyEvent;
    :pswitch_0
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #newEvent:Landroid/view/KeyEvent;
    const/16 v1, 0x16

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 110
    .restart local v0       #newEvent:Landroid/view/KeyEvent;
    goto :goto_0

    .line 112
    :pswitch_1
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #newEvent:Landroid/view/KeyEvent;
    const/16 v1, 0x15

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 113
    .restart local v0       #newEvent:Landroid/view/KeyEvent;
    goto :goto_0

    .line 115
    :pswitch_2
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #newEvent:Landroid/view/KeyEvent;
    const/16 v1, 0x14

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 116
    .restart local v0       #newEvent:Landroid/view/KeyEvent;
    goto :goto_0

    .line 118
    :pswitch_3
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #newEvent:Landroid/view/KeyEvent;
    const/16 v1, 0x13

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 119
    .restart local v0       #newEvent:Landroid/view/KeyEvent;
    goto :goto_0

    .line 128
    .end local v0           #newEvent:Landroid/view/KeyEvent;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 107
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 50
    const/high16 v0, -0x3d4c

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 51
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 52
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 58
    .local v0, height:I
    iget-object v1, p0, Lcom/miui/player/ui/view/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/view/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 57
    .end local v0           #height:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miui/player/ui/view/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 154
    .local v0, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->getHeight()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/miui/player/ui/view/VerticalSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 156
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->invalidate()V

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/view/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/miui/player/ui/view/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->getProgress()I

    move-result v2

    invoke-interface {v1, p0, v2, p2}, Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/miui/player/ui/view/VerticalSeekBar;IZ)V

    .line 161
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 69
    invoke-super {p0, p2, p1, p3, p4}, Landroid/widget/AbsSeekBar;->onSizeChanged(IIII)V

    .line 70
    return-void
.end method

.method onStartVerticalTrackingTouch()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/player/ui/view/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/miui/player/ui/view/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/miui/player/ui/view/VerticalSeekBar;)V

    .line 139
    :cond_0
    return-void
.end method

.method onStopVerticalTrackingTouch()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/miui/player/ui/view/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/miui/player/ui/view/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/miui/player/ui/view/VerticalSeekBar;)V

    .line 145
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 100
    :goto_0
    return v0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v2

    .line 100
    goto :goto_0

    .line 79
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/view/VerticalSeekBar;->setPressed(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->onStartVerticalTrackingTouch()V

    .line 81
    invoke-direct {p0, p1}, Lcom/miui/player/ui/view/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 85
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/player/ui/view/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 86
    invoke-direct {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 90
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/player/ui/view/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 91
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->onStopVerticalTrackingTouch()V

    .line 92
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/view/VerticalSeekBar;->setPressed(Z)V

    goto :goto_1

    .line 96
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSeekBar;->onStopVerticalTrackingTouch()V

    .line 97
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/view/VerticalSeekBar;->setPressed(Z)V

    goto :goto_1

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSeekBarChangeListener(Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/miui/player/ui/view/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;

    .line 133
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "thumb"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/player/ui/view/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 65
    return-void
.end method
