.class Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface$1;
.super Ljava/lang/Object;
.source "SimpleModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;->onContentDetected(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$next:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface$1;->this$1:Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;

    iput-object p2, p0, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface$1;->val$content:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface$1;->val$next:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 163
    iget-object v3, p0, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface$1;->this$1:Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;

    iget-object v3, v3, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;->this$0:Lcom/android/browser/controller/SimpleModeController;

    iget-object v4, p0, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface$1;->val$content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/browser/controller/SimpleModeController;->appendPageContent(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface$1;->val$next:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface$1;->val$next:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/browser/common/Network;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 166
    .local v1, forumUri:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface$1;->this$1:Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;

    iget-object v3, v3, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mTargetUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/browser/controller/SimpleModeController;->access$100(Lcom/android/browser/controller/SimpleModeController;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/common/Network;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 168
    .local v0, baseUri:Ljava/net/URI;
    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    .line 170
    .end local v0           #baseUri:Ljava/net/URI;
    :cond_0
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface$1;->this$1:Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;

    iget-object v3, v3, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;
    invoke-static {v3}, Lcom/android/browser/controller/SimpleModeController;->access$600(Lcom/android/browser/controller/SimpleModeController;)Lcom/android/browser/ui/MiRenWebViewBase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/browser/ui/MiRenWebViewBase;->loadUrl(Ljava/lang/String;)V

    .line 176
    .end local v1           #forumUri:Ljava/net/URI;
    .end local v2           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v3, p0, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface$1;->this$1:Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;

    iget-object v3, v3, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #calls: Lcom/android/browser/controller/SimpleModeController;->showFooter()V
    invoke-static {v3}, Lcom/android/browser/controller/SimpleModeController;->access$800(Lcom/android/browser/controller/SimpleModeController;)V

    goto :goto_0
.end method
