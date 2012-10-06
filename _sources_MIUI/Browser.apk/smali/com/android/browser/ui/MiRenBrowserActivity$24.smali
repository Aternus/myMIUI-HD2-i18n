.class Lcom/android/browser/ui/MiRenBrowserActivity$24;
.super Ljava/lang/Object;
.source "MiRenBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;->showSSLCertificateOnError(Lcom/android/browser/controller/Tab;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

.field final synthetic val$error:Landroid/net/http/SslError;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;

.field final synthetic val$tab:Lcom/android/browser/controller/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2660
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$24;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    iput-object p2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$24;->val$tab:Lcom/android/browser/controller/Tab;

    iput-object p3, p0, Lcom/android/browser/ui/MiRenBrowserActivity$24;->val$handler:Landroid/webkit/SslErrorHandler;

    iput-object p4, p0, Lcom/android/browser/ui/MiRenBrowserActivity$24;->val$error:Landroid/net/http/SslError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 2662
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$24;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #setter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$2002(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2663
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$24;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #setter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorTab:Lcom/android/browser/controller/Tab;
    invoke-static {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$1402(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;)Lcom/android/browser/controller/Tab;

    .line 2664
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$24;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #setter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;
    invoke-static {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$1502(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/webkit/SslErrorHandler;)Landroid/webkit/SslErrorHandler;

    .line 2665
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$24;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #setter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;
    invoke-static {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$1602(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/net/http/SslError;)Landroid/net/http/SslError;

    .line 2667
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$24;->val$tab:Lcom/android/browser/controller/Tab;

    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$24;->val$handler:Landroid/webkit/SslErrorHandler;

    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$24;->val$error:Landroid/net/http/SslError;

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/controller/Tab;->onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 2668
    return-void
.end method
