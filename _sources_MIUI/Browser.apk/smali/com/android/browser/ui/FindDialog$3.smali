.class Lcom/android/browser/ui/FindDialog$3;
.super Ljava/lang/Object;
.source "FindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/FindDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/FindDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/FindDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/browser/ui/FindDialog$3;->this$0:Lcom/android/browser/ui/FindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog$3;->this$0:Lcom/android/browser/ui/FindDialog;

    #getter for: Lcom/android/browser/ui/FindDialog;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/ui/FindDialog;->access$400(Lcom/android/browser/ui/FindDialog;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindDialog::onClick"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog$3;->this$0:Lcom/android/browser/ui/FindDialog;

    #getter for: Lcom/android/browser/ui/FindDialog;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/ui/FindDialog;->access$400(Lcom/android/browser/ui/FindDialog;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->findNext(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog$3;->this$0:Lcom/android/browser/ui/FindDialog;

    iget-object v1, p0, Lcom/android/browser/ui/FindDialog$3;->this$0:Lcom/android/browser/ui/FindDialog;

    #getter for: Lcom/android/browser/ui/FindDialog;->mIth:I
    invoke-static {v1}, Lcom/android/browser/ui/FindDialog;->access$100(Lcom/android/browser/ui/FindDialog;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/browser/ui/FindDialog$3;->this$0:Lcom/android/browser/ui/FindDialog;

    #getter for: Lcom/android/browser/ui/FindDialog;->mFound:I
    invoke-static {v2}, Lcom/android/browser/ui/FindDialog;->access$200(Lcom/android/browser/ui/FindDialog;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/browser/ui/FindDialog$3;->this$0:Lcom/android/browser/ui/FindDialog;

    #getter for: Lcom/android/browser/ui/FindDialog;->mFound:I
    invoke-static {v2}, Lcom/android/browser/ui/FindDialog;->access$200(Lcom/android/browser/ui/FindDialog;)I

    move-result v2

    rem-int/2addr v1, v2

    #setter for: Lcom/android/browser/ui/FindDialog;->mIth:I
    invoke-static {v0, v1}, Lcom/android/browser/ui/FindDialog;->access$102(Lcom/android/browser/ui/FindDialog;I)I

    .line 79
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog$3;->this$0:Lcom/android/browser/ui/FindDialog;

    #calls: Lcom/android/browser/ui/FindDialog;->setMatchesFound()V
    invoke-static {v0}, Lcom/android/browser/ui/FindDialog;->access$300(Lcom/android/browser/ui/FindDialog;)V

    .line 81
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog$3;->this$0:Lcom/android/browser/ui/FindDialog;

    #calls: Lcom/android/browser/ui/FindDialog;->hideSoftInput()V
    invoke-static {v0}, Lcom/android/browser/ui/FindDialog;->access$500(Lcom/android/browser/ui/FindDialog;)V

    .line 82
    return-void
.end method
