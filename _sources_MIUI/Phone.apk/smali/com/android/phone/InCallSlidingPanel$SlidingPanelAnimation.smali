.class Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;
.super Landroid/view/animation/Animation;
.source "InCallSlidingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallSlidingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingPanelAnimation"
.end annotation


# instance fields
.field private mDeltaY:I

.field private mMode:I

.field private mPanel:Lcom/android/phone/InCallSlidingPanel;

.field final synthetic this$0:Lcom/android/phone/InCallSlidingPanel;


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallSlidingPanel;Lcom/android/phone/InCallSlidingPanel;I)V
    .locals 1
    .parameter
    .parameter "panel"
    .parameter "mode"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;->this$0:Lcom/android/phone/InCallSlidingPanel;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;->mMode:I

    .line 157
    iput-object p2, p0, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;->mPanel:Lcom/android/phone/InCallSlidingPanel;

    .line 158
    iput p3, p0, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;->mMode:I

    .line 159
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 172
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;->mDeltaY:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 173
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    .line 164
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;->mPanel:Lcom/android/phone/InCallSlidingPanel;

    iget v1, p0, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;->mMode:I

    #calls: Lcom/android/phone/InCallSlidingPanel;->getTargetBottomMargin(I)I
    invoke-static {v0, v1}, Lcom/android/phone/InCallSlidingPanel;->access$000(Lcom/android/phone/InCallSlidingPanel;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;->mPanel:Lcom/android/phone/InCallSlidingPanel;

    #calls: Lcom/android/phone/InCallSlidingPanel;->getCurrentBottomMargin()I
    invoke-static {v1}, Lcom/android/phone/InCallSlidingPanel;->access$100(Lcom/android/phone/InCallSlidingPanel;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;->mDeltaY:I

    .line 165
    return-void
.end method
