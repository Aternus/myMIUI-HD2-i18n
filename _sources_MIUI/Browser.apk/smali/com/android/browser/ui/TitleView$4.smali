.class Lcom/android/browser/ui/TitleView$4;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/TitleView;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/TitleView;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/TitleView;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/browser/ui/TitleView$4;->this$0:Lcom/android/browser/ui/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$4;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mUrlBox:Landroid/view/View;
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$400(Lcom/android/browser/ui/TitleView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$4;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mSearchBoxTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$500(Lcom/android/browser/ui/TitleView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$4;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mSearchBox:Landroid/view/View;
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$100(Lcom/android/browser/ui/TitleView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/ui/TitleView$4;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mScaleLeft:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/browser/ui/TitleView;->access$600(Lcom/android/browser/ui/TitleView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    return-void
.end method
