.class Lcom/android/browser/ui/MiRenWebViewCore$1;
.super Ljava/lang/Object;
.source "MiRenWebViewCore.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenWebViewCore;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenWebViewCore;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$1;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$1;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    const/4 v1, 0x1

    #setter for: Lcom/android/browser/ui/MiRenWebViewCore;->mLoadingUnhandledUrl:Z
    invoke-static {v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->access$302(Lcom/android/browser/ui/MiRenWebViewCore;Z)Z

    .line 206
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$1;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/browser/ui/MiRenWebViewListener;->notifyDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 207
    return-void
.end method
