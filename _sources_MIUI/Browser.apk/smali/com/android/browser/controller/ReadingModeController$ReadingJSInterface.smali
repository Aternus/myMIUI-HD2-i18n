.class final Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;
.super Ljava/lang/Object;
.source "ReadingModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/ReadingModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ReadingJSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/ReadingModeController;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ReadingModeController;)V
    .locals 0
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;->this$0:Lcom/android/browser/controller/ReadingModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsNightMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 800
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getIsInNightMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 804
    invoke-static {}, Lcom/android/browser/controller/ReadingModeController;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return-void
.end method

.method public pageDown()V
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$700(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface$2;

    invoke-direct {v1, p0}, Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface$2;-><init>(Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 797
    return-void
.end method

.method public pageUp()V
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$700(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface$1;

    invoke-direct {v1, p0}, Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface$1;-><init>(Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 787
    return-void
.end method

.method public queryNextPage()V
    .locals 4

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;->this$0:Lcom/android/browser/controller/ReadingModeController;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/controller/ReadingModeController;->mRetry:I
    invoke-static {v0, v1}, Lcom/android/browser/controller/ReadingModeController;->access$402(Lcom/android/browser/controller/ReadingModeController;I)I

    .line 771
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$700(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ReadingModeController$ReadingDataRunnable;

    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;->this$0:Lcom/android/browser/controller/ReadingModeController;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/browser/controller/ReadingModeController$ReadingDataRunnable;-><init>(Lcom/android/browser/controller/ReadingModeController;Lcom/android/browser/controller/ReadingModeController$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 772
    return-void
.end method

.method public removeOldPage()V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$1300(Lcom/android/browser/controller/ReadingModeController;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 777
    return-void
.end method
