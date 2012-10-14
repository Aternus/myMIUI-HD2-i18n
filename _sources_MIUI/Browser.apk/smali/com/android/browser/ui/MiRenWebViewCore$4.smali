.class Lcom/android/browser/ui/MiRenWebViewCore$4;
.super Landroid/os/AsyncTask;
.source "MiRenWebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenWebViewCore;->hackXunlei(Ljava/lang/String;)V
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
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenWebViewCore;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$4;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iput-object p2, p0, Lcom/android/browser/ui/MiRenWebViewCore$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1194
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 13
    .parameter "params"

    .prologue
    .line 1199
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$4;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    .line 1200
    .local v3, ua:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1201
    .local v5, cookie:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$4;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/android/browser/ui/MiRenWebViewCore$4;->val$url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v4, "UTF-8"

    invoke-static/range {v0 .. v5}, Lcom/android/browser/common/Network;->downloadXml(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1202
    .local v9, htmlData:Ljava/lang/String;
    const-string v0, "os = navigator.platform.toLowerCase()"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1204
    const-string v0, "os \\= navigator\\.platform\\.toLowerCase\\(\\)"

    const-string v1, "os = \'ipad\'"

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1207
    invoke-static {}, Lcom/android/browser/ui/MiRenWebViewCore;->access$500()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 1208
    .local v10, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    .line 1209
    .local v11, result:Z
    :goto_0
    if-eqz v11, :cond_1

    .line 1211
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    .line 1212
    .local v8, foundStr:Ljava/lang/String;
    const-string v0, "="

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 1213
    .local v12, url:Ljava/lang/String;
    const-string v0, ";"

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    const/4 v0, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1216
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mirenvideo.doNavigate("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1219
    .local v6, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1220
    invoke-static {}, Lcom/android/browser/ui/MiRenWebViewCore;->access$500()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 1221
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    .line 1222
    goto :goto_0

    .end local v6           #builder:Ljava/lang/StringBuilder;
    .end local v8           #foundStr:Ljava/lang/String;
    .end local v10           #matcher:Ljava/util/regex/Matcher;
    .end local v11           #result:Z
    .end local v12           #url:Ljava/lang/String;
    :cond_1
    move-object v0, v9

    .line 1231
    .end local v3           #ua:Ljava/lang/String;
    .end local v5           #cookie:Ljava/lang/String;
    .end local v9           #htmlData:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1226
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 1227
    .local v7, e:Ljava/net/MalformedURLException;
    const-string v0, "com.android.browser.ui.MiRenWebViewCore"

    const-string v1, "Error while parsing url"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1231
    .end local v7           #e:Ljava/net/MalformedURLException;
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1228
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 1229
    .local v7, e:Ljava/io/IOException;
    const-string v0, "com.android.browser.ui.MiRenWebViewCore"

    const-string v1, "Error while loading"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1194
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore$4;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 1236
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1238
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$4;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-boolean v0, v0, Lcom/android/browser/ui/MiRenWebViewBase;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1246
    :goto_0
    return-void

    .line 1240
    :cond_0
    if-eqz p1, :cond_1

    .line 1241
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$4;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore$4;->val$url:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore$4;->val$url:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/ui/MiRenWebViewCore;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1244
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$4;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
