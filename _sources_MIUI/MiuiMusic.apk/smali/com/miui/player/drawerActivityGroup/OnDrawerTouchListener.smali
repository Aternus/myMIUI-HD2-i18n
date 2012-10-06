.class public Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;
.super Ljava/lang/Object;
.source "OnDrawerTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$MoveListener;,
        Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;,
        Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;
    }
.end annotation


# static fields
.field private static final CLICK_THREASHOLD:I = 0x14

.field private static final CONTENT_SWTICH_THRESHOLD:I = 0xc8


# instance fields
.field private mAnimationPlaying:Z

.field private final mContentView:Landroid/view/ViewGroup;

.field private mDownY:I

.field private mDrawBarMarginTop:I

.field private final mDrawBarMarginTopClose:I

.field private final mDrawBarMarginTopOpen:I

.field private final mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

.field private final mHeaderView:Landroid/view/ViewGroup;

.field private mIsDown:Z

.field private final mMoveListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$MoveListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;IILcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$MoveListener;)V
    .locals 1
    .parameter "context"
    .parameter "headerView"
    .parameter "contentView"
    .parameter "closeMarginTop"
    .parameter "barTopProject"
    .parameter "drawListener"
    .parameter "moveListener"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mIsDown:Z

    .line 194
    iput-boolean v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mAnimationPlaying:Z

    .line 39
    iput-object p2, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mHeaderView:Landroid/view/ViewGroup;

    .line 40
    iput-object p3, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mContentView:Landroid/view/ViewGroup;

    .line 41
    iput-object p6, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    .line 42
    iput-object p7, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mMoveListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$MoveListener;

    .line 43
    iput p5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopOpen:I

    .line 44
    iput p4, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopClose:I

    .line 45
    iput p4, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTop:I

    .line 46
    return-void
.end method

.method static synthetic access$002(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTop:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mHeaderView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mAnimationPlaying:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$MoveListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mMoveListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$MoveListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopOpen:I

    return v0
.end method

.method static synthetic access$700(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopClose:I

    return v0
.end method

.method private applySlideAnim(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 165
    new-instance v0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;-><init>(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;II)V

    .line 166
    .local v0, ani:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->setDuration(J)V

    .line 167
    new-instance v1, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$1;-><init>(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;I)V

    invoke-virtual {v0, v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    return-void
.end method

.method public static getMarginTop(Landroid/view/ViewGroup;)I
    .locals 2
    .parameter "layout"

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return v1
.end method

.method public static setMarginTop(Landroid/view/ViewGroup;I)V
    .locals 1
    .parameter "layout"
    .parameter "marginTop"

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 115
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-void
.end method


# virtual methods
.method public closeContentView()V
    .locals 2

    .prologue
    .line 152
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mHeaderView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->getMarginTop(Landroid/view/ViewGroup;)I

    move-result v0

    .line 153
    .local v0, offset:I
    iget v1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopClose:I

    invoke-direct {p0, v0, v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->applySlideAnim(II)V

    .line 154
    return-void
.end method

.method public isAnimationPlaying()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mAnimationPlaying:Z

    return v0
.end method

.method public isContentViewClose()Z
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mHeaderView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->getMarginTop(Landroid/view/ViewGroup;)I

    move-result v0

    iget v1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopClose:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 49
    iget-boolean v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mAnimationPlaying:Z

    if-eqz v5, :cond_0

    move v5, v6

    .line 105
    :goto_0
    return v5

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v4, v5

    .line 53
    .local v4, y:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_1
    move v5, v8

    .line 105
    goto :goto_0

    .line 55
    :pswitch_0
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    if-nez v5, :cond_3

    .line 56
    iput-boolean v8, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mIsDown:Z

    .line 61
    :cond_2
    :goto_2
    iput v4, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDownY:I

    goto :goto_1

    .line 57
    :cond_3
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    invoke-interface {v5}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;->allowSlide()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 58
    iput-boolean v8, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mIsDown:Z

    .line 59
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->isContentViewClose()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;->startSlide(Z)V

    goto :goto_2

    .line 64
    :pswitch_1
    iget-boolean v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mIsDown:Z

    if-eqz v5, :cond_1

    .line 65
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mHeaderView:Landroid/view/ViewGroup;

    invoke-static {v5}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->getMarginTop(Landroid/view/ViewGroup;)I

    move-result v3

    .line 67
    .local v3, oldBarMarginTop:I
    iget v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTop:I

    add-int/2addr v5, v4

    iget v6, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDownY:I

    sub-int v0, v5, v6

    .line 68
    .local v0, barMarginTop:I
    iget v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopOpen:I

    if-ge v0, v5, :cond_4

    .line 69
    iget v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopOpen:I

    .line 71
    :cond_4
    iget v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopClose:I

    if-le v0, v5, :cond_5

    .line 72
    iget v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopClose:I

    .line 74
    :cond_5
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mHeaderView:Landroid/view/ViewGroup;

    invoke-static {v5, v0}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->setMarginTop(Landroid/view/ViewGroup;I)V

    .line 76
    sub-int v2, v0, v3

    .line 77
    .local v2, offset:I
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mContentView:Landroid/view/ViewGroup;

    invoke-static {v5}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->getMarginTop(Landroid/view/ViewGroup;)I

    move-result v5

    add-int v1, v2, v5

    .line 78
    .local v1, contentMarginTop:I
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mContentView:Landroid/view/ViewGroup;

    invoke-static {v5, v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->setMarginTop(Landroid/view/ViewGroup;I)V

    .line 80
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mMoveListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$MoveListener;

    if-eqz v5, :cond_1

    .line 81
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mMoveListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$MoveListener;

    iget v6, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopOpen:I

    sub-int v6, v0, v6

    iget v7, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopClose:I

    invoke-interface {v5, v6, v7}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$MoveListener;->move(II)V

    goto :goto_1

    .line 88
    .end local v0           #barMarginTop:I
    .end local v1           #contentMarginTop:I
    .end local v2           #offset:I
    .end local v3           #oldBarMarginTop:I
    :pswitch_2
    iget-boolean v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mIsDown:Z

    if-eqz v5, :cond_1

    .line 89
    iput-boolean v6, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mIsDown:Z

    .line 90
    iget v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDownY:I

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x14

    if-ge v5, v6, :cond_7

    .line 93
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mHeaderView:Landroid/view/ViewGroup;

    invoke-static {v5}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->getMarginTop(Landroid/view/ViewGroup;)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    iget v6, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopClose:I

    if-le v5, v6, :cond_6

    .line 94
    invoke-virtual {p0, v8}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->openContentView(Z)V

    goto/16 :goto_1

    .line 96
    :cond_6
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->closeContentView()V

    goto/16 :goto_1

    .line 99
    :cond_7
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->switchContentView()V

    goto/16 :goto_1

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public openContentView(Z)V
    .locals 4
    .parameter "anim"

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mHeaderView:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->getMarginTop(Landroid/view/ViewGroup;)I

    move-result v1

    .line 142
    .local v1, offset:I
    iget v2, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopOpen:I

    invoke-direct {p0, v1, v2}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->applySlideAnim(II)V

    .line 149
    .end local v1           #offset:I
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mContentView:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->getMarginTop(Landroid/view/ViewGroup;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mHeaderView:Landroid/view/ViewGroup;

    invoke-static {v3}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->getMarginTop(Landroid/view/ViewGroup;)I

    move-result v3

    sub-int v0, v2, v3

    .line 145
    .local v0, diff:I
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mHeaderView:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopOpen:I

    invoke-static {v2, v3}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->setMarginTop(Landroid/view/ViewGroup;I)V

    .line 146
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mContentView:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopOpen:I

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->setMarginTop(Landroid/view/ViewGroup;I)V

    .line 147
    iget v2, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopOpen:I

    iget v3, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopOpen:I

    invoke-direct {p0, v2, v3}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->applySlideAnim(II)V

    goto :goto_0
.end method

.method public switchContentView()V
    .locals 5

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x1

    .line 121
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mHeaderView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->getMarginTop(Landroid/view/ViewGroup;)I

    move-result v0

    .line 123
    .local v0, marginTop:I
    iget v1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTop:I

    iget v2, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopClose:I

    if-ne v1, v2, :cond_1

    .line 124
    iget v1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopClose:I

    sub-int/2addr v1, v4

    if-le v0, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->closeContentView()V

    .line 137
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0, v3}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->openContentView(Z)V

    goto :goto_0

    .line 130
    :cond_1
    if-ge v0, v4, :cond_2

    .line 131
    invoke-virtual {p0, v3}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->openContentView(Z)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->closeContentView()V

    goto :goto_0
.end method
