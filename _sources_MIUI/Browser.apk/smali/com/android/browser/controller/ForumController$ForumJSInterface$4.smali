.class Lcom/android/browser/controller/ForumController$ForumJSInterface$4;
.super Ljava/lang/Object;
.source "ForumController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ForumController$ForumJSInterface;->doFastPosting(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/controller/ForumController$ForumJSInterface;

.field final synthetic val$_content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ForumController$ForumJSInterface;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$4;->this$1:Lcom/android/browser/controller/ForumController$ForumJSInterface;

    iput-object p2, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$4;->val$_content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 864
    iget-object v2, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$4;->val$_content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 865
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$4;->this$1:Lcom/android/browser/controller/ForumController$ForumJSInterface;

    iget-object v3, v3, Lcom/android/browser/controller/ForumController$ForumJSInterface;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v3}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090077

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09000f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 870
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 880
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 873
    :cond_0
    iget-object v2, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$4;->this$1:Lcom/android/browser/controller/ForumController$ForumJSInterface;

    iget-object v2, v2, Lcom/android/browser/controller/ForumController$ForumJSInterface;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mForumTypeDetector:Lcom/android/browser/controller/ForumTypeDetector;
    invoke-static {v2}, Lcom/android/browser/controller/ForumController;->access$1200(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/controller/ForumTypeDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/controller/ForumTypeDetector;->getForumDataDetectorShell()Lcom/android/browser/controller/ForumDataDetectorShell;

    move-result-object v1

    .line 874
    .local v1, forumDataDetectorShell:Lcom/android/browser/controller/ForumDataDetectorShell;
    if-nez v1, :cond_1

    .line 875
    invoke-static {}, Lcom/android/browser/controller/ForumController;->access$1300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cannot doFastPosting, no forum detected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 879
    :cond_1
    iget-object v2, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$4;->val$_content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/browser/controller/ForumDataDetectorShell;->doFastPosting(Ljava/lang/String;)V

    goto :goto_0
.end method
