.class Lcom/android/browser/controller/Tab$4;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1250
    iput-object p1, p0, Lcom/android/browser/controller/Tab$4;->this$0:Lcom/android/browser/controller/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/android/browser/controller/Tab$4;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;
    invoke-static {v0}, Lcom/android/browser/controller/Tab;->access$600(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/android/browser/controller/Tab$4;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;
    invoke-static {v0}, Lcom/android/browser/controller/Tab;->access$600(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/Tab$4;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;
    invoke-static {v1}, Lcom/android/browser/controller/Tab;->access$600(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 1254
    :cond_0
    return-void
.end method
