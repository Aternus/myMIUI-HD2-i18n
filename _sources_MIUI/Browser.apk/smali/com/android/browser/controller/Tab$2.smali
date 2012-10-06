.class Lcom/android/browser/controller/Tab$2;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/Tab;->doNavigation(Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/browser/controller/Tab$2;->this$0:Lcom/android/browser/controller/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 683
    iget-object v0, p0, Lcom/android/browser/controller/Tab$2;->this$0:Lcom/android/browser/controller/Tab;

    new-instance v1, Landroid/widget/GuidePopupWindow;

    iget-object v2, p0, Lcom/android/browser/controller/Tab$2;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v2}, Lcom/android/browser/controller/Tab;->access$300(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/browser/controller/Tab;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;
    invoke-static {v0, v1}, Lcom/android/browser/controller/Tab;->access$502(Lcom/android/browser/controller/Tab;Landroid/widget/GuidePopupWindow;)Landroid/widget/GuidePopupWindow;

    .line 685
    iget-object v0, p0, Lcom/android/browser/controller/Tab$2;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;
    invoke-static {v0}, Lcom/android/browser/controller/Tab;->access$500(Lcom/android/browser/controller/Tab;)Landroid/widget/GuidePopupWindow;

    move-result-object v0

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/widget/GuidePopupWindow;->setGuideText(I)V

    .line 686
    iget-object v0, p0, Lcom/android/browser/controller/Tab$2;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;
    invoke-static {v0}, Lcom/android/browser/controller/Tab;->access$500(Lcom/android/browser/controller/Tab;)Landroid/widget/GuidePopupWindow;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 687
    iget-object v0, p0, Lcom/android/browser/controller/Tab$2;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;
    invoke-static {v0}, Lcom/android/browser/controller/Tab;->access$500(Lcom/android/browser/controller/Tab;)Landroid/widget/GuidePopupWindow;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 688
    iget-object v0, p0, Lcom/android/browser/controller/Tab$2;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;
    invoke-static {v0}, Lcom/android/browser/controller/Tab;->access$500(Lcom/android/browser/controller/Tab;)Landroid/widget/GuidePopupWindow;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/GuidePopupWindow;->enableOutSideWindowTouchDismiss(Z)V

    .line 689
    iget-object v0, p0, Lcom/android/browser/controller/Tab$2;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;
    invoke-static {v0}, Lcom/android/browser/controller/Tab;->access$500(Lcom/android/browser/controller/Tab;)Landroid/widget/GuidePopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/Tab$2;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v1}, Lcom/android/browser/controller/Tab;->access$300(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->getFullScreenButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 690
    return-void
.end method
