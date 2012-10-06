.class Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;
.super Ljava/lang/Object;
.source "MiRenWebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/MiRenWebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoJSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenWebViewCore;


# direct methods
.method private constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore;)V
    .locals 0
    .parameter

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore;Lcom/android/browser/ui/MiRenWebViewCore$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1902
    invoke-direct {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;)V

    return-void
.end method


# virtual methods
.method public doNavigate(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    .line 1946
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1947
    .local v3, uri:Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->isAbsolute()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1948
    new-instance v2, Ljava/net/URI;

    iget-object v4, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v4}, Lcom/android/browser/ui/MiRenWebViewCore;->getLoadedUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1949
    .local v2, parentUri:Ljava/net/URI;
    invoke-virtual {v2, v3}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v3

    .line 1951
    .end local v2           #parentUri:Ljava/net/URI;
    :cond_0
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1952
    .local v0, abUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v4, v4, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$2;

    invoke-direct {v5, p0, v0}, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$2;-><init>(Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1963
    .end local v0           #abUrl:Ljava/lang/String;
    .end local v3           #uri:Ljava/net/URI;
    :goto_0
    return-void

    .line 1960
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1961
    .local v1, e:Ljava/net/URISyntaxException;
    const-string v4, "com.android.browser.ui.MiRenWebViewCore"

    const-string v5, "wrong URL"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onVideoDetected(Ljava/lang/String;II)V
    .locals 2
    .parameter "src"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;-><init>(Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1942
    return-void
.end method
