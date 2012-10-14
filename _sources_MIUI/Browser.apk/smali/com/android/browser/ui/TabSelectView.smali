.class public Lcom/android/browser/ui/TabSelectView;
.super Landroid/widget/LinearLayout;
.source "TabSelectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ui/TabSelectView$TabView;
    }
.end annotation


# static fields
.field public static final CLOSE_CLICK:I = 0x1

.field public static final SWITCH_CLICK:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mTabViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/ui/TabSelectView$TabView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ui/TabSelectView;->mTabViews:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/ui/TabSelectView;->mCurrentIndex:I

    .line 30
    iput-object p1, p0, Lcom/android/browser/ui/TabSelectView;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 75
    iget-object v2, p0, Lcom/android/browser/ui/TabSelectView;->mTabViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 77
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 78
    iget v2, p0, Lcom/android/browser/ui/TabSelectView;->mCurrentIndex:I

    if-ne v0, v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/browser/ui/TabSelectView;->mTabViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/ui/TabSelectView$TabView;

    invoke-virtual {v2, v0, v1}, Lcom/android/browser/ui/TabSelectView$TabView;->setActive(II)V

    .line 77
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/android/browser/ui/TabSelectView;->mTabViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/ui/TabSelectView$TabView;

    iget v3, p0, Lcom/android/browser/ui/TabSelectView;->mCurrentIndex:I

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/browser/ui/TabSelectView$TabView;->setInactive(III)V

    goto :goto_1

    .line 84
    :cond_1
    return-void
.end method


# virtual methods
.method public addTabTitle(IZ)V
    .locals 2
    .parameter "index"
    .parameter "switchToNewTab"

    .prologue
    .line 34
    new-instance v0, Lcom/android/browser/ui/TabSelectView$TabView;

    iget-object v1, p0, Lcom/android/browser/ui/TabSelectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/browser/ui/TabSelectView$TabView;-><init>(Lcom/android/browser/ui/TabSelectView;Landroid/content/Context;)V

    .line 35
    .local v0, tab:Lcom/android/browser/ui/TabSelectView$TabView;
    invoke-virtual {p0, v0, p1}, Lcom/android/browser/ui/TabSelectView;->addView(Landroid/view/View;I)V

    .line 36
    iget-object v1, p0, Lcom/android/browser/ui/TabSelectView;->mTabViews:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 38
    if-eqz p2, :cond_0

    .line 39
    iput p1, p0, Lcom/android/browser/ui/TabSelectView;->mCurrentIndex:I

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/ui/TabSelectView;->refresh()V

    .line 43
    return-void
.end method

.method public removeTabTitle(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 46
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView;->mTabViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/TabSelectView;->removeViewAt(I)V

    .line 50
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView;->mTabViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setOnClickListener(IILandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "index"
    .parameter "mod"
    .parameter "l"

    .prologue
    .line 69
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView;->mTabViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView;->mTabViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 72
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 71
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView;->mTabViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/ui/TabSelectView$TabView;

    invoke-virtual {p0, p2, p3}, Lcom/android/browser/ui/TabSelectView$TabView;->setOnClickListener(ILandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setTitle(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "title"

    .prologue
    .line 63
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView;->mTabViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView;->mTabViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 66
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 65
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView;->mTabViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/ui/TabSelectView$TabView;

    invoke-virtual {p0, p2}, Lcom/android/browser/ui/TabSelectView$TabView;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchToTab(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 55
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView;->mTabViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iput p1, p0, Lcom/android/browser/ui/TabSelectView;->mCurrentIndex:I

    .line 59
    invoke-direct {p0}, Lcom/android/browser/ui/TabSelectView;->refresh()V

    goto :goto_0
.end method
