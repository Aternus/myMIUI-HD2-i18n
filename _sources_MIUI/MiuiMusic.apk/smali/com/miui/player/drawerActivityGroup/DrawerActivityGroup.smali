.class public abstract Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;
.super Landroid/app/ActivityGroup;
.source "DrawerActivityGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$TogglableDrawer;,
        Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;,
        Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;,
        Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$AlphaMoveListener;
    }
.end annotation


# static fields
.field protected static final DRAWER_ID:Ljava/lang/String; = "DRAWER_ACTIVITY_ID"

.field protected static final DRAWER_NEW_INTENT:Ljava/lang/String; = "new_intent"

.field public static final FINISHED_CHILD_FLAG:Ljava/lang/String; = "finished_child_flag"


# instance fields
.field private mActivityStack:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;

.field private mCommitView:Landroid/view/View;

.field private mContainerViewBg:Landroid/view/ViewGroup;

.field private mContainerViewDrawer:Landroid/view/ViewGroup;

.field private mDrawerBar:Landroid/view/ViewGroup;

.field private mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

.field private mDrawerView:Landroid/view/View;

.field private mFreezed:Z

.field private mMainFrame:Lcom/miui/player/ui/view/AlphaFrameLayout;

.field protected mOnTouchListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

.field protected mOneShotLast:Z

.field private mTitleBar:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerView:Landroid/view/View;

    .line 228
    iput-boolean v1, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mFreezed:Z

    .line 258
    iput-boolean v1, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mOneShotLast:Z

    .line 463
    return-void
.end method

.method static synthetic access$200(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Lcom/miui/player/ui/view/AlphaFrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mMainFrame:Lcom/miui/player/ui/view/AlphaFrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->removeDrawer()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mActivityStack:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewBg:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mCommitView:Landroid/view/View;

    return-object v0
.end method

.method private addDrawer(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    const-string v4, "DRAWER_ACTIVITY_ID"

    invoke-virtual {v3, v4, p1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v2

    .line 209
    .local v2, w:Landroid/view/Window;
    if-nez v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 213
    .local v1, newView:Landroid/view/View;
    iget-object v3, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerView:Landroid/view/View;

    if-eq v3, v1, :cond_3

    .line 214
    iget-object v3, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 215
    iget-object v3, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewDrawer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 217
    :cond_2
    iput-object v1, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerView:Landroid/view/View;

    .line 218
    iget-object v3, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewDrawer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 221
    :cond_3
    iget-object v3, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 222
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 223
    .local v0, a:Landroid/app/Activity;
    instance-of v3, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$TogglableDrawer;

    if-eqz v3, :cond_0

    .line 224
    check-cast v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$TogglableDrawer;

    .end local v0           #a:Landroid/app/Activity;
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$TogglableDrawer;->onVisibleChanged(Z)V

    goto :goto_0
.end method

.method private changeToInternalIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .parameter "intent"

    .prologue
    .line 457
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 458
    .local v0, ret:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getInternalAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    return-object v0
.end method

.method public static clearAboveBottomOfParent(Landroid/app/Activity;I)Z
    .locals 4
    .parameter "child"
    .parameter "count"

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 438
    .local v2, parent:Landroid/app/Activity;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    if-eqz v3, :cond_0

    .line 439
    move-object v0, v2

    check-cast v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    move-object v1, v0

    .line 440
    .local v1, drawerGroup:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;
    invoke-virtual {v1, p1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->clearAboveBottom(I)Z

    move-result v3

    .line 442
    .end local v1           #drawerGroup:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static closeDrawerActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 398
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 399
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    if-eqz v1, :cond_0

    .line 400
    check-cast v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    .end local v0           #parent:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->closeDrawerChild()V

    .line 402
    :cond_0
    return-void
.end method

.method public static destroyDrawerActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 405
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 406
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    if-eqz v1, :cond_0

    .line 407
    check-cast v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    .end local v0           #parent:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->destroyDrawer()V

    .line 409
    :cond_0
    return-void
.end method

.method public static finishParent(Landroid/app/Activity;)V
    .locals 4
    .parameter "child"

    .prologue
    .line 446
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 447
    .local v2, parent:Landroid/app/Activity;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    if-eqz v3, :cond_0

    .line 448
    move-object v0, v2

    check-cast v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    move-object v1, v0

    .line 449
    .local v1, drawerGroup:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;
    invoke-virtual {v1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->finish()V

    .line 454
    .end local v1           #drawerGroup:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;
    :goto_0
    return-void

    .line 451
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private initializeActivity()V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getMainBgIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->pushBgChild(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method private initializeLayout()V
    .locals 19

    .prologue
    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v17, v0

    .line 88
    .local v17, statusBarHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    sub-int v18, v3, v17

    .line 89
    .local v18, totalHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v11, v3

    .line 90
    .local v11, barBottomHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v8, v3

    .line 91
    .local v8, barTopHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v15, v3

    .line 94
    .local v15, gradualChangeHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerBar:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 95
    .local v13, drawerBarLP:Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v3, v18, v3

    add-int v16, v3, v11

    .line 96
    .local v16, spaceHeight:I
    move/from16 v0, v16

    move-object v1, v13

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerBar:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewDrawer:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 102
    .local v14, drawerLP:Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v3, v18, v3

    sub-int/2addr v3, v8

    add-int/2addr v3, v15

    iput v3, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    add-int v3, v18, v11

    iput v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewDrawer:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v3, v14}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewBg:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    .local v12, bgLP:Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v3, v18, v3

    sub-int/2addr v3, v8

    add-int/2addr v3, v15

    iput v3, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 110
    const/4 v3, 0x0

    iput v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewBg:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerBar:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-static {v3}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->getMarginTop(Landroid/view/ViewGroup;)I

    move-result v7

    .line 115
    .local v7, drawerMarginTop:I
    new-instance v3, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerBar:Landroid/view/ViewGroup;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewDrawer:Landroid/view/ViewGroup;

    move-object v6, v0

    new-instance v9, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;

    const/4 v4, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;-><init>(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$1;)V

    new-instance v10, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$AlphaMoveListener;

    const/4 v4, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$AlphaMoveListener;-><init>(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$1;)V

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;IILcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$MoveListener;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mOnTouchListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerBar:Landroid/view/ViewGroup;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mOnTouchListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    return-void
.end method

.method public static pushActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2
    .parameter "child"
    .parameter "intent"

    .prologue
    .line 413
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 414
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    if-eqz v1, :cond_0

    .line 415
    check-cast v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    .end local v0           #parent:Landroid/app/Activity;
    invoke-virtual {v0, p1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->pushBgChild(Landroid/content/Intent;)V

    .line 419
    :goto_0
    return-void

    .line 417
    .restart local v0       #parent:Landroid/app/Activity;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private removeDrawer()V
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    const-string v2, "DRAWER_ACTIVITY_ID"

    invoke-virtual {v1, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 252
    .local v0, a:Landroid/app/Activity;
    instance-of v1, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$TogglableDrawer;

    if-eqz v1, :cond_0

    .line 253
    check-cast v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$TogglableDrawer;

    .end local v0           #a:Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$TogglableDrawer;->onVisibleChanged(Z)V

    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract afterBgChange(Z)V
.end method

.method protected abstract beforeBgChange(Z)V
.end method

.method public clearAboveBottom(I)Z
    .locals 3
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 391
    invoke-virtual {p0, v2}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->beforeBgChange(Z)V

    .line 392
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mActivityStack:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;

    invoke-virtual {v1, p1}, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->clearAboveBottom(I)Z

    move-result v0

    .line 393
    .local v0, ret:Z
    invoke-virtual {p0, v2}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->afterBgChange(Z)V

    .line 394
    return v0
.end method

.method public closeDrawerChild()V
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->prepareSlide()V

    .line 366
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mOnTouchListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->closeContentView()V

    .line 367
    return-void
.end method

.method protected destroyDrawer()V
    .locals 3

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    const-string v1, "DRAWER_ACTIVITY_ID"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 262
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewDrawer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerView:Landroid/view/View;

    .line 264
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->closeDrawerChild()V

    .line 265
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 424
    invoke-virtual {p0, p1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->isDrawerChild(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 425
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->closeDrawerChild()V

    .line 430
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 431
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 432
    const-string v1, "finished_child_flag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    :cond_1
    return-void

    .line 426
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->isBgTopChild(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->popBgChild()V

    goto :goto_0
.end method

.method public freezeDrawer()V
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mFreezed:Z

    .line 232
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerBar:Landroid/view/ViewGroup;

    new-instance v1, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$1;

    invoke-direct {v1, p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$1;-><init>(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 241
    return-void
.end method

.method public getCommitView()Landroid/view/View;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mCommitView:Landroid/view/View;

    return-object v0
.end method

.method public abstract getDrawerIntent()Landroid/content/Intent;
.end method

.method protected abstract getInternalAction(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMainBgIntent()Landroid/content/Intent;
.end method

.method public isBgTopChild(Landroid/app/Activity;)Z
    .locals 1
    .parameter "a"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mActivityStack:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;

    invoke-virtual {v0, p1}, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->isTopActivity(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public isDrawerChild(Landroid/app/Activity;)Z
    .locals 2
    .parameter "a"

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    const-string v1, "DRAWER_ACTIVITY_ID"

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawerChildClose()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mOnTouchListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->isContentViewClose()Z

    move-result v0

    return v0
.end method

.method protected abstract isDrawerCloseIntent(Landroid/content/Intent;)Z
.end method

.method public isDrawerFreezed()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mFreezed:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, handled:Z
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->isDrawerChildClose()Z

    move-result v3

    if-nez v3, :cond_4

    .line 179
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->isDrawerFreezed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->finish()V

    .line 181
    const/4 v2, 0x1

    .line 199
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->finish()V

    .line 202
    :cond_1
    return-void

    .line 183
    :cond_2
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    const-string v4, "DRAWER_ACTIVITY_ID"

    invoke-virtual {v3, v4}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    .line 184
    .local v1, drawer:Landroid/app/Activity;
    instance-of v3, v1, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$TogglableDrawer;

    if-eqz v3, :cond_0

    .line 185
    check-cast v1, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$TogglableDrawer;

    .end local v1           #drawer:Landroid/app/Activity;
    invoke-interface {v1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$TogglableDrawer;->prepareToClose()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->closeDrawerChild()V

    .line 188
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 191
    :cond_4
    iget-object v3, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mActivityStack:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;

    invoke-virtual {v3}, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->isBottom()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mActivityStack:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;

    invoke-virtual {v3}, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 193
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 195
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const v2, 0x7f0c0060

    .line 69
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 72
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 73
    const v0, 0x7f0c005f

    invoke-virtual {p0, v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/view/AlphaFrameLayout;

    iput-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mMainFrame:Lcom/miui/player/ui/view/AlphaFrameLayout;

    .line 74
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mMainFrame:Lcom/miui/player/ui/view/AlphaFrameLayout;

    invoke-virtual {v0, v2}, Lcom/miui/player/ui/view/AlphaFrameLayout;->setAlphaChild(I)V

    .line 75
    invoke-virtual {p0, v2}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewBg:Landroid/view/ViewGroup;

    .line 76
    const v0, 0x7f0c0063

    invoke-virtual {p0, v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewDrawer:Landroid/view/ViewGroup;

    .line 77
    const v0, 0x7f0c0062

    invoke-virtual {p0, v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerBar:Landroid/view/ViewGroup;

    .line 78
    const v0, 0x7f0c0061

    invoke-virtual {p0, v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mTitleBar:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0c0032

    invoke-virtual {p0, v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mCommitView:Landroid/view/View;

    .line 80
    new-instance v0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;

    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewBg:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2}, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;-><init>(Landroid/app/LocalActivityManager;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mActivityStack:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;

    .line 82
    invoke-direct {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->initializeLayout()V

    .line 83
    invoke-direct {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->initializeActivity()V

    .line 84
    return-void
.end method

.method protected abstract onDrawerNewIntent(Landroid/content/Intent;)V
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 167
    .local v1, a:Landroid/app/Activity;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;

    if-eqz v3, :cond_0

    .line 168
    move-object v0, v1

    check-cast v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;

    move-object v2, v0

    .line 169
    .local v2, menuProvider:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;
    invoke-interface {v2, p1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;->onOptionsItemSelectedForParent(Landroid/view/MenuItem;)Z

    .line 172
    .end local v2           #menuProvider:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, flag1:Z
    const/4 v3, 0x0

    .line 150
    .local v3, flag2:Z
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 152
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mOnTouchListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    invoke-virtual {v5}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->isAnimationPlaying()Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 154
    .local v1, a:Landroid/app/Activity;
    if-eqz v1, :cond_0

    instance-of v5, v1, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;

    if-eqz v5, :cond_0

    .line 155
    move-object v0, v1

    check-cast v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;

    move-object v4, v0

    .line 156
    .local v4, menuProvider:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;
    invoke-interface {v4, p1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;->onCreateOptionsMenuForParent(Landroid/view/Menu;)Z

    move-result v2

    .line 157
    invoke-interface {v4, p1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;->onPrepareOptionsMenuForParent(Landroid/view/Menu;)Z

    move-result v3

    .line 161
    .end local v1           #a:Landroid/app/Activity;
    .end local v4           #menuProvider:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;
    :cond_0
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public openDrawerChild()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 370
    invoke-virtual {p0, v1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->startDrawerSlide(Z)V

    .line 371
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mOnTouchListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    invoke-virtual {v0, v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->openContentView(Z)V

    .line 372
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    invoke-interface {v0, v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;->startSlide(Z)V

    .line 375
    :cond_0
    return-void
.end method

.method protected openDrawerChildView()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mOnTouchListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->openContentView(Z)V

    .line 379
    return-void
.end method

.method public peekIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mActivityStack:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;

    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->peekIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public popBgChild()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 343
    invoke-virtual {p0, v1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->beforeBgChange(Z)V

    .line 344
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mActivityStack:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;

    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->pop()V

    .line 345
    invoke-virtual {p0, v1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->afterBgChange(Z)V

    .line 346
    return-void
.end method

.method protected prepareSlide()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewBg:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewBg:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 296
    return-void
.end method

.method public pushBgChild(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 336
    invoke-virtual {p0, v2}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->beforeBgChange(Z)V

    .line 337
    invoke-direct {p0, p1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->changeToInternalIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 338
    .local v0, internalIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mActivityStack:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;

    invoke-virtual {v1, v0}, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->push(Landroid/content/Intent;)V

    .line 339
    invoke-virtual {p0, v2}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->afterBgChange(Z)V

    .line 340
    return-void
.end method

.method protected abstract setDrawerIntent(Landroid/content/Intent;)V
.end method

.method public setDrawerListener(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    .line 269
    return-void
.end method

.method public setTitleVisible(II)V
    .locals 1
    .parameter "visible"
    .parameter "textId"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 388
    return-void
.end method

.method protected startDrawerSlide(Z)V
    .locals 4
    .parameter "isClose"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    const-string v3, "DRAWER_ACTIVITY_ID"

    invoke-virtual {v2, v3}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 273
    .local v0, drawer:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$TogglableDrawer;

    if-eqz v2, :cond_0

    .line 274
    check-cast v0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$TogglableDrawer;

    .end local v0           #drawer:Landroid/app/Activity;
    invoke-interface {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$TogglableDrawer;->toggleFromParent()V

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->getDrawerIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->changeToInternalIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 278
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->isDrawerFreezed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 279
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->destroyDrawer()V

    .line 280
    invoke-direct {p0, v1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->addDrawer(Landroid/content/Intent;)V

    .line 286
    :cond_1
    :goto_0
    const-string v2, "new_intent"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    invoke-virtual {p0, v1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->onDrawerNewIntent(Landroid/content/Intent;)V

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->prepareSlide()V

    .line 291
    return-void

    .line 281
    :cond_3
    if-eqz p1, :cond_1

    .line 282
    invoke-direct {p0, v1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->addDrawer(Landroid/content/Intent;)V

    goto :goto_0
.end method
