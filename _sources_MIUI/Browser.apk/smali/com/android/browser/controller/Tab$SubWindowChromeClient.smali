.class Lcom/android/browser/controller/Tab$SubWindowChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubWindowChromeClient"
.end annotation


# instance fields
.field private final mClient:Landroid/webkit/WebChromeClient;

.field final synthetic this$0:Lcom/android/browser/controller/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/Tab;Landroid/webkit/WebChromeClient;)V
    .locals 0
    .parameter
    .parameter "client"

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/android/browser/controller/Tab$SubWindowChromeClient;->this$0:Lcom/android/browser/controller/Tab;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 1376
    iput-object p2, p0, Lcom/android/browser/controller/Tab$SubWindowChromeClient;->mClient:Landroid/webkit/WebChromeClient;

    .line 1377
    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/browser/controller/Tab$SubWindowChromeClient;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;
    invoke-static {v0}, Lcom/android/browser/controller/Tab;->access$600(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 1390
    const-string v0, "com.android.browser.controller.tab"

    const-string v1, "Can\'t close the window"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/Tab$SubWindowChromeClient;->this$0:Lcom/android/browser/controller/Tab;

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->dismissSubWindow()V

    .line 1393
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1
    .parameter "view"
    .parameter "dialog"
    .parameter "userGesture"
    .parameter "resultMsg"

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/android/browser/controller/Tab$SubWindowChromeClient;->mClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/browser/controller/Tab$SubWindowChromeClient;->mClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 1381
    return-void
.end method
