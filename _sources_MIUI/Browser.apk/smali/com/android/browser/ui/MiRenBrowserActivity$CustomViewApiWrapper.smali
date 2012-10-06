.class public Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;
.super Ljava/lang/Object;
.source "MiRenBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomViewApiWrapper"
.end annotation


# instance fields
.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field final synthetic this$0:Lcom/android/browser/ui/MiRenBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2885
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2908
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$2300(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2921
    :goto_0
    return-void

    .line 2912
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$2300(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2914
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$2500(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$2300(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2915
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$2302(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/view/View;)Landroid/view/View;

    .line 2916
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$2500(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2917
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 2919
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    const v1, 0x7f0d001b

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2920
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->showStatusBar(Z)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 2890
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$2300(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2891
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 2905
    :goto_0
    return-void

    .line 2896
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$2500(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$2400()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2897
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #setter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomView:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$2302(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/view/View;)Landroid/view/View;

    .line 2898
    iput-object p2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 2900
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    const v1, 0x7f0d001b

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2901
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->hideStatusBar(Z)V

    .line 2903
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$2500(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2904
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$2500(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    goto :goto_0
.end method
