.class Lcom/android/browser/controller/ForumController$5;
.super Ljava/lang/Object;
.source "ForumController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ForumController;->setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/ForumController;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ForumController;)V
    .locals 0
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/browser/controller/ForumController$5;->this$0:Lcom/android/browser/controller/ForumController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/browser/controller/ForumController$5;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/ForumController$5;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v1}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/controller/ForumController$5;->this$0:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v2}, Lcom/android/browser/controller/ForumController;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/browser/ui/MiRenWebViewListener;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 720
    return-void
.end method
