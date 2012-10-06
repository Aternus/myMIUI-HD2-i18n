.class Lcom/miui/player/helper/controller/LyricViewController$FadeInAnimationListener;
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
    name = "FadeInAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/LyricViewController;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/controller/LyricViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/miui/player/helper/controller/LyricViewController$FadeInAnimationListener;->this$0:Lcom/miui/player/helper/controller/LyricViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/controller/LyricViewController;Lcom/miui/player/helper/controller/LyricViewController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/LyricViewController$FadeInAnimationListener;-><init>(Lcom/miui/player/helper/controller/LyricViewController;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController$FadeInAnimationListener;->this$0:Lcom/miui/player/helper/controller/LyricViewController;

    #getter for: Lcom/miui/player/helper/controller/LyricViewController;->mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;
    invoke-static {v0}, Lcom/miui/player/helper/controller/LyricViewController;->access$600(Lcom/miui/player/helper/controller/LyricViewController;)Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController$FadeInAnimationListener;->this$0:Lcom/miui/player/helper/controller/LyricViewController;

    #getter for: Lcom/miui/player/helper/controller/LyricViewController;->mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;
    invoke-static {v0}, Lcom/miui/player/helper/controller/LyricViewController;->access$600(Lcom/miui/player/helper/controller/LyricViewController;)Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;->setAnimationPlaying(Z)V

    .line 364
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 368
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 372
    return-void
.end method
