.class public Lcom/miui/player/helper/controller/OnlineStatusBarController;
.super Ljava/lang/Object;
.source "OnlineStatusBarController.java"


# instance fields
.field private mLoadingFailedId:I

.field private mLoadingInProcessId:I

.field private final mStatusBar:Landroid/view/View;

.field private final mStatusHintTextView:Landroid/widget/TextView;

.field private final mStatusProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "a"
    .parameter "id"
    .parameter "onRetryClickListener"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusBar:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusBar:Landroid/view/View;

    const v1, 0x7f0c0094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusProgressBar:Landroid/widget/ProgressBar;

    .line 26
    iget-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusBar:Landroid/view/View;

    const v1, 0x7f0c0093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusHintTextView:Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusBar:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method


# virtual methods
.method public setLoadFailed()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusHintTextView:Landroid/widget/TextView;

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 59
    iget-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusHintTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mLoadingFailedId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    return-void
.end method

.method public setLoadInProcess()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusHintTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mLoadingInProcessId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    return-void
.end method

.method public setLoadSuccess()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    return-void
.end method

.method public setLoadingHintTextId(II)V
    .locals 0
    .parameter "loadingInProcessId"
    .parameter "loadingFailedId"

    .prologue
    .line 31
    iput p1, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mLoadingInProcessId:I

    .line 32
    iput p2, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mLoadingFailedId:I

    .line 33
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/OnlineStatusBarController;->mStatusBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
