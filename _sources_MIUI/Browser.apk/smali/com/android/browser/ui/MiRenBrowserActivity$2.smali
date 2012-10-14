.class Lcom/android/browser/ui/MiRenBrowserActivity$2;
.super Landroid/os/Handler;
.source "MiRenBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 288
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 366
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 367
    return-void

    .line 291
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 292
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 294
    .local v8, title:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 300
    :pswitch_3
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$000(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/Tab;->doNavigation(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :pswitch_4
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, v1, v4}, Lcom/android/browser/ui/MiRenBrowserActivity;->openUrlInNewTab(Ljava/lang/String;Z)V

    goto :goto_0

    .line 306
    :pswitch_5
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, v1, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->openUrlInNewTab(Ljava/lang/String;Z)V

    goto :goto_0

    .line 309
    :pswitch_6
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, v8, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->doAddBookmarkWithTitleUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :pswitch_7
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-static {v0, v8, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :pswitch_8
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->copy(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 323
    :pswitch_9
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/browser/common/FileNameUtils$WebAddressParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 325
    .local v7, e:Lcom/android/browser/common/FileNameUtils$WebAddressParserException;
    const-string v0, "browser/BrowserActivity"

    const-string v2, "can\'t parse url"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 332
    .end local v1           #url:Ljava/lang/String;
    .end local v7           #e:Lcom/android/browser/common/FileNameUtils$WebAddressParserException;
    .end local v8           #title:Ljava/lang/String;
    :pswitch_a
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, v3, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchScreenMode(IZ)V

    goto :goto_0

    .line 335
    :pswitch_b
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchScreenMode(IZ)V

    goto :goto_0

    .line 338
    :pswitch_c
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->refreshNavButtonStatus()V

    goto :goto_0

    .line 341
    :pswitch_d
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mDummyWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$100(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 342
    invoke-static {}, Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;->getInstance()Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;->release(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 345
    :pswitch_e
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$000(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/TabController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$000(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;
    invoke-static {v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$000(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/TabController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v2

    #calls: Lcom/android/browser/ui/MiRenBrowserActivity;->showPageInfo(Lcom/android/browser/controller/Tab;Z)V
    invoke-static {v0, v2, v4}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$200(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;Z)V

    goto/16 :goto_0

    .line 349
    :pswitch_f
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$000(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$000(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->goBack()V

    goto/16 :goto_0

    .line 354
    :pswitch_10
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$000(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$000(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->goForward()V

    goto/16 :goto_0

    .line 359
    :pswitch_11
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchBackForwardTab(Z)V

    goto/16 :goto_0

    .line 362
    :pswitch_12
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$2;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, v4}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchBackForwardTab(Z)V

    goto/16 :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 297
    :pswitch_data_1
    .packed-switch 0x7f0d00a3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
