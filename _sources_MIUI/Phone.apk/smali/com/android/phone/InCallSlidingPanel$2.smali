.class Lcom/android/phone/InCallSlidingPanel$2;
.super Ljava/lang/Object;
.source "InCallSlidingPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallSlidingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallSlidingPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallSlidingPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/phone/InCallSlidingPanel$2;->this$0:Lcom/android/phone/InCallSlidingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x1

    .line 227
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel$2;->this$0:Lcom/android/phone/InCallSlidingPanel;

    #getter for: Lcom/android/phone/InCallSlidingPanel;->mSlidingGreenBarLight:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/InCallSlidingPanel;->access$700(Lcom/android/phone/InCallSlidingPanel;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel$2;->this$0:Lcom/android/phone/InCallSlidingPanel;

    invoke-virtual {v0}, Lcom/android/phone/InCallSlidingPanel;->clearAnimation()V

    .line 229
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel$2;->this$0:Lcom/android/phone/InCallSlidingPanel;

    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel$2;->this$0:Lcom/android/phone/InCallSlidingPanel;

    #calls: Lcom/android/phone/InCallSlidingPanel;->getTargetBottomMargin(I)I
    invoke-static {v1, v2}, Lcom/android/phone/InCallSlidingPanel;->access$000(Lcom/android/phone/InCallSlidingPanel;I)I

    move-result v1

    #calls: Lcom/android/phone/InCallSlidingPanel;->setBottomMargin(I)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallSlidingPanel;->access$400(Lcom/android/phone/InCallSlidingPanel;I)V

    .line 230
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel$2;->this$0:Lcom/android/phone/InCallSlidingPanel;

    #setter for: Lcom/android/phone/InCallSlidingPanel;->mAnimationStartPosition:I
    invoke-static {v0, v2}, Lcom/android/phone/InCallSlidingPanel;->access$502(Lcom/android/phone/InCallSlidingPanel;I)I

    .line 231
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 223
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x4

    .line 217
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel$2;->this$0:Lcom/android/phone/InCallSlidingPanel;

    #getter for: Lcom/android/phone/InCallSlidingPanel;->mSlidingGreenBar:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/InCallSlidingPanel;->access$200(Lcom/android/phone/InCallSlidingPanel;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel$2;->this$0:Lcom/android/phone/InCallSlidingPanel;

    #getter for: Lcom/android/phone/InCallSlidingPanel;->mSlidingDownTargetView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/InCallSlidingPanel;->access$300(Lcom/android/phone/InCallSlidingPanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    return-void
.end method
