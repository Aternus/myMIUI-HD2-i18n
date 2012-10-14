.class public Lcom/miui/player/helper/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;,
        Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;
    }
.end annotation


# static fields
.field public static final CONNECTION_TIMEOUT:I = 0x1f40

.field public static final READ_TIMEOUT:I = 0x1f40

.field private static final TAG:Ljava/lang/String;

.field private static sNetworkThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/miui/player/helper/NetworkUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/helper/NetworkUtils;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/player/helper/NetworkUtils;->sNetworkThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static doHttpGetAsync(Ljava/lang/String;Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;Landroid/os/Handler;Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;)Z
    .locals 2
    .parameter "strUrl"
    .parameter "runAsync"
    .parameter "handler"
    .parameter "runSync"

    .prologue
    .line 121
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 124
    :cond_0
    sget-object v0, Lcom/miui/player/helper/NetworkUtils;->sNetworkThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/player/helper/NetworkUtils$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/miui/player/helper/NetworkUtils$1;-><init>(Ljava/lang/String;Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 152
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static doHttpGetSync(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "strUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/player/helper/NetworkUtils;->doHttpGetSync(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static doHttpGetSync(Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 10
    .parameter "strUrl"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x1f40

    .line 64
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 65
    const/4 v8, 0x0

    .line 91
    :goto_0
    return-object v8

    .line 68
    :cond_0
    const/4 v5, 0x0

    .line 70
    .local v5, instream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 71
    .local v3, httpRequest:Lorg/apache/http/client/methods/HttpGet;
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 72
    .local v6, lrcUrl:Ljava/net/URL;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    .end local v3           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v6}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 73
    .restart local v3       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    const/4 v4, 0x0

    .line 74
    .local v4, httpclient:Lorg/apache/http/client/HttpClient;
    if-eqz p1, :cond_2

    .line 75
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 76
    .local v2, httpParameters:Lorg/apache/http/params/HttpParams;
    invoke-static {v2, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 77
    invoke-static {v2, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 78
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v4           #httpclient:Lorg/apache/http/client/HttpClient;
    invoke-direct {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 83
    .end local v2           #httpParameters:Lorg/apache/http/params/HttpParams;
    .restart local v4       #httpclient:Lorg/apache/http/client/HttpClient;
    :goto_1
    invoke-interface {v4, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 85
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_1

    .line 86
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 87
    .local v1, entity:Lorg/apache/http/HttpEntity;
    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v0, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 88
    .local v0, bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    invoke-virtual {v0}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .end local v0           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    :cond_1
    move-object v8, v5

    .line 91
    goto :goto_0

    .line 80
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    :cond_2
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v4           #httpclient:Lorg/apache/http/client/HttpClient;
    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v4       #httpclient:Lorg/apache/http/client/HttpClient;
    goto :goto_1
.end method

.method public static doHttpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v0, 0x0

    .line 217
    invoke-static {p0, p1, v0, v0, v0}, Lcom/miui/player/helper/NetworkUtils;->doHttpPost(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doHttpPost(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter
    .parameter
    .parameter "userAgent"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    .local p1, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "url"

    .end local p1           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 225
    .restart local p0
    .restart local p1       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 226
    .local v0, httpParameters:Lorg/apache/http/params/BasicHttpParams;
    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 227
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    const-string v1, "User-agent"

    invoke-virtual {v0, v1, p3}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 231
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    .end local p3
    if-nez p3, :cond_2

    .line 232
    const-string p3, "Cookie"

    invoke-virtual {v0, p3, p4}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 235
    :cond_2
    new-instance p3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 236
    .local p3, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance p4, Lorg/apache/http/client/methods/HttpPost;

    .end local p4
    invoke-direct {p4, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 238
    .local p4, httppost:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .end local p0
    if-eqz p0, :cond_3

    .line 239
    new-instance p0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v0, "UTF-8"

    .end local v0           #httpParameters:Lorg/apache/http/params/BasicHttpParams;
    invoke-direct {p0, p1, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 241
    :cond_3
    invoke-interface {p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p3

    .line 242
    .local p3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p0

    .line 243
    .local p0, statusCode:I
    sget-object p1, Lcom/miui/player/helper/NetworkUtils;->TAG:Ljava/lang/String;

    .end local p1           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance p4, Ljava/lang/StringBuilder;

    .end local p4           #httppost:Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Http POST Response Code: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/16 p1, 0xc8

    if-lt p0, p1, :cond_6

    const/16 p1, 0x12c

    if-ge p0, p1, :cond_6

    .line 247
    if-eqz p2, :cond_4

    .line 248
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p0

    .line 249
    .local p0, _headers:[Lorg/apache/http/Header;
    const/4 p1, 0x0

    .local p1, i:I
    :goto_0
    array-length p4, p0

    if-ge p1, p4, :cond_4

    .line 250
    aget-object p4, p0, p1

    invoke-interface {p4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object p4

    aget-object v0, p0, p1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 253
    .end local p0           #_headers:[Lorg/apache/http/Header;
    .end local p1           #i:I
    :cond_4
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .line 254
    .local p0, body:Lorg/apache/http/HttpEntity;
    if-eqz p0, :cond_5

    .line 255
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p0

    .line 257
    .local p0, result:Ljava/lang/String;
    if-eqz p0, :cond_5

    .line 264
    .end local p0           #result:Ljava/lang/String;
    :goto_1
    return-object p0

    .line 261
    :cond_5
    const-string p0, ""

    goto :goto_1

    .line 264
    .local p0, statusCode:I
    :cond_6
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static doPostInThreadPool(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    sget-object v0, Lcom/miui/player/helper/NetworkUtils;->sNetworkThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/player/helper/NetworkUtils$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/player/helper/NetworkUtils$2;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method public static getJSONObjectFromURL(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 15
    .parameter "strUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v4, 0x0

    .line 158
    .local v4, romException:Z
    const/4 v11, 0x0

    .line 162
    .local v11, romResponseEntity:Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 163
    .local v0, RomUpdateServerUri:Ljava/net/URI;
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 164
    .local v9, romReq:Lorg/apache/http/client/methods/HttpUriRequest;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 165
    .local v2, httpParameters:Lorg/apache/http/params/HttpParams;
    const/16 v13, 0x1f40

    invoke-static {v2, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 166
    const/16 v13, 0x1f40

    invoke-static {v2, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 167
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 168
    .local v5, romHttpClient:Lorg/apache/http/client/HttpClient;
    const-string v13, "Cache-Control"

    const-string v14, "no-cache"

    invoke-interface {v9, v13, v14}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-interface {v5, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 170
    .local v10, romResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    .line 171
    .local v12, romServerResponse:I
    const/16 v13, 0xc8

    if-eq v12, v13, :cond_0

    .line 172
    const/4 v4, 0x1

    .line 174
    :cond_0
    if-nez v4, :cond_1

    .line 175
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 180
    .end local v0           #RomUpdateServerUri:Ljava/net/URI;
    .end local v2           #httpParameters:Lorg/apache/http/params/HttpParams;
    .end local v5           #romHttpClient:Lorg/apache/http/client/HttpClient;
    .end local v9           #romReq:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v10           #romResponse:Lorg/apache/http/HttpResponse;
    .end local v12           #romServerResponse:I
    :cond_1
    :goto_0
    const/4 v7, 0x0

    .line 182
    .local v7, romLineReader:Ljava/io/BufferedReader;
    if-nez v4, :cond_7

    .line 184
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v14, 0x800

    invoke-direct {v8, v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    .end local v7           #romLineReader:Ljava/io/BufferedReader;
    .local v8, romLineReader:Ljava/io/BufferedReader;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    .local v3, romBuf:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, romLine:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 189
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 195
    .end local v3           #romBuf:Ljava/lang/StringBuffer;
    .end local v6           #romLine:Ljava/lang/String;
    :catchall_0
    move-exception v13

    move-object v7, v8

    .end local v8           #romLineReader:Ljava/io/BufferedReader;
    .restart local v7       #romLineReader:Ljava/io/BufferedReader;
    :goto_2
    if-eqz v11, :cond_2

    .line 196
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 198
    :cond_2
    if-eqz v7, :cond_3

    .line 199
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_3
    throw v13

    .line 176
    .end local v7           #romLineReader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v13

    move-object v1, v13

    .line 177
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x1

    goto :goto_0

    .line 192
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #romBuf:Ljava/lang/StringBuffer;
    .restart local v6       #romLine:Ljava/lang/String;
    .restart local v8       #romLineReader:Ljava/io/BufferedReader;
    :cond_4
    :try_start_3
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    if-eqz v11, :cond_5

    .line 196
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 198
    :cond_5
    if-eqz v8, :cond_6

    .line 199
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    :cond_6
    move-object v7, v8

    .line 203
    .end local v3           #romBuf:Ljava/lang/StringBuffer;
    .end local v6           #romLine:Ljava/lang/String;
    .end local v8           #romLineReader:Ljava/io/BufferedReader;
    .restart local v7       #romLineReader:Ljava/io/BufferedReader;
    :goto_3
    return-object v13

    .line 195
    :cond_7
    if-eqz v11, :cond_8

    .line 196
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 198
    :cond_8
    if-eqz v7, :cond_9

    .line 199
    throw v7

    .line 203
    :cond_9
    const/4 v13, 0x0

    goto :goto_3

    .line 195
    :catchall_1
    move-exception v13

    goto :goto_2
.end method

.method public static getNetworkExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/miui/player/helper/NetworkUtils;->sNetworkThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static isConnectivityActive(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 281
    if-nez p0, :cond_0

    move v1, v2

    .line 288
    :goto_0
    return v1

    .line 285
    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 288
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isWIFIConnected(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 292
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 295
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    move v2, v3

    .line 304
    :goto_0
    return v2

    .line 299
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 300
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    move v2, v3

    .line 301
    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v4, v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method
