.class Lcom/android/browser/ui/WebViewHolderActivity$1;
.super Ljava/lang/Object;
.source "WebViewHolderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/WebViewHolderActivity;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/WebViewHolderActivity;

.field final synthetic val$contentLength:J

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$mimetype:Ljava/lang/String;

.field final synthetic val$uriAndFileName:Lcom/android/browser/common/FileNameUtils$UriAndFileName;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/browser/common/FileNameUtils$UriAndFileName;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/browser/ui/WebViewHolderActivity$1;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    iput-object p2, p0, Lcom/android/browser/ui/WebViewHolderActivity$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/ui/WebViewHolderActivity$1;->val$userAgent:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/browser/ui/WebViewHolderActivity$1;->val$mimetype:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/browser/ui/WebViewHolderActivity$1;->val$filename:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/browser/ui/WebViewHolderActivity$1;->val$contentLength:J

    iput-object p8, p0, Lcom/android/browser/ui/WebViewHolderActivity$1;->val$uriAndFileName:Lcom/android/browser/common/FileNameUtils$UriAndFileName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$1;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    iget-object v1, p0, Lcom/android/browser/ui/WebViewHolderActivity$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/ui/WebViewHolderActivity$1;->val$userAgent:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/ui/WebViewHolderActivity$1;->val$mimetype:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/browser/ui/WebViewHolderActivity$1;->val$filename:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/browser/ui/WebViewHolderActivity$1;->val$contentLength:J

    iget-object v7, p0, Lcom/android/browser/ui/WebViewHolderActivity$1;->val$uriAndFileName:Lcom/android/browser/common/FileNameUtils$UriAndFileName;

    #calls: Lcom/android/browser/ui/WebViewHolderActivity;->performDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/browser/common/FileNameUtils$UriAndFileName;)V
    invoke-static/range {v0 .. v7}, Lcom/android/browser/ui/WebViewHolderActivity;->access$000(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/browser/common/FileNameUtils$UriAndFileName;)V

    .line 259
    return-void
.end method
