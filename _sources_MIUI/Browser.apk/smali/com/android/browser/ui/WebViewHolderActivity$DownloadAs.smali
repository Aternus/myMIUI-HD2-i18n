.class Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;
.super Ljava/lang/Object;
.source "WebViewHolderActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/WebViewHolderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAs"
.end annotation


# instance fields
.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/browser/ui/WebViewHolderActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "url"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p2, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->mUrl:Ljava/lang/String;

    .line 409
    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->mUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 381
    iget-object v2, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    iget-object v3, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->mUrl:Ljava/lang/String;

    #calls: Lcom/android/browser/ui/WebViewHolderActivity;->guessImageFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3, v5, v5}, Lcom/android/browser/ui/WebViewHolderActivity;->access$100(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, filename:Ljava/lang/String;
    new-instance v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 383
    .local v0, downloadEditText:Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 385
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 387
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f09009b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs$1;

    invoke-direct {v4, p0, v0}, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs$1;-><init>(Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 404
    return v6
.end method
