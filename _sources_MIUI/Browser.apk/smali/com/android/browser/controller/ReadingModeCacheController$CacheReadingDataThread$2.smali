.class Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;
.super Landroid/webkit/WebViewClient;
.source "ReadingModeCacheController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->startCache()V
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
    .line 276
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7
    .parameter "view"
    .parameter "url"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-ne p1, v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mLoadOriginalPage:Z
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->access$900(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mDelayLoadScript:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->access$1000(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mDelayLoadScript:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->access$1000(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mLoadOriginalPage:Z
    invoke-static {v0, v1}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->access$902(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;Z)Z

    .line 292
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mDelayLoadScript:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->access$1002(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeCacheController;->access$800(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/model/ReadingModePageDataProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v1, v1, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    invoke-static {v1}, Lcom/android/browser/controller/ReadingModeCacheController;->access$1100(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v1

    iget-object v1, v1, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->contentPaths:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v2, v2, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    invoke-static {v2}, Lcom/android/browser/controller/ReadingModeCacheController;->access$1100(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v2

    iget-object v2, v2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->titlePaths:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v3, v3, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeCacheController;->access$1100(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v3

    iget-object v3, v3, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->nextLinkUrls:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v4, v4, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    invoke-static {v4}, Lcom/android/browser/controller/ReadingModeCacheController;->access$1100(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v4

    iget-object v4, v4, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->comments:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v5, v5, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    invoke-static {v5}, Lcom/android/browser/controller/ReadingModeCacheController;->access$1100(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v5

    iget-object v5, v5, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->firstPage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;->this$1:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    iget-object v6, v6, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    invoke-static {v6}, Lcom/android/browser/controller/ReadingModeCacheController;->access$1100(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v6

    iget-object v6, v6, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->ads:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/browser/model/ReadingModePageDataProvider;->doQuery(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
