.class Lcom/miui/player/helper/controller/LyricMovementController$SlideAnimationListener;
.super Ljava/lang/Object;
.source "LyricMovementController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/LyricMovementController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/LyricMovementController;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/controller/LyricMovementController;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/miui/player/helper/controller/LyricMovementController$SlideAnimationListener;->this$0:Lcom/miui/player/helper/controller/LyricMovementController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/controller/LyricMovementController;Lcom/miui/player/helper/controller/LyricMovementController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/LyricMovementController$SlideAnimationListener;-><init>(Lcom/miui/player/helper/controller/LyricMovementController;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController$SlideAnimationListener;->this$0:Lcom/miui/player/helper/controller/LyricMovementController;

    const/4 v1, 0x0

    #setter for: Lcom/miui/player/helper/controller/LyricMovementController;->mLyricStatus:I
    invoke-static {v0, v1}, Lcom/miui/player/helper/controller/LyricMovementController;->access$302(Lcom/miui/player/helper/controller/LyricMovementController;I)I

    .line 271
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 276
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 281
    return-void
.end method
