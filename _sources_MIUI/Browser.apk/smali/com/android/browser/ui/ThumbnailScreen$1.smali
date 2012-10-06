.class Lcom/android/browser/ui/ThumbnailScreen$1;
.super Ljava/lang/Object;
.source "ThumbnailScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/ThumbnailScreen;->startMovingAnimation(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/ThumbnailScreen;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/ThumbnailScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/browser/ui/ThumbnailScreen$1;->this$0:Lcom/android/browser/ui/ThumbnailScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/browser/ui/ThumbnailScreen$1;->this$0:Lcom/android/browser/ui/ThumbnailScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/ui/ThumbnailScreen;->mMovingAnimationStarted:Z
    invoke-static {v0, v1}, Lcom/android/browser/ui/ThumbnailScreen;->access$002(Lcom/android/browser/ui/ThumbnailScreen;Z)Z

    .line 204
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 206
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 200
    return-void
.end method
