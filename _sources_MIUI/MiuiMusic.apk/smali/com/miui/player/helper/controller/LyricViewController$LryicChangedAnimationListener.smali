.class Lcom/miui/player/helper/controller/LyricViewController$LryicChangedAnimationListener;
.super Ljava/lang/Object;
.source "LyricViewController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/LyricViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LryicChangedAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/LyricViewController;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/controller/LyricViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/miui/player/helper/controller/LyricViewController$LryicChangedAnimationListener;->this$0:Lcom/miui/player/helper/controller/LyricViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/controller/LyricViewController;Lcom/miui/player/helper/controller/LyricViewController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/LyricViewController$LryicChangedAnimationListener;-><init>(Lcom/miui/player/helper/controller/LyricViewController;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 341
    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController$LryicChangedAnimationListener;->this$0:Lcom/miui/player/helper/controller/LyricViewController;

    #getter for: Lcom/miui/player/helper/controller/LyricViewController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/player/helper/controller/LyricViewController;->access$100(Lcom/miui/player/helper/controller/LyricViewController;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 342
    .local v0, fadeIn:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController$LryicChangedAnimationListener;->this$0:Lcom/miui/player/helper/controller/LyricViewController;

    #calls: Lcom/miui/player/helper/controller/LyricViewController;->refreshLyricBgStyle()V
    invoke-static {v1}, Lcom/miui/player/helper/controller/LyricViewController;->access$200(Lcom/miui/player/helper/controller/LyricViewController;)V

    .line 343
    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController$LryicChangedAnimationListener;->this$0:Lcom/miui/player/helper/controller/LyricViewController;

    #calls: Lcom/miui/player/helper/controller/LyricViewController;->changeLyric()Z
    invoke-static {v1}, Lcom/miui/player/helper/controller/LyricViewController;->access$300(Lcom/miui/player/helper/controller/LyricViewController;)Z

    .line 344
    new-instance v1, Lcom/miui/player/helper/controller/LyricViewController$FadeInAnimationListener;

    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricViewController$LryicChangedAnimationListener;->this$0:Lcom/miui/player/helper/controller/LyricViewController;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/player/helper/controller/LyricViewController$FadeInAnimationListener;-><init>(Lcom/miui/player/helper/controller/LyricViewController;Lcom/miui/player/helper/controller/LyricViewController$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 345
    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController$LryicChangedAnimationListener;->this$0:Lcom/miui/player/helper/controller/LyricViewController;

    #getter for: Lcom/miui/player/helper/controller/LyricViewController;->mLyricViewFront:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/player/helper/controller/LyricViewController;->access$500(Lcom/miui/player/helper/controller/LyricViewController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 346
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 350
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 354
    return-void
.end method
