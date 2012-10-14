.class Lcom/android/browser/ui/MiRenWebViewCore$5$6;
.super Ljava/lang/Object;
.source "MiRenWebViewCore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenWebViewCore$5;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/ui/MiRenWebViewCore$5;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore$5;Landroid/webkit/SslErrorHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1686
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$6;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$5;

    iput-object p2, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$6;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$6;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 1690
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$6;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$5;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0}, Lcom/android/browser/ui/MiRenWebViewListener;->resetTitleAndRevertLockIcon()V

    .line 1691
    return-void
.end method
