.class public Lcom/xiaomi/common/Network;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/common/Network$DownloadTask;,
        Lcom/xiaomi/common/Network$PostDownloadHandler;,
        Lcom/xiaomi/common/Network$HttpHeaderInfo;
    }
.end annotation


# static fields
.field public static final CMWAP_GATEWAY:Ljava/lang/String; = "10.0.0.172"

.field private static final CMWAP_HEADER_HOST_KEY:Ljava/lang/String; = "X-Online-Host"

.field public static final CMWAP_PORT:I = 0x50

.field public static final ContentTypePattern_Charset:Ljava/util/regex/Pattern; = null

.field public static final ContentTypePattern_MimeType:Ljava/util/regex/Pattern; = null

.field public static final ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern; = null

.field private static final LogTag:Ljava/lang/String; = "com.xiaomi.common.Network"

.field private static final SERVER_HOST:Ljava/lang/String; = "http://sj.xiaomi.com"

.field public static final UserAgent_PC_Chrome:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3"

.field public static final UserAgent_PC_Chrome_6_0_464_0:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 295
    const-string v0, "([^\\s;]+)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/Network;->ContentTypePattern_MimeType:Ljava/util/regex/Pattern;

    .line 297
    const-string v0, "(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/Network;->ContentTypePattern_Charset:Ljava/util/regex/Pattern;

    .line 300
    const-string v0, "(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/Network;->ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    return-void
.end method

.method public static beginDownloadFile(Ljava/lang/String;Ljava/io/OutputStream;Lcom/xiaomi/common/Network$PostDownloadHandler;)V
    .locals 2
    .parameter "url"
    .parameter "output"
    .parameter "handler"

    .prologue
    .line 527
    new-instance v0, Lcom/xiaomi/common/Network$DownloadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/common/Network$DownloadTask;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Lcom/xiaomi/common/Network$PostDownloadHandler;)V

    .line 528
    .local v0, task:Lcom/xiaomi/common/Network$DownloadTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaomi/common/Network$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 529
    return-void
.end method

.method public static doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .local p2, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v3, 0x0

    .line 430
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/common/Network;->doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter
    .parameter
    .parameter "userAgent"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .line 435
    .local p2, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/xiaomi/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "url"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 438
    .restart local p0
    .restart local p1
    :cond_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 439
    .local v0, httpParameters:Lorg/apache/http/params/BasicHttpParams;
    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 440
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 441
    const-string v1, "User-agent"

    invoke-virtual {v0, v1, p4}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 444
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    .end local p4
    if-nez p4, :cond_2

    .line 445
    const-string p4, "Cookie"

    invoke-virtual {v0, p4, p5}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 447
    :cond_2
    new-instance p4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p4, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 449
    .local p4, httpclient:Lorg/apache/http/client/HttpClient;
    invoke-static {p0}, Lcom/xiaomi/common/Network;->isCmwap(Landroid/content/Context;)Z

    move-result p0

    .end local p0
    if-eqz p0, :cond_4

    .line 450
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 451
    .local p0, _url:Ljava/net/URL;
    invoke-static {p0}, Lcom/xiaomi/common/Network;->getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p1

    .line 452
    .local p1, cmwapUrl:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 453
    .local p0, host:Ljava/lang/String;
    new-instance p5, Lorg/apache/http/client/methods/HttpPost;

    .end local p5
    invoke-direct {p5, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 454
    .local p5, httppost:Lorg/apache/http/client/methods/HttpPost;
    const-string p1, "X-Online-Host"

    .end local p1           #cmwapUrl:Ljava/lang/String;
    invoke-virtual {p5, p1, p0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, p5

    .line 459
    .end local p5           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .local p0, httppost:Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 460
    new-instance p1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string p5, "UTF-8"

    invoke-direct {p1, p2, p5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 462
    :cond_3
    invoke-interface {p4, p0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    .line 463
    .local p2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    .end local p0           #httppost:Lorg/apache/http/client/methods/HttpPost;
    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p0

    .line 464
    .local p0, statusCode:I
    const-string p1, "com.xiaomi.common.Network"

    new-instance p4, Ljava/lang/StringBuilder;

    .end local p4           #httpclient:Lorg/apache/http/client/HttpClient;
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Http POST Response Code: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/16 p1, 0xc8

    if-lt p0, p1, :cond_7

    const/16 p1, 0x12c

    if-ge p0, p1, :cond_7

    .line 468
    if-eqz p3, :cond_5

    .line 469
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p0

    .line 470
    .local p0, _headers:[Lorg/apache/http/Header;
    const/4 p1, 0x0

    .local p1, i:I
    :goto_1
    array-length p4, p0

    if-ge p1, p4, :cond_5

    .line 471
    aget-object p4, p0, p1

    invoke-interface {p4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object p4

    aget-object p5, p0, p1

    invoke-interface {p5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p3, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 456
    .end local p0           #_headers:[Lorg/apache/http/Header;
    .local p1, url:Ljava/lang/String;
    .local p2, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local p4       #httpclient:Lorg/apache/http/client/HttpClient;
    .local p5, cookie:Ljava/lang/String;
    :cond_4
    new-instance p0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .local p0, httppost:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_0

    .line 474
    .end local p0           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local p1           #url:Ljava/lang/String;
    .end local p4           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local p5           #cookie:Ljava/lang/String;
    .local p2, response:Lorg/apache/http/HttpResponse;
    :cond_5
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .line 475
    .local p0, body:Lorg/apache/http/HttpEntity;
    if-eqz p0, :cond_6

    .line 476
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p0

    .line 478
    .local p0, result:Ljava/lang/String;
    if-eqz p0, :cond_6

    .line 485
    .end local p0           #result:Ljava/lang/String;
    :goto_2
    return-object p0

    .line 482
    :cond_6
    const-string p0, ""

    goto :goto_2

    .line 485
    .local p0, statusCode:I
    :cond_7
    const/4 p0, 0x0

    goto :goto_2
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 8
    .parameter "urlStr"
    .parameter "output"

    .prologue
    const/4 v7, 0x0

    .line 540
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 541
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 542
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/16 v6, 0x1388

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 543
    const/16 v6, 0x3a98

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 544
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 545
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 547
    .local v4, input:Ljava/io/InputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 550
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    if-lez v2, :cond_0

    .line 551
    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 557
    .end local v0           #buffer:[B
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v2           #count:I
    .end local v4           #input:Ljava/io/InputStream;
    .end local v5           #url:Ljava/net/URL;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 558
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move v6, v7

    .line 561
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 554
    .restart local v0       #buffer:[B
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .restart local v2       #count:I
    .restart local v4       #input:Ljava/io/InputStream;
    .restart local v5       #url:Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 555
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 556
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public static downloadXml(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 154
    const/4 v2, 0x0

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/common/Network;->downloadXml(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static downloadXml(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "noEncryptUrl"
    .parameter "userAgent"
    .parameter "encoding"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 162
    .local v0, responseStream:Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, p1, p2, p3, p5}, Lcom/xiaomi/common/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object p2

    .line 163
    .end local v0           #responseStream:Ljava/io/InputStream;
    .local p2, responseStream:Ljava/io/InputStream;
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    .end local p3
    const/16 p0, 0x400

    invoke-direct {p3, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 164
    .end local p0
    .local p3, sbReponse:Ljava/lang/StringBuilder;
    new-instance p1, Ljava/io/BufferedReader;

    .end local p1
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, p2, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 p4, 0x400

    invoke-direct {p1, p0, p4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 167
    .end local p4
    .local p1, reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .local p0, line:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 168
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string p0, "\r\n"

    .end local p0           #line:Ljava/lang/String;
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    .end local p1           #reader:Ljava/io/BufferedReader;
    .end local p3           #sbReponse:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, p2

    .end local p2           #responseStream:Ljava/io/InputStream;
    .local p0, responseStream:Ljava/io/InputStream;
    :goto_1
    if-eqz p0, :cond_0

    .line 174
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 177
    .end local p0           #responseStream:Ljava/io/InputStream;
    :cond_0
    :goto_2
    throw p1

    .line 172
    .local p0, line:Ljava/lang/String;
    .restart local p1       #reader:Ljava/io/BufferedReader;
    .restart local p2       #responseStream:Ljava/io/InputStream;
    .restart local p3       #sbReponse:Ljava/lang/StringBuilder;
    :cond_1
    if-eqz p2, :cond_2

    .line 174
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 181
    .end local p0           #line:Ljava/lang/String;
    .end local p1           #reader:Ljava/io/BufferedReader;
    .end local p2           #responseStream:Ljava/io/InputStream;
    :cond_2
    :goto_3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 182
    .local p0, responseXml:Ljava/lang/String;
    return-object p0

    .line 175
    .local p0, line:Ljava/lang/String;
    .restart local p1       #reader:Ljava/io/BufferedReader;
    .restart local p2       #responseStream:Ljava/io/InputStream;
    :catch_0
    move-exception p0

    .line 176
    .local p0, e:Ljava/io/IOException;
    const-string p1, "com.xiaomi.common.Network"

    .end local p1           #reader:Ljava/io/BufferedReader;
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #responseStream:Ljava/io/InputStream;
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to close responseStream"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 175
    .end local p3           #sbReponse:Ljava/lang/StringBuilder;
    .local p0, responseStream:Ljava/io/InputStream;
    :catch_1
    move-exception p0

    .line 176
    .local p0, e:Ljava/io/IOException;
    const-string p2, "com.xiaomi.common.Network"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to close responseStream"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 172
    .restart local v0       #responseStream:Ljava/io/InputStream;
    .local p0, context:Landroid/content/Context;
    .local p1, url:Ljava/net/URL;
    .local p2, noEncryptUrl:Z
    .local p3, userAgent:Ljava/lang/String;
    .restart local p4
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #responseStream:Ljava/io/InputStream;
    .local p0, responseStream:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;)Ljava/io/InputStream;
    .locals 7
    .parameter "context"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 59
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/common/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/common/Network$HttpHeaderInfo;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "noEncryptUrl"
    .parameter "userAgent"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 64
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/common/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/common/Network$HttpHeaderInfo;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/common/Network$HttpHeaderInfo;)Ljava/io/InputStream;
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "noEncryptUrl"
    .parameter "userAgent"
    .parameter "cookie"
    .parameter
    .parameter "responseHdrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/common/Network$HttpHeaderInfo;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    .local p5, requestHdrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 88
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "url"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    .restart local p0
    .restart local p1
    :cond_0
    move-object v0, p1

    .line 91
    .local v0, newUrl:Ljava/net/URL;
    if-nez p2, :cond_a

    .line 92
    new-instance p2, Ljava/net/URL;

    .end local p2
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0           #newUrl:Ljava/net/URL;
    invoke-static {v0}, Lcom/xiaomi/common/Network;->encryptURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 94
    .local p2, newUrl:Ljava/net/URL;
    :goto_0
    const/4 v0, 0x0

    .line 95
    .local v0, responseStream:Ljava/io/InputStream;
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 96
    .end local v0           #responseStream:Ljava/io/InputStream;
    invoke-static {p0, p2}, Lcom/xiaomi/common/Network;->getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 97
    .local p0, conn:Ljava/net/HttpURLConnection;
    const/16 p2, 0x1388

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 98
    .end local p2           #newUrl:Ljava/net/URL;
    const p2, 0x1d4c0

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 99
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 100
    const-string p2, "User-agent"

    invoke-virtual {p0, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_1
    if-eqz p4, :cond_2

    .line 103
    const-string p2, "Cookie"

    invoke-virtual {p0, p2, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_2
    if-eqz p5, :cond_3

    .line 106
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .end local p3
    .end local p4
    .local p2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 107
    .local p3, key:Ljava/lang/String;
    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p3, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    .end local p2           #i$:Ljava/util/Iterator;
    .end local p3           #key:Ljava/lang/String;
    :cond_3
    if-eqz p6, :cond_6

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string p3, "http"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    .end local p1
    const-string p2, "https"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 113
    :cond_4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    iput p1, p6, Lcom/xiaomi/common/Network$HttpHeaderInfo;->ResponseCode:I

    .line 114
    iget-object p1, p6, Lcom/xiaomi/common/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    if-nez p1, :cond_5

    .line 115
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p6, Lcom/xiaomi/common/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    .line 116
    :cond_5
    const/4 p1, 0x0

    .line 117
    .local p1, i:I
    :goto_2
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p2

    .line 118
    .local p2, name:Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p3

    .line 120
    .local p3, value:Ljava/lang/String;
    if-nez p2, :cond_7

    if-nez p3, :cond_7

    .line 128
    .end local p1           #i:I
    .end local p2           #name:Ljava/lang/String;
    .end local p3           #value:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 129
    .local p0, responseStream:Ljava/io/InputStream;
    return-object p0

    .line 122
    .local p0, conn:Ljava/net/HttpURLConnection;
    .restart local p1       #i:I
    .restart local p2       #name:Ljava/lang/String;
    .restart local p3       #value:Ljava/lang/String;
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_8

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 116
    .end local p2           #name:Ljava/lang/String;
    :cond_8
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 124
    .restart local p2       #name:Ljava/lang/String;
    :cond_9
    iget-object p4, p6, Lcom/xiaomi/common/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .end local p2           #name:Ljava/lang/String;
    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .local v0, newUrl:Ljava/net/URL;
    .local p0, context:Landroid/content/Context;
    .local p1, url:Ljava/net/URL;
    .local p2, noEncryptUrl:Z
    .local p3, userAgent:Ljava/lang/String;
    .restart local p4
    :cond_a
    move-object p2, v0

    .end local v0           #newUrl:Ljava/net/URL;
    .local p2, newUrl:Ljava/net/URL;
    goto/16 :goto_0
.end method

.method public static downloadXmlAsStreamWithoutRedirect(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter "url"
    .parameter "userAgent"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v2, 0x0

    .line 135
    .local v2, responseStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 136
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 137
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 138
    const v3, 0x1d4c0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    const-string v3, "User-agent"

    invoke-virtual {v0, v3, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    if-eqz p2, :cond_1

    .line 143
    const-string v3, "Cookie"

    invoke-virtual {v0, v3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 147
    .local v1, resCode:I
    const/16 v3, 0x12c

    if-lt v1, v3, :cond_2

    const/16 v3, 0x190

    if-lt v1, v3, :cond_3

    .line 148
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 150
    :cond_3
    return-object v2
.end method

.method public static encryptURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strUrl"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 506
    invoke-static {p0}, Lcom/xiaomi/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 508
    const-string v1, "%sbe988a6134bc8254465424e5a70ef037"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, strTemp:Ljava/lang/String;
    const-string v1, "%s&key=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0}, Lcom/xiaomi/common/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .end local v0           #strTemp:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getActiveNetworkName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 686
    const-string v1, "null"

    .line 687
    .local v1, defaultValue:Ljava/lang/String;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 689
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    move-object v3, v1

    .line 696
    :goto_0
    return-object v3

    .line 691
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 692
    .local v2, info:Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    move-object v3, v1

    .line 693
    goto :goto_0

    .line 694
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 695
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 696
    :cond_2
    const-string v3, "%s-%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 674
    const/4 v1, -0x1

    .line 675
    .local v1, defaultValue:I
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 677
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    move v3, v1

    .line 682
    :goto_0
    return v3

    .line 679
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 680
    .local v2, info:Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    move v3, v1

    .line 681
    goto :goto_0

    .line 682
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    goto :goto_0
.end method

.method private static getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;
    .locals 3
    .parameter "oriUrl"

    .prologue
    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .local v0, gatewayBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10.0.0.172"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 740
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFeedbackUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 497
    const-string v0, "%1$s/%2$s?%3$s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "http://sj.xiaomi.com"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "miniphp/ajax.php"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p0}, Lcom/xiaomi/common/UserInfo;->getUserIdQueryString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpHeaderInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/common/Network$HttpHeaderInfo;
    .locals 13
    .parameter "urlString"
    .parameter "userAgent"
    .parameter "cookie"

    .prologue
    const/4 v12, 0x0

    const-string v11, "com.xiaomi.common.Network"

    .line 349
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 350
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    const-string v10, "http"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    const-string v10, "https"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object v9, v12

    .line 404
    .end local v7           #url:Ljava/net/URL;
    :goto_0
    return-object v9

    .line 354
    .restart local v7       #url:Ljava/net/URL;
    :cond_0
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 355
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 356
    .local v1, conn:Ljava/net/HttpURLConnection;
    const-string v9, "wap"

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 357
    const/16 v9, 0x1388

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 358
    const/16 v9, 0x1388

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 365
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 366
    const-string v9, "User-agent"

    invoke-virtual {v1, v9, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_1
    if-eqz p2, :cond_2

    .line 370
    const-string v9, "Cookie"

    invoke-virtual {v1, v9, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_2
    new-instance v5, Lcom/xiaomi/common/Network$HttpHeaderInfo;

    invoke-direct {v5}, Lcom/xiaomi/common/Network$HttpHeaderInfo;-><init>()V

    .line 374
    .local v5, ret:Lcom/xiaomi/common/Network$HttpHeaderInfo;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    iput v9, v5, Lcom/xiaomi/common/Network$HttpHeaderInfo;->ResponseCode:I

    .line 376
    iput-object p1, v5, Lcom/xiaomi/common/Network$HttpHeaderInfo;->UserAgent:Ljava/lang/String;

    .line 377
    const/4 v3, 0x0

    .line 378
    .local v3, i:I
    :goto_2
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v8

    .line 380
    .local v8, value:Ljava/lang/String;
    if-nez v4, :cond_4

    if-nez v8, :cond_4

    move-object v9, v5

    .line 396
    goto :goto_0

    .line 362
    .end local v3           #i:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #ret:Lcom/xiaomi/common/Network$HttpHeaderInfo;
    .end local v8           #value:Ljava/lang/String;
    :cond_3
    const/16 v9, 0x3a98

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 363
    const/16 v9, 0x3a98

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 397
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v7           #url:Ljava/net/URL;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 398
    .local v2, e:Ljava/net/MalformedURLException;
    const-string v9, "com.xiaomi.common.Network"

    const-string v9, "Failed to transform URL"

    invoke-static {v11, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2           #e:Ljava/net/MalformedURLException;
    :goto_3
    move-object v9, v12

    .line 404
    goto :goto_0

    .line 383
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .restart local v3       #i:I
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #ret:Lcom/xiaomi/common/Network$HttpHeaderInfo;
    .restart local v7       #url:Ljava/net/URL;
    .restart local v8       #value:Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_5

    :try_start_1
    const-string v9, "content-type"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 384
    iput-object v8, v5, Lcom/xiaomi/common/Network$HttpHeaderInfo;->ContentType:Ljava/lang/String;

    .line 387
    :cond_5
    if-eqz v4, :cond_7

    const-string v9, "location"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 388
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 389
    .local v6, uri:Ljava/net/URI;
    invoke-virtual {v6}, Ljava/net/URI;->isAbsolute()Z

    move-result v9

    if-nez v9, :cond_6

    .line 390
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, baseUri:Ljava/net/URI;
    invoke-virtual {v0, v6}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v6

    .line 393
    .end local v0           #baseUri:Ljava/net/URI;
    :cond_6
    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/xiaomi/common/Network$HttpHeaderInfo;->realUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    .line 377
    .end local v6           #uri:Ljava/net/URI;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 399
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v3           #i:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #ret:Lcom/xiaomi/common/Network$HttpHeaderInfo;
    .end local v7           #url:Ljava/net/URL;
    .end local v8           #value:Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 400
    .local v2, e:Ljava/io/IOException;
    const-string v9, "com.xiaomi.common.Network"

    const-string v9, "Failed to get mime type"

    invoke-static {v11, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 401
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v9

    move-object v2, v9

    .line 402
    .local v2, e:Ljava/net/URISyntaxException;
    const-string v9, "com.xiaomi.common.Network"

    const-string v9, "Failed to parse URI"

    invoke-static {v11, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public static getHttpPostAsStream(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 9
    .parameter "url"
    .parameter "data"
    .parameter
    .parameter "userAgent"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 306
    if-nez p0, :cond_0

    .line 307
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "url"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 309
    :cond_0
    move-object v3, p0

    .line 311
    .local v3, newUrl:Ljava/net/URL;
    const/4 v5, 0x0

    .line 312
    .local v5, responseStream:Ljava/io/InputStream;
    invoke-static {v8}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 313
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 314
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/16 v7, 0x1388

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 315
    const/16 v7, 0x3a98

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 316
    const-string v7, "POST"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 319
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 320
    const-string v7, "User-agent"

    invoke-virtual {v0, v7, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 324
    const-string v7, "Cookie"

    invoke-virtual {v0, v7, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 328
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 329
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 331
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, responseCode:Ljava/lang/String;
    const-string v7, "ResponseCode"

    invoke-interface {p2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, i:I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v6

    .line 337
    .local v6, value:Ljava/lang/String;
    if-nez v2, :cond_3

    if-nez v6, :cond_3

    .line 343
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 344
    return-object v5

    .line 340
    :cond_3
    invoke-interface {p2, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 5
    .parameter "context"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    invoke-static {p0}, Lcom/xiaomi/common/Network;->isCmwap(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 722
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/HttpURLConnection;

    move-object v4, p0

    .line 729
    :goto_0
    return-object v4

    .line 724
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 725
    .local v3, host:Ljava/lang/String;
    invoke-static {p1}, Lcom/xiaomi/common/Network;->getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, cmwapUrl:Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 727
    .local v2, gatewayUrl:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 728
    .local v1, conn:Ljava/net/HttpURLConnection;
    const-string v4, "X-Online-Host"

    invoke-virtual {v1, v4, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    .line 729
    goto :goto_0
.end method

.method public static isCmwap(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 704
    if-nez p0, :cond_0

    move v1, v4

    .line 717
    :goto_0
    return v1

    .line 707
    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 709
    .local v6, cm:Landroid/net/ConnectivityManager;
    if-nez v6, :cond_1

    move v1, v4

    .line 710
    goto :goto_0

    .line 711
    :cond_1
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 712
    .local v7, info:Landroid/net/NetworkInfo;
    if-nez v7, :cond_2

    move v1, v4

    .line 713
    goto :goto_0

    .line 714
    :cond_2
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, extraInfo:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_4

    :cond_3
    move v1, v4

    .line 716
    goto :goto_0

    .line 717
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    const-string v3, "wap"

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 700
    invoke-static {p0}, Lcom/xiaomi/common/Network;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tryDetectCharsetEncoding(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter "userAgent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    if-nez p0, :cond_0

    .line 225
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "url"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 227
    .restart local p0
    .restart local p1
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 228
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 229
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/16 p0, 0x1388

    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 230
    .end local p0
    const/16 p0, 0x3a98

    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 232
    const-string p0, "User-agent"

    invoke-virtual {v0, p0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_1
    const/4 v1, 0x0

    .line 239
    .local v1, ret:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    .line 240
    .local p1, contentType:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 241
    sget-object p0, Lcom/xiaomi/common/Network;->ContentTypePattern_Charset:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 242
    .local p0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_a

    .line 243
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 244
    .local p0, charset:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 245
    move-object p0, p0

    .line 246
    .end local v1           #ret:Ljava/lang/String;
    .local p0, ret:Ljava/lang/String;
    const-string v1, "com.xiaomi.common.Network"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP charset detected is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    .line 252
    .end local p0           #ret:Ljava/lang/String;
    .local v2, ret:Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 253
    sget-object p0, Lcom/xiaomi/common/Network;->ContentTypePattern_MimeType:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 254
    .local p1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p0

    const/4 v1, 0x2

    if-lt p0, v1, :cond_9

    .line 255
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 256
    .local p0, mimetype:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 258
    const-string v1, "application/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "application/xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "+xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    .end local p0           #mimetype:Ljava/lang/String;
    if-eqz p0, :cond_9

    .line 261
    :cond_2
    const/4 p0, 0x0

    .line 263
    .local p0, responseStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 264
    .end local p0           #responseStream:Ljava/io/InputStream;
    .local v1, responseStream:Ljava/io/InputStream;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 267
    .local v0, reader:Ljava/io/BufferedReader;
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .local p0, aLine:Ljava/lang/String;
    if-eqz p0, :cond_8

    .line 268
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 269
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    sget-object v0, Lcom/xiaomi/common/Network;->ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern;

    .end local v0           #reader:Ljava/io/BufferedReader;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 273
    .end local p1           #matcher:Ljava/util/regex/Matcher;
    .local v0, matcher:Ljava/util/regex/Matcher;
    :try_start_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p1

    const/4 v3, 0x3

    if-lt p1, v3, :cond_7

    .line 274
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 275
    .local p1, charset:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    if-nez v3, :cond_6

    .line 276
    move-object p1, p1

    .line 277
    .end local v2           #ret:Ljava/lang/String;
    .local p1, ret:Ljava/lang/String;
    :try_start_3
    const-string v2, "com.xiaomi.common.Network"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML charset detected is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_1
    move-object v5, v0

    .end local v0           #matcher:Ljava/util/regex/Matcher;
    .local v5, matcher:Ljava/util/regex/Matcher;
    move-object v0, p1

    .end local p1           #ret:Ljava/lang/String;
    .local v0, ret:Ljava/lang/String;
    move-object p1, v5

    .line 283
    .end local v5           #matcher:Ljava/util/regex/Matcher;
    .local p1, matcher:Ljava/util/regex/Matcher;
    :goto_2
    if-eqz v1, :cond_5

    .line 284
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    move-object p0, v0

    .line 292
    .end local v0           #ret:Ljava/lang/String;
    .end local v1           #responseStream:Ljava/io/InputStream;
    .end local p1           #matcher:Ljava/util/regex/Matcher;
    .local p0, ret:Ljava/lang/String;
    :goto_3
    return-object p0

    .line 283
    .local v0, conn:Ljava/net/HttpURLConnection;
    .restart local v2       #ret:Ljava/lang/String;
    .local p0, responseStream:Ljava/io/InputStream;
    .restart local p1       #matcher:Ljava/util/regex/Matcher;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .end local v2           #ret:Ljava/lang/String;
    .local v0, ret:Ljava/lang/String;
    move-object v5, p1

    .end local p1           #matcher:Ljava/util/regex/Matcher;
    .restart local v5       #matcher:Ljava/util/regex/Matcher;
    move-object p1, p0

    .end local p0           #responseStream:Ljava/io/InputStream;
    .local p1, responseStream:Ljava/io/InputStream;
    move-object p0, v5

    .end local v5           #matcher:Ljava/util/regex/Matcher;
    .local p0, matcher:Ljava/util/regex/Matcher;
    :goto_4
    if-eqz p1, :cond_4

    .line 284
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v1

    .line 283
    .end local v0           #ret:Ljava/lang/String;
    .end local p0           #matcher:Ljava/util/regex/Matcher;
    .restart local v1       #responseStream:Ljava/io/InputStream;
    .restart local v2       #ret:Ljava/lang/String;
    .local p1, matcher:Ljava/util/regex/Matcher;
    :catchall_1
    move-exception p0

    move-object v0, v2

    .end local v2           #ret:Ljava/lang/String;
    .restart local v0       #ret:Ljava/lang/String;
    move-object v5, v1

    .end local v1           #responseStream:Ljava/io/InputStream;
    .local v5, responseStream:Ljava/io/InputStream;
    move-object v1, p0

    move-object p0, p1

    .end local p1           #matcher:Ljava/util/regex/Matcher;
    .restart local p0       #matcher:Ljava/util/regex/Matcher;
    move-object p1, v5

    .end local v5           #responseStream:Ljava/io/InputStream;
    .local p1, responseStream:Ljava/io/InputStream;
    goto :goto_4

    .end local p1           #responseStream:Ljava/io/InputStream;
    .local v0, matcher:Ljava/util/regex/Matcher;
    .restart local v1       #responseStream:Ljava/io/InputStream;
    .restart local v2       #ret:Ljava/lang/String;
    .local p0, aLine:Ljava/lang/String;
    :catchall_2
    move-exception p0

    move-object p1, v1

    .end local v1           #responseStream:Ljava/io/InputStream;
    .restart local p1       #responseStream:Ljava/io/InputStream;
    move-object v1, p0

    move-object p0, v0

    .end local v0           #matcher:Ljava/util/regex/Matcher;
    .local p0, matcher:Ljava/util/regex/Matcher;
    move-object v0, v2

    .end local v2           #ret:Ljava/lang/String;
    .local v0, ret:Ljava/lang/String;
    goto :goto_4

    .local v0, matcher:Ljava/util/regex/Matcher;
    .restart local v1       #responseStream:Ljava/io/InputStream;
    .local p0, aLine:Ljava/lang/String;
    .local p1, ret:Ljava/lang/String;
    :catchall_3
    move-exception p0

    move-object v5, p0

    move-object p0, v0

    .end local v0           #matcher:Ljava/util/regex/Matcher;
    .local p0, matcher:Ljava/util/regex/Matcher;
    move-object v0, p1

    .end local p1           #ret:Ljava/lang/String;
    .local v0, ret:Ljava/lang/String;
    move-object p1, v1

    .end local v1           #responseStream:Ljava/io/InputStream;
    .local p1, responseStream:Ljava/io/InputStream;
    move-object v1, v5

    goto :goto_4

    .restart local v1       #responseStream:Ljava/io/InputStream;
    .local p0, aLine:Ljava/lang/String;
    .local p1, matcher:Ljava/util/regex/Matcher;
    :cond_5
    move-object p0, v0

    .end local v0           #ret:Ljava/lang/String;
    .local p0, ret:Ljava/lang/String;
    goto :goto_3

    .local v0, matcher:Ljava/util/regex/Matcher;
    .restart local v2       #ret:Ljava/lang/String;
    .local p0, aLine:Ljava/lang/String;
    .local p1, charset:Ljava/lang/String;
    :cond_6
    move-object p1, v2

    .end local v2           #ret:Ljava/lang/String;
    .local p1, ret:Ljava/lang/String;
    goto :goto_1

    .end local p1           #ret:Ljava/lang/String;
    .restart local v2       #ret:Ljava/lang/String;
    :cond_7
    move-object p1, v0

    .end local v0           #matcher:Ljava/util/regex/Matcher;
    .local p1, matcher:Ljava/util/regex/Matcher;
    move-object v0, v2

    .end local v2           #ret:Ljava/lang/String;
    .local v0, ret:Ljava/lang/String;
    goto :goto_2

    .local v0, reader:Ljava/io/BufferedReader;
    .restart local v2       #ret:Ljava/lang/String;
    :cond_8
    move-object v0, v2

    .end local v2           #ret:Ljava/lang/String;
    .local v0, ret:Ljava/lang/String;
    goto :goto_2

    .end local v1           #responseStream:Ljava/io/InputStream;
    .end local p0           #aLine:Ljava/lang/String;
    .end local p1           #matcher:Ljava/util/regex/Matcher;
    .local v0, conn:Ljava/net/HttpURLConnection;
    .restart local v2       #ret:Ljava/lang/String;
    :cond_9
    move-object p0, v2

    .end local v2           #ret:Ljava/lang/String;
    .local p0, ret:Ljava/lang/String;
    goto :goto_3

    .end local p0           #ret:Ljava/lang/String;
    .local v1, ret:Ljava/lang/String;
    .local p1, contentType:Ljava/lang/String;
    :cond_a
    move-object v2, v1

    .end local v1           #ret:Ljava/lang/String;
    .restart local v2       #ret:Ljava/lang/String;
    goto/16 :goto_0

    .end local v2           #ret:Ljava/lang/String;
    .restart local v1       #ret:Ljava/lang/String;
    :cond_b
    move-object p0, v1

    .end local v1           #ret:Ljava/lang/String;
    .restart local p0       #ret:Ljava/lang/String;
    goto :goto_3
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter "file"
    .parameter "fileKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    const/4 p0, 0x0

    .line 645
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return-object p0

    .line 569
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 571
    .local v4, filename:Ljava/lang/String;
    const/4 v1, 0x0

    .line 573
    .local v1, conn:Ljava/net/HttpURLConnection;
    const-string v0, "\r\n"

    .line 574
    .local v0, lineEnd:Ljava/lang/String;
    const-string v0, "--"

    .line 575
    .local v0, twoHyphens:Ljava/lang/String;
    const-string v0, "*****"

    .line 577
    .local v0, boundary:Ljava/lang/String;
    const/4 v3, 0x0

    .line 578
    .local v3, fileInputStream:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 579
    .local v2, dos:Ljava/io/DataOutputStream;
    const/4 v5, 0x0

    .line 582
    .local v5, rd:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .end local v0           #boundary:Ljava/lang/String;
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 583
    .local v0, _url:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #_url:Ljava/net/URL;
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 584
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .local v0, conn:Ljava/net/HttpURLConnection;
    const p0, 0xea60

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 585
    .end local p0
    const/16 p0, 0x1388

    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 588
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 589
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 590
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 593
    const-string p0, "POST"

    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 594
    const-string p0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {v0, p0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string p0, "Content-Type"

    const-string v1, "multipart/form-data;boundary=*****"

    invoke-virtual {v0, p0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const/16 p0, 0x4d

    .line 598
    .local p0, EXTRA_LEN:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    .end local p0           #EXTRA_LEN:I
    add-int/lit8 p0, p0, 0x4d

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v1, v6

    add-int/2addr p0, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p0, v1

    .line 599
    .local p0, len:I
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 601
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    .end local p0           #len:I
    invoke-direct {v1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 602
    .end local v2           #dos:Ljava/io/DataOutputStream;
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_2
    const-string p0, "--*****\r\n"

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 603
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Disposition: form-data; name=\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "\";filename=\""

    .end local p2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "\""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "\r\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 605
    const-string p0, "\r\n"

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 608
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 609
    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .local p2, fileInputStream:Ljava/io/FileInputStream;
    const/4 p1, -0x1

    .line 610
    .local p1, bytesRead:I
    const/16 p0, 0x400

    .line 611
    .local p0, BUFFER_SIZE:I
    const/16 p0, 0x400

    :try_start_3
    new-array p0, p0, [B

    .line 612
    .local p0, buffer:[B
    :goto_1
    invoke-virtual {p2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_4

    .line 613
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 614
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 633
    .end local p0           #buffer:[B
    .end local p1           #bytesRead:I
    :catchall_0
    move-exception p0

    move-object p1, v1

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .local p1, dos:Ljava/io/DataOutputStream;
    move-object v1, p0

    move-object p0, v0

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .local p0, conn:Ljava/net/HttpURLConnection;
    move-object v0, v5

    .line 634
    .end local v5           #rd:Ljava/io/BufferedReader;
    .local v0, rd:Ljava/io/BufferedReader;
    :goto_2
    if-eqz p2, :cond_1

    .line 635
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 637
    :cond_1
    if-eqz p1, :cond_2

    .line 638
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 640
    :cond_2
    if-eqz v0, :cond_3

    .line 641
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 645
    .end local p0           #conn:Ljava/net/HttpURLConnection;
    .end local p1           #dos:Ljava/io/DataOutputStream;
    .end local p2           #fileInputStream:Ljava/io/FileInputStream;
    :cond_3
    :goto_3
    throw v1

    .line 617
    .local v0, conn:Ljava/net/HttpURLConnection;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    .restart local v5       #rd:Ljava/io/BufferedReader;
    .local p0, buffer:[B
    .local p1, bytesRead:I
    .restart local p2       #fileInputStream:Ljava/io/FileInputStream;
    :cond_4
    :try_start_5
    const-string p0, "\r\n"

    .end local p0           #buffer:[B
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 618
    const-string p0, "--"

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 619
    const-string p0, "*****"

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 620
    const-string p0, "--"

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 621
    const-string p0, "\r\n"

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 625
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 626
    .local v2, sb:Ljava/lang/StringBuffer;
    new-instance p1, Ljava/io/BufferedReader;

    .end local p1           #bytesRead:I
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 628
    .end local v5           #rd:Ljava/io/BufferedReader;
    .local p1, rd:Ljava/io/BufferedReader;
    :goto_4
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .local p0, line:Ljava/lang/String;
    if-eqz p0, :cond_5

    .line 629
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 633
    .end local p0           #line:Ljava/lang/String;
    :catchall_1
    move-exception p0

    move-object v8, p0

    move-object p0, v0

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .local p0, conn:Ljava/net/HttpURLConnection;
    move-object v0, p1

    .end local p1           #rd:Ljava/io/BufferedReader;
    .local v0, rd:Ljava/io/BufferedReader;
    move-object p1, v1

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .local p1, dos:Ljava/io/DataOutputStream;
    move-object v1, v8

    goto :goto_2

    .line 631
    .local v0, conn:Ljava/net/HttpURLConnection;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    .local p0, line:Ljava/lang/String;
    .local p1, rd:Ljava/io/BufferedReader;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    .line 634
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    if-eqz p2, :cond_6

    .line 635
    :try_start_7
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 637
    :cond_6
    if-eqz v1, :cond_7

    .line 638
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 640
    :cond_7
    if-eqz p1, :cond_8

    .line 641
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .end local p0           #line:Ljava/lang/String;
    .end local p1           #rd:Ljava/io/BufferedReader;
    .end local p2           #fileInputStream:Ljava/io/FileInputStream;
    :cond_8
    :goto_5
    move-object p0, v0

    .line 645
    goto/16 :goto_0

    .line 643
    .restart local p0       #line:Ljava/lang/String;
    .restart local p1       #rd:Ljava/io/BufferedReader;
    .restart local p2       #fileInputStream:Ljava/io/FileInputStream;
    :catch_0
    move-exception p0

    .line 644
    .local p0, e:Ljava/io/IOException;
    const-string p1, "com.xiaomi.common.Network"

    .end local p1           #rd:Ljava/io/BufferedReader;
    const-string p2, "error while closing strean"

    .end local p2           #fileInputStream:Ljava/io/FileInputStream;
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 643
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .end local v2           #sb:Ljava/lang/StringBuffer;
    .local v0, rd:Ljava/io/BufferedReader;
    .local p0, conn:Ljava/net/HttpURLConnection;
    .local p1, dos:Ljava/io/DataOutputStream;
    .restart local p2       #fileInputStream:Ljava/io/FileInputStream;
    :catch_1
    move-exception p0

    .line 644
    .local p0, e:Ljava/io/IOException;
    const-string p1, "com.xiaomi.common.Network"

    .end local p1           #dos:Ljava/io/DataOutputStream;
    const-string p2, "error while closing strean"

    .end local p2           #fileInputStream:Ljava/io/FileInputStream;
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 633
    .end local v0           #rd:Ljava/io/BufferedReader;
    .local v1, conn:Ljava/net/HttpURLConnection;
    .local v2, dos:Ljava/io/DataOutputStream;
    .restart local v3       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v5       #rd:Ljava/io/BufferedReader;
    .local p0, url:Ljava/lang/String;
    .local p1, file:Ljava/io/File;
    .local p2, fileKey:Ljava/lang/String;
    :catchall_2
    move-exception p0

    move-object v0, v5

    .end local v5           #rd:Ljava/io/BufferedReader;
    .restart local v0       #rd:Ljava/io/BufferedReader;
    move-object p1, v2

    .end local v2           #dos:Ljava/io/DataOutputStream;
    .local p1, dos:Ljava/io/DataOutputStream;
    move-object p2, v3

    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .local p2, fileInputStream:Ljava/io/FileInputStream;
    move-object v8, p0

    move-object p0, v1

    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .local p0, conn:Ljava/net/HttpURLConnection;
    move-object v1, v8

    goto :goto_2

    .end local p0           #conn:Ljava/net/HttpURLConnection;
    .local v0, conn:Ljava/net/HttpURLConnection;
    .restart local v2       #dos:Ljava/io/DataOutputStream;
    .restart local v3       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v5       #rd:Ljava/io/BufferedReader;
    .local p1, file:Ljava/io/File;
    .local p2, fileKey:Ljava/lang/String;
    :catchall_3
    move-exception p0

    move-object v1, p0

    move-object p1, v2

    .end local v2           #dos:Ljava/io/DataOutputStream;
    .local p1, dos:Ljava/io/DataOutputStream;
    move-object p2, v3

    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .local p2, fileInputStream:Ljava/io/FileInputStream;
    move-object p0, v0

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .restart local p0       #conn:Ljava/net/HttpURLConnection;
    move-object v0, v5

    .end local v5           #rd:Ljava/io/BufferedReader;
    .local v0, rd:Ljava/io/BufferedReader;
    goto/16 :goto_2

    .end local p0           #conn:Ljava/net/HttpURLConnection;
    .end local p2           #fileInputStream:Ljava/io/FileInputStream;
    .local v0, conn:Ljava/net/HttpURLConnection;
    .local v1, dos:Ljava/io/DataOutputStream;
    .restart local v3       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v5       #rd:Ljava/io/BufferedReader;
    .local p1, file:Ljava/io/File;
    :catchall_4
    move-exception p0

    move-object p1, v1

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .local p1, dos:Ljava/io/DataOutputStream;
    move-object p2, v3

    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .restart local p2       #fileInputStream:Ljava/io/FileInputStream;
    move-object v1, p0

    move-object p0, v0

    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .restart local p0       #conn:Ljava/net/HttpURLConnection;
    move-object v0, v5

    .end local v5           #rd:Ljava/io/BufferedReader;
    .local v0, rd:Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method
