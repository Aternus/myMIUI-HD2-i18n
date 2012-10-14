.class Lcom/android/browser/ui/TitleView$2;
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
    .line 161
    iput-object p1, p0, Lcom/android/browser/ui/TitleView$2;->this$0:Lcom/android/browser/ui/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$2;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mSearchBox:Landroid/view/View;
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$100(Lcom/android/browser/ui/TitleView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$2;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mUrlBoxTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$200(Lcom/android/browser/ui/TitleView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$2;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mUrlBox:Landroid/view/View;
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$400(Lcom/android/browser/ui/TitleView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/ui/TitleView$2;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mScaleRight:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/browser/ui/TitleView;->access$300(Lcom/android/browser/ui/TitleView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    return-void
.end method
