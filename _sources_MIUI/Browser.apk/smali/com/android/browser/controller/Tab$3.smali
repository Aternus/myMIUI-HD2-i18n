.class Lcom/android/browser/controller/Tab$3;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/Tab;->createSubWindow()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/android/browser/controller/Tab$3;->this$0:Lcom/android/browser/controller/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    const/4 v7, 0x0

    .line 1232
    iget-object v0, p0, Lcom/android/browser/controller/Tab$3;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v0}, Lcom/android/browser/controller/Tab;->access$300(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1234
    iget-object v0, p0, Lcom/android/browser/controller/Tab$3;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;
    invoke-static {v0}, Lcom/android/browser/controller/Tab;->access$600(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebView;->canGoBackOrForward(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/Tab$3;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;
    invoke-static {v1}, Lcom/android/browser/controller/Tab;->access$600(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/BrowserSettings;->deleteObserver(Lcom/android/browser/ui/MiRenWebViewCore;)V

    .line 1239
    iget-object v0, p0, Lcom/android/browser/controller/Tab$3;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;
    invoke-static {v0}, Lcom/android/browser/controller/Tab;->access$600(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->destroy()V

    .line 1240
    iget-object v0, p0, Lcom/android/browser/controller/Tab$3;->this$0:Lcom/android/browser/controller/Tab;

    #setter for: Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;
    invoke-static {v0, v7}, Lcom/android/browser/controller/Tab;->access$602(Lcom/android/browser/controller/Tab;Lcom/android/browser/ui/MiRenWebView;)Lcom/android/browser/ui/MiRenWebView;

    .line 1241
    iget-object v0, p0, Lcom/android/browser/controller/Tab$3;->this$0:Lcom/android/browser/controller/Tab;

    #setter for: Lcom/android/browser/controller/Tab;->mSubViewContainer:Landroid/view/View;
    invoke-static {v0, v7}, Lcom/android/browser/controller/Tab;->access$702(Lcom/android/browser/controller/Tab;Landroid/view/View;)Landroid/view/View;

    .line 1243
    :cond_0
    return-void
.end method
