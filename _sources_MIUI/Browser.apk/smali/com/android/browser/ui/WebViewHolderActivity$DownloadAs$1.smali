.class Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs$1;
.super Ljava/lang/Object;
.source "WebViewHolderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;

.field final synthetic val$downloadEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs$1;->this$1:Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;

    iput-object p2, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs$1;->val$downloadEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    .line 393
    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs$1;->this$1:Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;

    iget-object v1, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs$1;->val$downloadEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->mTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->access$202(Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs$1;->this$1:Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;

    #getter for: Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->mTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->access$200(Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs$1;->this$1:Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;

    iget-object v0, v0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    iget-object v1, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs$1;->this$1:Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;

    #getter for: Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->mUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->access$300(Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs$1;->this$1:Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;

    #getter for: Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->mTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->access$200(Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/browser/ui/WebViewHolderActivity;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs$1;->this$1:Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;

    iget-object v1, v0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs$1;->this$1:Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;

    #getter for: Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->mUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->access$300(Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/android/browser/ui/WebViewHolderActivity;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
