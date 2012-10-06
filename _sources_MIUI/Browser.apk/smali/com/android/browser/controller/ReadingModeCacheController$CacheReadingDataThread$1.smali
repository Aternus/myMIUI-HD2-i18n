.class Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;
.super Landroid/os/Handler;
.source "ReadingModeCacheController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 225
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 261
    return-void

    .line 227
    :pswitch_1
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v2, v2, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-eqz v2, :cond_1

    .line 228
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v2, v2, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebViewBase;->destroy()V

    .line 229
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 234
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/browser/controller/ReadingModeController$ReadingData;

    .line 235
    .local v0, data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    #calls: Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->loadNextPage(Lcom/android/browser/controller/ReadingModeController$ReadingData;)V
    invoke-static {v2, v0}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->access$200(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;Lcom/android/browser/controller/ReadingModeController$ReadingData;)V

    goto :goto_0

    .line 238
    .end local v0           #data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    :pswitch_3
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    #calls: Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->startCache()V
    invoke-static {v2}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->access$300(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;)V

    goto :goto_0

    .line 241
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 242
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/model/ReadingModeCacheManager;->markAsRead(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v2, v2, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    const/4 v3, 0x0

    #setter for: Lcom/android/browser/controller/ReadingModeCacheController;->mPaused:Z
    invoke-static {v2, v3}, Lcom/android/browser/controller/ReadingModeCacheController;->access$402(Lcom/android/browser/controller/ReadingModeCacheController;Z)Z

    .line 244
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v2, v2, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mCachedPageNum:I
    invoke-static {v2}, Lcom/android/browser/controller/ReadingModeCacheController;->access$500(Lcom/android/browser/controller/ReadingModeCacheController;)I

    move-result v2

    if-lez v2, :cond_2

    .line 245
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v2, v2, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    invoke-static {v2}, Lcom/android/browser/controller/ReadingModeCacheController;->access$510(Lcom/android/browser/controller/ReadingModeCacheController;)I

    .line 247
    :cond_2
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v2, v2, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mCachedPageNum:I
    invoke-static {v2}, Lcom/android/browser/controller/ReadingModeCacheController;->access$500(Lcom/android/browser/controller/ReadingModeCacheController;)I

    move-result v2

    const/16 v3, 0x32

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v2, v2, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mLastLoadedData:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    invoke-static {v2}, Lcom/android/browser/controller/ReadingModeCacheController;->access$600(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/controller/ReadingModeController$ReadingData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v3, v3, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mLastLoadedData:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeCacheController;->access$600(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/controller/ReadingModeController$ReadingData;

    move-result-object v3

    #calls: Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->loadNextPage(Lcom/android/browser/controller/ReadingModeController$ReadingData;)V
    invoke-static {v2, v3}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->access$200(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;Lcom/android/browser/controller/ReadingModeController$ReadingData;)V

    goto :goto_0

    .line 255
    .end local v1           #url:Ljava/lang/String;
    :pswitch_5
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v2, v2, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mLastLoadedData:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    invoke-static {v2}, Lcom/android/browser/controller/ReadingModeCacheController;->access$600(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/controller/ReadingModeController$ReadingData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v3, v3, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mLastLoadedData:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeCacheController;->access$600(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/controller/ReadingModeController$ReadingData;

    move-result-object v3

    #calls: Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->loadNextPage(Lcom/android/browser/controller/ReadingModeController$ReadingData;)V
    invoke-static {v2, v3}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->access$200(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;Lcom/android/browser/controller/ReadingModeController$ReadingData;)V

    goto/16 :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
