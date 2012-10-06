.class Lcom/android/browser/ui/MiRenWebViewCore$5$4;
.super Landroid/os/AsyncTask;
.source "MiRenWebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenWebViewCore$5;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/ui/MiRenWebViewCore$5;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$mode:I

.field final synthetic val$newUrl:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$webView:Lcom/android/browser/ui/MiRenWebViewCore;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore$5;Lcom/android/browser/ui/MiRenWebViewCore;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$4;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$5;

    iput-object p2, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$4;->val$webView:Lcom/android/browser/ui/MiRenWebViewCore;

    iput-object p3, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$4;->val$cr:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$4;->val$newUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$4;->val$title:Ljava/lang/String;

    iput p6, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$4;->val$mode:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 8
    .parameter "unused"

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$4;->val$webView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$4;->val$cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$4;->val$newUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$4;->val$title:Ljava/lang/String;

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$4;->val$mode:I

    invoke-static/range {v0 .. v5}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->updateVisitedHistory(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZI)J

    move-result-wide v6

    .line 1594
    .local v6, id:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1591
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore$5$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1599
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1601
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$4;->val$mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$4;->val$webView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getReadingModeController()Lcom/android/browser/controller/ReadingModeController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/controller/ReadingModeController;->setBookmarkDBId(J)V

    .line 1604
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1591
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore$5$4;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
