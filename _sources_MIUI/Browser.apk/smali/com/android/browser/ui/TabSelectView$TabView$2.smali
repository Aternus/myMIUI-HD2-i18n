.class Lcom/android/browser/ui/TabSelectView$TabView$2;
.super Ljava/lang/Object;
.source "TabSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/TabSelectView$TabView;->setInactive(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/ui/TabSelectView$TabView;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/TabSelectView$TabView;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/browser/ui/TabSelectView$TabView$2;->this$1:Lcom/android/browser/ui/TabSelectView$TabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/browser/ui/TabSelectView$TabView$2;->this$1:Lcom/android/browser/ui/TabSelectView$TabView;

    #getter for: Lcom/android/browser/ui/TabSelectView$TabView;->mTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/browser/ui/TabSelectView$TabView;->access$100(Lcom/android/browser/ui/TabSelectView$TabView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 191
    return-void
.end method
