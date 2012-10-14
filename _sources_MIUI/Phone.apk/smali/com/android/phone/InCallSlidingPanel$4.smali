.class Lcom/android/phone/InCallSlidingPanel$4;
.super Ljava/lang/Object;
.source "InCallSlidingPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallSlidingPanel;->reset(Lcom/android/internal/telephony/CallManager;)V
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
    .line 510
    iput-object p1, p0, Lcom/android/phone/InCallSlidingPanel$4;->this$0:Lcom/android/phone/InCallSlidingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 513
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel$4;->this$0:Lcom/android/phone/InCallSlidingPanel;

    #getter for: Lcom/android/phone/InCallSlidingPanel;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;
    invoke-static {v0}, Lcom/android/phone/InCallSlidingPanel;->access$800(Lcom/android/phone/InCallSlidingPanel;)Landroid/widget/GuidePopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel$4;->this$0:Lcom/android/phone/InCallSlidingPanel;

    new-instance v1, Landroid/widget/GuidePopupWindow;

    iget-object v2, p0, Lcom/android/phone/InCallSlidingPanel$4;->this$0:Lcom/android/phone/InCallSlidingPanel;

    #getter for: Lcom/android/phone/InCallSlidingPanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/InCallSlidingPanel;->access$900(Lcom/android/phone/InCallSlidingPanel;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/phone/InCallSlidingPanel;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;
    invoke-static {v0, v1}, Lcom/android/phone/InCallSlidingPanel;->access$802(Lcom/android/phone/InCallSlidingPanel;Landroid/widget/GuidePopupWindow;)Landroid/widget/GuidePopupWindow;

    .line 515
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel$4;->this$0:Lcom/android/phone/InCallSlidingPanel;

    #getter for: Lcom/android/phone/InCallSlidingPanel;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;
    invoke-static {v0}, Lcom/android/phone/InCallSlidingPanel;->access$800(Lcom/android/phone/InCallSlidingPanel;)Landroid/widget/GuidePopupWindow;

    move-result-object v0

    const v1, 0x7f0c0215

    invoke-virtual {v0, v1}, Landroid/widget/GuidePopupWindow;->setGuideText(I)V

    .line 516
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel$4;->this$0:Lcom/android/phone/InCallSlidingPanel;

    #getter for: Lcom/android/phone/InCallSlidingPanel;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;
    invoke-static {v0}, Lcom/android/phone/InCallSlidingPanel;->access$800(Lcom/android/phone/InCallSlidingPanel;)Landroid/widget/GuidePopupWindow;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 517
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel$4;->this$0:Lcom/android/phone/InCallSlidingPanel;

    #getter for: Lcom/android/phone/InCallSlidingPanel;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;
    invoke-static {v0}, Lcom/android/phone/InCallSlidingPanel;->access$800(Lcom/android/phone/InCallSlidingPanel;)Landroid/widget/GuidePopupWindow;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 518
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel$4;->this$0:Lcom/android/phone/InCallSlidingPanel;

    #getter for: Lcom/android/phone/InCallSlidingPanel;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;
    invoke-static {v0}, Lcom/android/phone/InCallSlidingPanel;->access$800(Lcom/android/phone/InCallSlidingPanel;)Landroid/widget/GuidePopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel$4;->this$0:Lcom/android/phone/InCallSlidingPanel;

    #getter for: Lcom/android/phone/InCallSlidingPanel;->mSlidingGreenBar:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/phone/InCallSlidingPanel;->access$200(Lcom/android/phone/InCallSlidingPanel;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 520
    :cond_0
    return-void
.end method
