.class Lcom/android/browser/ui/MiRenBrowserActivity$22;
.super Ljava/lang/Object;
.source "MiRenBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;->showSSLCertificate(Lcom/android/browser/controller/Tab;)V
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
    .line 2596
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$22;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    iput-object p2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$22;->val$tab:Lcom/android/browser/controller/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 2598
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$22;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #setter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$1802(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2599
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$22;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #setter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateView:Lcom/android/browser/controller/Tab;
    invoke-static {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$1902(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;)Lcom/android/browser/controller/Tab;

    .line 2601
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$22;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$22;->val$tab:Lcom/android/browser/controller/Tab;

    const/4 v2, 0x0

    #calls: Lcom/android/browser/ui/MiRenBrowserActivity;->showPageInfo(Lcom/android/browser/controller/Tab;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$200(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;Z)V

    .line 2602
    return-void
.end method
