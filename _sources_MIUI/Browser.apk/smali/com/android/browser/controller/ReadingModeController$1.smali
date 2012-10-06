.class Lcom/android/browser/controller/ReadingModeController$1;
.super Landroid/os/AsyncTask;
.source "ReadingModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ReadingModeController;->onReadingDataReady(Lcom/android/browser/model/ReadingModePageDataProvider;Z)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/ReadingModeController;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ReadingModeController;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController$1;->this$0:Lcom/android/browser/controller/ReadingModeController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/controller/ReadingModeController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 383
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/android/browser/controller/ReadingModeController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to sleep"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 379
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/controller/ReadingModeController$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 392
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$1;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$200(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$1;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mCanceled:Z
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$300(Lcom/android/browser/controller/ReadingModeController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$1;->this$0:Lcom/android/browser/controller/ReadingModeController;

    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$408(Lcom/android/browser/controller/ReadingModeController;)I

    .line 395
    invoke-static {}, Lcom/android/browser/controller/ReadingModeController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrying to get the next page, retry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController$1;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mRetry:I
    invoke-static {v2}, Lcom/android/browser/controller/ReadingModeController;->access$400(Lcom/android/browser/controller/ReadingModeController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$1;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #calls: Lcom/android/browser/controller/ReadingModeController;->getNextPage()V
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$500(Lcom/android/browser/controller/ReadingModeController;)V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$1;->this$0:Lcom/android/browser/controller/ReadingModeController;

    const/4 v1, 0x2

    #setter for: Lcom/android/browser/controller/ReadingModeController;->mRetry:I
    invoke-static {v0, v1}, Lcom/android/browser/controller/ReadingModeController;->access$402(Lcom/android/browser/controller/ReadingModeController;I)I

    goto :goto_0
.end method
