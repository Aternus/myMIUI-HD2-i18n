.class Lcom/android/browser/controller/ForumController$ForumJSInterface$1;
.super Ljava/lang/Object;
.source "ForumController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ForumController$ForumJSInterface;->onForumNavigate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/controller/ForumController$ForumJSInterface;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ForumController$ForumJSInterface;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$1;->this$1:Lcom/android/browser/controller/ForumController$ForumJSInterface;

    iput-object p2, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$1;->this$1:Lcom/android/browser/controller/ForumController$ForumJSInterface;

    iget-object v0, v0, Lcom/android/browser/controller/ForumController$ForumJSInterface;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$1;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/browser/ui/MiRenWebViewListener;->preNavigation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$1;->this$1:Lcom/android/browser/controller/ForumController$ForumJSInterface;

    iget-object v0, v0, Lcom/android/browser/controller/ForumController$ForumJSInterface;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    check-cast v0, Lcom/android/browser/controller/Tab;

    iget-object v1, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface$1;->val$url:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/controller/Tab;->doNavigationInSpecialMode(Ljava/lang/String;I)V

    .line 801
    :cond_0
    return-void
.end method
