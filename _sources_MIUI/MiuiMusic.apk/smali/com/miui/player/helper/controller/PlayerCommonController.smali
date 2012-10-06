.class public Lcom/miui/player/helper/controller/PlayerCommonController;
.super Ljava/lang/Object;
.source "PlayerCommonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/controller/PlayerCommonController$1;,
        Lcom/miui/player/helper/controller/PlayerCommonController$RepeatClickCallback;,
        Lcom/miui/player/helper/controller/PlayerCommonController$OnForwardRepeatingClick;,
        Lcom/miui/player/helper/controller/PlayerCommonController$OnBackwardRepeatingClick;,
        Lcom/miui/player/helper/controller/PlayerCommonController$OnPauseResumeClickListener;,
        Lcom/miui/player/helper/controller/PlayerCommonController$OnNextClickListener;,
        Lcom/miui/player/helper/controller/PlayerCommonController$OnPrevClickListener;
    }
.end annotation


# static fields
.field private static final REPEAT_INTEVAL:I = 0x104


# instance fields
.field private final mCommonBar:Landroid/view/View;

.field private final mNextButton:Lcom/miui/player/ui/view/RepeatingImageButton;

.field private final mPauseButton:Landroid/widget/ImageView;

.field private final mPrevButton:Lcom/miui/player/ui/view/RepeatingImageButton;

.field private final mRepeatClickCallback:Lcom/miui/player/helper/controller/PlayerCommonController$RepeatClickCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/player/helper/controller/PlayerCommonController$RepeatClickCallback;)V
    .locals 6
    .parameter "a"
    .parameter "repeatClickCallback"

    .prologue
    const-wide/16 v4, 0x104

    const/4 v3, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mRepeatClickCallback:Lcom/miui/player/helper/controller/PlayerCommonController$RepeatClickCallback;

    .line 29
    const v0, 0x7f0c0031

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    const v1, 0x7f0c0046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/view/RepeatingImageButton;

    iput-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mPrevButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    .line 31
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/player/ui/view/RepeatingImageButton;

    iput-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mNextButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    .line 32
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    const v1, 0x7f0c0045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mPauseButton:Landroid/widget/ImageView;

    .line 34
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mPrevButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    new-instance v1, Lcom/miui/player/helper/controller/PlayerCommonController$OnPrevClickListener;

    invoke-direct {v1, p0, v3}, Lcom/miui/player/helper/controller/PlayerCommonController$OnPrevClickListener;-><init>(Lcom/miui/player/helper/controller/PlayerCommonController;Lcom/miui/player/helper/controller/PlayerCommonController$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mPrevButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    new-instance v1, Lcom/miui/player/helper/controller/PlayerCommonController$OnBackwardRepeatingClick;

    iget-object v2, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mRepeatClickCallback:Lcom/miui/player/helper/controller/PlayerCommonController$RepeatClickCallback;

    invoke-direct {v1, p0, v2}, Lcom/miui/player/helper/controller/PlayerCommonController$OnBackwardRepeatingClick;-><init>(Lcom/miui/player/helper/controller/PlayerCommonController;Lcom/miui/player/helper/controller/PlayerCommonController$RepeatClickCallback;)V

    invoke-virtual {v0, v1, v4, v5}, Lcom/miui/player/ui/view/RepeatingImageButton;->setRepeatListener(Lcom/miui/player/ui/view/RepeatingImageButton$RepeatListener;J)V

    .line 37
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mNextButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    new-instance v1, Lcom/miui/player/helper/controller/PlayerCommonController$OnNextClickListener;

    invoke-direct {v1, p0, v3}, Lcom/miui/player/helper/controller/PlayerCommonController$OnNextClickListener;-><init>(Lcom/miui/player/helper/controller/PlayerCommonController;Lcom/miui/player/helper/controller/PlayerCommonController$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mNextButton:Lcom/miui/player/ui/view/RepeatingImageButton;

    new-instance v1, Lcom/miui/player/helper/controller/PlayerCommonController$OnForwardRepeatingClick;

    iget-object v2, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mRepeatClickCallback:Lcom/miui/player/helper/controller/PlayerCommonController$RepeatClickCallback;

    invoke-direct {v1, p0, v2}, Lcom/miui/player/helper/controller/PlayerCommonController$OnForwardRepeatingClick;-><init>(Lcom/miui/player/helper/controller/PlayerCommonController;Lcom/miui/player/helper/controller/PlayerCommonController$RepeatClickCallback;)V

    invoke-virtual {v0, v1, v4, v5}, Lcom/miui/player/ui/view/RepeatingImageButton;->setRepeatListener(Lcom/miui/player/ui/view/RepeatingImageButton$RepeatListener;J)V

    .line 40
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mPauseButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/player/helper/controller/PlayerCommonController$OnPauseResumeClickListener;

    invoke-direct {v1, p0, v3}, Lcom/miui/player/helper/controller/PlayerCommonController$OnPauseResumeClickListener;-><init>(Lcom/miui/player/helper/controller/PlayerCommonController;Lcom/miui/player/helper/controller/PlayerCommonController$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    return-object v0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/miui/player/MusicUtils;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mPauseButton:Landroid/widget/ImageView;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mPauseButton:Landroid/widget/ImageView;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setVisible(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlayerCommonController;->mCommonBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    return-void
.end method
