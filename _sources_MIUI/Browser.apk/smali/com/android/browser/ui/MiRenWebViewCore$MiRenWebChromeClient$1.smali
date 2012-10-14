.class Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient$1;
.super Landroid/os/AsyncTask;
.source "MiRenWebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;

.field final synthetic val$newTitle:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient$1;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;

    iput-object p2, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient$1;->val$newTitle:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1774
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "unused"

    .prologue
    .line 1779
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    :goto_0
    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient$1;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;

    iget-object v1, v1, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v1, v1, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient$1;->val$newTitle:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->updateVisitedHistoryTitle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    const/4 v1, 0x0

    return-object v1

    .line 1780
    :catch_0
    move-exception v0

    .line 1782
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
