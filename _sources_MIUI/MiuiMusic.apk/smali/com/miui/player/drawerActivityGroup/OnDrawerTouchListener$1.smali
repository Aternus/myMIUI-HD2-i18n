.class Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$1;
.super Ljava/lang/Object;
.source "OnDrawerTouchListener.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->applySlideAnim(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

.field final synthetic val$end:I


# direct methods
.method constructor <init>(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$1;->this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    iput p2, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$1;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$1;->this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    iget v1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$1;->val$end:I

    #setter for: Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTop:I
    invoke-static {v0, v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->access$002(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;I)I

    .line 171
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$1;->this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    #getter for: Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mHeaderView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->access$100(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 173
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$1;->this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    #getter for: Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->access$200(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$1;->this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    #getter for: Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->access$200(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$1;->this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    invoke-virtual {v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->isContentViewClose()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;->endSlide(Z)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$1;->this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    const/4 v1, 0x0

    #setter for: Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mAnimationPlaying:Z
    invoke-static {v0, v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->access$302(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;Z)Z

    .line 178
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 183
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$1;->this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    const/4 v1, 0x1

    #setter for: Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mAnimationPlaying:Z
    invoke-static {v0, v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->access$302(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;Z)Z

    .line 188
    return-void
.end method
