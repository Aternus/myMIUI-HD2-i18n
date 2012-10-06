.class Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;
.super Ljava/lang/Object;
.source "SimpleModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/SimpleModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleModeJSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/SimpleModeController;


# direct methods
.method private constructor <init>(Lcom/android/browser/controller/SimpleModeController;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;->this$0:Lcom/android/browser/controller/SimpleModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/SimpleModeController;Lcom/android/browser/controller/SimpleModeController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;-><init>(Lcom/android/browser/controller/SimpleModeController;)V

    return-void
.end method


# virtual methods
.method public onContentDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "content"
    .parameter "next"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/SimpleModeController;->access$200(Lcom/android/browser/controller/SimpleModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface$1;-><init>(Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method
