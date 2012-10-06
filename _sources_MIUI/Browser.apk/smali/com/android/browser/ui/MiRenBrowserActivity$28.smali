.class Lcom/android/browser/ui/MiRenBrowserActivity$28;
.super Ljava/lang/Object;
.source "MiRenBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;->showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/webkit/HttpAuthHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2786
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$28;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    iput-object p2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$28;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 2789
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$28;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 2790
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$28;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->resetTitleAndRevertLockIcon()V

    .line 2791
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$28;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #setter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$2102(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2792
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$28;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #setter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;
    invoke-static {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$2202(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;

    .line 2793
    return-void
.end method
