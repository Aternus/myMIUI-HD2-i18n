.class Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;
.super Ljava/lang/Object;
.source "MiRenWebViewCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;->onVideoDetected(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;

.field final synthetic val$posX:I

.field final synthetic val$posY:I

.field final synthetic val$src:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1906
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;

    iput p2, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;->val$posX:I

    iput p3, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;->val$posY:I

    iput-object p4, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;->val$src:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 1910
    iget-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;

    iget-object v3, v3, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v3, v3, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030021

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1912
    .local v1, playView:Landroid/view/View;
    iget-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;

    iget-object v3, v3, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenWebViewCore;->getScale()F

    move-result v2

    .line 1914
    .local v2, scale:F
    iget-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;

    iget-object v3, v3, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v3, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->addView(Landroid/view/View;)V

    .line 1915
    invoke-virtual {v1, v6, v6}, Landroid/view/View;->measure(II)V

    .line 1916
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;->val$posX:I

    add-int/lit8 v6, v6, 0x14

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    iget v7, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;->val$posY:I

    add-int/lit8 v7, v7, 0x14

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1920
    iget-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;

    iget-object v3, v3, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    #getter for: Lcom/android/browser/ui/MiRenWebViewCore;->mVideoBtns:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/browser/ui/MiRenWebViewCore;->access$900(Lcom/android/browser/ui/MiRenWebViewCore;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1922
    const v3, 0x7f0d008b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1923
    .local v0, playBtn:Landroid/widget/Button;
    new-instance v3, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1$1;

    invoke-direct {v3, p0}, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1$1;-><init>(Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1940
    return-void
.end method
