.class Lcom/android/browser/controller/ReadingModeController$ReadingDataRunnable;
.super Ljava/lang/Object;
.source "ReadingModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/ReadingModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadingDataRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/ReadingModeController;


# direct methods
.method private constructor <init>(Lcom/android/browser/controller/ReadingModeController;)V
    .locals 0
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController$ReadingDataRunnable;->this$0:Lcom/android/browser/controller/ReadingModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/ReadingModeController;Lcom/android/browser/controller/ReadingModeController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 828
    invoke-direct {p0, p1}, Lcom/android/browser/controller/ReadingModeController$ReadingDataRunnable;-><init>(Lcom/android/browser/controller/ReadingModeController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 831
    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController$ReadingDataRunnable;->this$0:Lcom/android/browser/controller/ReadingModeController;

    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeController;->access$1908(Lcom/android/browser/controller/ReadingModeController;)I

    .line 832
    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController$ReadingDataRunnable;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mReadPages:I
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeController;->access$1900(Lcom/android/browser/controller/ReadingModeController;)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 833
    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController$ReadingDataRunnable;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mCacheController:Lcom/android/browser/controller/ReadingModeCacheController;
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeController;->access$2000(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/controller/ReadingModeCacheController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/controller/ReadingModeCacheController;->getCachedPageNum()I

    move-result v0

    .line 834
    .local v0, cachedPageNum:I
    if-eqz v0, :cond_0

    .line 835
    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController$ReadingDataRunnable;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeController;->access$700(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900c4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 836
    .local v2, textCached:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, notifyText:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController$ReadingDataRunnable;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeController;->access$700(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 839
    .end local v1           #notifyText:Ljava/lang/String;
    .end local v2           #textCached:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController$ReadingDataRunnable;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #setter for: Lcom/android/browser/controller/ReadingModeController;->mReadPages:I
    invoke-static {v3, v5}, Lcom/android/browser/controller/ReadingModeController;->access$1902(Lcom/android/browser/controller/ReadingModeController;I)I

    .line 841
    .end local v0           #cachedPageNum:I
    :cond_1
    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController$ReadingDataRunnable;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #calls: Lcom/android/browser/controller/ReadingModeController;->getNextPage()V
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeController;->access$500(Lcom/android/browser/controller/ReadingModeController;)V

    .line 842
    return-void
.end method
