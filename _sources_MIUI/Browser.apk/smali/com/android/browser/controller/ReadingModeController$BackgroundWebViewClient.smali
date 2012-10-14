.class Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ReadingModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/ReadingModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/ReadingModeController;


# direct methods
.method private constructor <init>(Lcom/android/browser/controller/ReadingModeController;)V
    .locals 0
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/ReadingModeController;Lcom/android/browser/controller/ReadingModeController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 705
    invoke-direct {p0, p1}, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;-><init>(Lcom/android/browser/controller/ReadingModeController;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7
    .parameter "view"
    .parameter "url"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mCanceled:Z
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$300(Lcom/android/browser/controller/ReadingModeController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$200(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v0

    if-nez v0, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    sget-boolean v0, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$900(Lcom/android/browser/controller/ReadingModeController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    :cond_2
    invoke-static {}, Lcom/android/browser/controller/ReadingModeController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background view loaded the page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$1300(Lcom/android/browser/controller/ReadingModeController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v0}, Lcom/android/browser/model/ReadingModePageDataProvider;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v0}, Lcom/android/browser/model/ReadingModePageDataProvider;->getPageTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 722
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    iget-object v1, v1, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v1}, Lcom/android/browser/model/ReadingModePageDataProvider;->getUrl()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/browser/controller/ReadingModeController;->access$902(Lcom/android/browser/controller/ReadingModeController;Ljava/lang/String;)Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v2}, Lcom/android/browser/controller/ReadingModeController;->access$700(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    iget-object v2, v2, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v2}, Lcom/android/browser/model/ReadingModePageDataProvider;->getPageTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/browser/controller/ReadingModeController;->mCurrentTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/browser/controller/ReadingModeController;->access$1402(Lcom/android/browser/controller/ReadingModeController;Ljava/lang/String;)Ljava/lang/String;

    .line 726
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$700(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/browser/ui/MiRenWebViewListener;->updateTitle()V

    .line 727
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$700(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mId:J
    invoke-static {v1}, Lcom/android/browser/controller/ReadingModeController;->access$1500(Lcom/android/browser/controller/ReadingModeController;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeController;->access$700(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/browser/controller/ReadingModeController;->access$900(Lcom/android/browser/controller/ReadingModeController;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mCurrentTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/browser/controller/ReadingModeController;->access$1400(Lcom/android/browser/controller/ReadingModeController;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/browser/api_v8/Bookmarks;->updateUrlAndTitleById(Landroid/content/Context;JLandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_3
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mLoadOriginalPage:Z
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$1600(Lcom/android/browser/controller/ReadingModeController;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mDelayLoadScript:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$1700(Lcom/android/browser/controller/ReadingModeController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 733
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mDelayLoadScript:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$1700(Lcom/android/browser/controller/ReadingModeController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/controller/ReadingModeController;->mLoadOriginalPage:Z
    invoke-static {v0, v1}, Lcom/android/browser/controller/ReadingModeController;->access$1602(Lcom/android/browser/controller/ReadingModeController;Z)Z

    .line 735
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/controller/ReadingModeController;->mDelayLoadScript:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/browser/controller/ReadingModeController;->access$1702(Lcom/android/browser/controller/ReadingModeController;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 738
    :cond_4
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    invoke-static {v1}, Lcom/android/browser/controller/ReadingModeController;->access$200(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v1

    iget-object v1, v1, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->contentPaths:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    invoke-static {v2}, Lcom/android/browser/controller/ReadingModeController;->access$200(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v2

    iget-object v2, v2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->titlePaths:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeController;->access$200(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v3

    iget-object v3, v3, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->nextLinkUrls:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    invoke-static {v4}, Lcom/android/browser/controller/ReadingModeController;->access$200(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v4

    iget-object v4, v4, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->comments:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    invoke-static {v5}, Lcom/android/browser/controller/ReadingModeController;->access$200(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v5

    iget-object v5, v5, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->firstPage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    invoke-static {v6}, Lcom/android/browser/controller/ReadingModeController;->access$200(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v6

    iget-object v6, v6, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->ads:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/browser/model/ReadingModePageDataProvider;->doQuery(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
