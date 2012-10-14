.class Lcom/android/browser/controller/ReadingModeController$2;
.super Landroid/os/AsyncTask;
.source "ReadingModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ReadingModeController;->getNextPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/browser/controller/ReadingModeController$ReadingData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/ReadingModeController;

.field final synthetic val$_nextUri:Ljava/net/URI;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ReadingModeController;Ljava/net/URI;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController$2;->this$0:Lcom/android/browser/controller/ReadingModeController;

    iput-object p2, p0, Lcom/android/browser/controller/ReadingModeController$2;->val$_nextUri:Ljava/net/URI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .locals 2
    .parameter "params"

    .prologue
    .line 511
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    const/4 v0, 0x0

    .line 513
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$2;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$700(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController$2;->val$_nextUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/browser/util/ReadingDataUtil;->getMcacheData(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/controller/ReadingModeController$ReadingData;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 507
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/controller/ReadingModeController$2;->doInBackground([Ljava/lang/Void;)Lcom/android/browser/controller/ReadingModeController$ReadingData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/browser/controller/ReadingModeController$ReadingData;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 519
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 520
    if-eqz p1, :cond_0

    .line 523
    iget-object v0, p1, Lcom/android/browser/controller/ReadingModeController$ReadingData;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/browser/util/MiRenWebViewUtils;->processImageElements(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/browser/controller/ReadingModeController$ReadingData;->content:Ljava/lang/String;

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$2;->this$0:Lcom/android/browser/controller/ReadingModeController;

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController$2;->val$_nextUri:Ljava/net/URI;

    #calls: Lcom/android/browser/controller/ReadingModeController;->getNextPageFromHost(Ljava/net/URI;Lcom/android/browser/controller/ReadingModeController$ReadingData;)V
    invoke-static {v0, v1, p1}, Lcom/android/browser/controller/ReadingModeController;->access$800(Lcom/android/browser/controller/ReadingModeController;Ljava/net/URI;Lcom/android/browser/controller/ReadingModeController$ReadingData;)V

    .line 526
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 507
    check-cast p1, Lcom/android/browser/controller/ReadingModeController$ReadingData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/controller/ReadingModeController$2;->onPostExecute(Lcom/android/browser/controller/ReadingModeController$ReadingData;)V

    return-void
.end method
