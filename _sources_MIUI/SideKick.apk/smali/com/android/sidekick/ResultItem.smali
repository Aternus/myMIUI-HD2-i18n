.class public Lcom/android/sidekick/ResultItem;
.super Landroid/widget/LinearLayout;
.source "ResultItem.java"


# instance fields
.field private mDeleteButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method public enterDeleteMode(Lcom/android/sidekick/GroupSearchAdapter$OnConfirmDeleteListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 26
    iget-object v1, p0, Lcom/android/sidekick/ResultItem;->mDeleteButton:Landroid/view/View;

    if-nez v1, :cond_0

    .line 27
    const v1, 0x7f090020

    invoke-virtual {p0, v1}, Lcom/android/sidekick/ResultItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sidekick/ResultItem;->mDeleteButton:Landroid/view/View;

    .line 28
    iget-object v1, p0, Lcom/android/sidekick/ResultItem;->mDeleteButton:Landroid/view/View;

    invoke-static {v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/android/sidekick/ResultItem;->mDeleteButton:Landroid/view/View;

    new-instance v2, Lcom/android/sidekick/ResultItem$1;

    invoke-direct {v2, p0, p1}, Lcom/android/sidekick/ResultItem$1;-><init>(Lcom/android/sidekick/ResultItem;Lcom/android/sidekick/GroupSearchAdapter$OnConfirmDeleteListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v1, p0, Lcom/android/sidekick/ResultItem;->mDeleteButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    invoke-virtual {p0}, Lcom/android/sidekick/ResultItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 40
    .local v0, fadeinAnimation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/sidekick/ResultItem;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 41
    return-void
.end method

.method public leaveDeleteMode()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/sidekick/ResultItem;->mDeleteButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/sidekick/ResultItem;->mDeleteButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/android/sidekick/ResultItem;->mDeleteButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    :cond_0
    return-void
.end method
