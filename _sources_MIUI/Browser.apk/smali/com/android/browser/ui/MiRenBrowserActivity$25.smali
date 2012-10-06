.class Lcom/android/browser/ui/MiRenBrowserActivity$25;
.super Ljava/lang/Object;
.source "MiRenBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$tab:Lcom/android/browser/controller/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2649
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$25;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    iput-object p2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$25;->val$tab:Lcom/android/browser/controller/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2651
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$25;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$2002(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2657
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$25;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$25;->val$tab:Lcom/android/browser/controller/Tab;

    const/4 v2, 0x1

    #calls: Lcom/android/browser/ui/MiRenBrowserActivity;->showPageInfo(Lcom/android/browser/controller/Tab;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$200(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;Z)V

    .line 2658
    return-void
.end method
