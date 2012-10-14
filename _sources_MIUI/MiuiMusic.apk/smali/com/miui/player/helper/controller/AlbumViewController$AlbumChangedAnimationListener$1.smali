.class Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener$1;
.super Ljava/lang/Object;
.source "AlbumViewController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener$1;->this$1:Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener$1;->this$1:Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;

    iget-object v0, v0, Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;->this$0:Lcom/miui/player/helper/controller/AlbumViewController;

    #getter for: Lcom/miui/player/helper/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;
    invoke-static {v0}, Lcom/miui/player/helper/controller/AlbumViewController;->access$200(Lcom/miui/player/helper/controller/AlbumViewController;)Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener$1;->this$1:Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;

    iget-object v0, v0, Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;->this$0:Lcom/miui/player/helper/controller/AlbumViewController;

    #getter for: Lcom/miui/player/helper/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;
    invoke-static {v0}, Lcom/miui/player/helper/controller/AlbumViewController;->access$200(Lcom/miui/player/helper/controller/AlbumViewController;)Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;->setAnimationPlaying(Z)V

    .line 234
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 238
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 242
    return-void
.end method
