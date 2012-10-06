.class Lcom/android/sidekick/WorkingScreenView;
.super Landroid/widget/ScreenView;
.source "WorkingScreenView.java"


# instance fields
.field private mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

.field private mParent:Landroid/app/Activity;

.field private mRecentAppsView:Lcom/android/sidekick/RecentApplicationsView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/ScreenView;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mRecentAppsView:Lcom/android/sidekick/RecentApplicationsView;

    .line 12
    iput-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

    .line 18
    iput-object p1, p0, Lcom/android/sidekick/WorkingScreenView;->mParent:Landroid/app/Activity;

    .line 19
    const/high16 v0, 0x4020

    invoke-virtual {p0, v0}, Lcom/android/sidekick/WorkingScreenView;->setConfirmHorizontalScrollRatio(F)V

    .line 20
    return-void
.end method

.method private isViewsLoaded()Z
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mRecentAppsView:Lcom/android/sidekick/RecentApplicationsView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadGroupSearchView()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mParent:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/sidekick/GroupSearchView;->fromXml(Landroid/content/Context;)Lcom/android/sidekick/GroupSearchView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

    .line 47
    :cond_0
    return-void
.end method

.method private loadRecentAppsView()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mRecentAppsView:Lcom/android/sidekick/RecentApplicationsView;

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mParent:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/sidekick/RecentApplicationsView;->fromXml(Landroid/app/Activity;)Lcom/android/sidekick/RecentApplicationsView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mRecentAppsView:Lcom/android/sidekick/RecentApplicationsView;

    .line 41
    :cond_0
    return-void
.end method

.method private loadViews()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 27
    invoke-direct {p0}, Lcom/android/sidekick/WorkingScreenView;->isViewsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/android/sidekick/WorkingScreenView;->loadRecentAppsView()V

    .line 29
    invoke-direct {p0}, Lcom/android/sidekick/WorkingScreenView;->loadGroupSearchView()V

    .line 30
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/sidekick/WorkingScreenView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mRecentAppsView:Lcom/android/sidekick/RecentApplicationsView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/sidekick/WorkingScreenView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method protected getChildStaticTransformationByScreen(Landroid/view/View;Landroid/view/animation/Transformation;F)Z
    .locals 2
    .parameter "child"
    .parameter "t"
    .parameter "interpolation"

    .prologue
    .line 62
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    .line 65
    :cond_0
    const/high16 v0, 0x3f80

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x3f333333

    mul-float/2addr v0, v1

    const v1, 0x3e99999a

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 66
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getSearchView()Lcom/android/sidekick/GroupSearchView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

    return-object v0
.end method

.method isSearchViewShowing()Z
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/sidekick/WorkingScreenView;->getCurrentScreenIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/sidekick/WorkingScreenView;->mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

    invoke-virtual {p0, v1}, Lcom/android/sidekick/WorkingScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mRecentAppsView:Lcom/android/sidekick/RecentApplicationsView;

    invoke-virtual {v0}, Lcom/android/sidekick/RecentApplicationsView;->onDestory()V

    .line 75
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

    invoke-virtual {v0}, Lcom/android/sidekick/GroupSearchView;->onDestory()V

    .line 76
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

    invoke-virtual {v0}, Lcom/android/sidekick/GroupSearchView;->onResume()V

    .line 71
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/sidekick/WorkingScreenView;->isViewsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/android/sidekick/WorkingScreenView;->loadViews()V

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/android/sidekick/WorkingScreenView;->isViewsLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mRecentAppsView:Lcom/android/sidekick/RecentApplicationsView;

    invoke-virtual {v0}, Lcom/android/sidekick/RecentApplicationsView;->onStart()V

    .line 55
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

    invoke-virtual {v0}, Lcom/android/sidekick/GroupSearchView;->onStart()V

    .line 57
    :cond_1
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/sidekick/WorkingScreenView;->setScreenTransitionType(I)V

    .line 58
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method protected setCurrentScreenInner(I)V
    .locals 1
    .parameter "screenIndex"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 85
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

    invoke-virtual {p0, v0}, Lcom/android/sidekick/WorkingScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

    invoke-virtual {v0}, Lcom/android/sidekick/GroupSearchView;->onShow()V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/sidekick/WorkingScreenView;->mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

    invoke-virtual {v0}, Lcom/android/sidekick/GroupSearchView;->onHide()V

    goto :goto_0
.end method

.method showRecent()V
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/sidekick/WorkingScreenView;->mRecentAppsView:Lcom/android/sidekick/RecentApplicationsView;

    invoke-virtual {p0, v1}, Lcom/android/sidekick/WorkingScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 112
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/android/sidekick/WorkingScreenView;->setCurrentScreen(I)V

    .line 113
    return-void
.end method

.method showSearch()V
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/sidekick/WorkingScreenView;->mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

    invoke-virtual {p0, v1}, Lcom/android/sidekick/WorkingScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 106
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/android/sidekick/WorkingScreenView;->setCurrentScreen(I)V

    .line 107
    iget-object v1, p0, Lcom/android/sidekick/WorkingScreenView;->mGroupSearchView:Lcom/android/sidekick/GroupSearchView;

    invoke-virtual {v1}, Lcom/android/sidekick/GroupSearchView;->onShow()V

    .line 108
    return-void
.end method
