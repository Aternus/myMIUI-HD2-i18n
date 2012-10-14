.class public Lcom/android/browser/common/Network;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/common/Network$DownloadTask;,
        Lcom/android/browser/common/Network$PostDownloadHandler;,
        Lcom/android/browser/common/Network$HttpHeaderInfo;
    }
.end annotation


# static fields
.field public static final ContentTypePattern_Charset:Ljava/util/regex/Pattern; = null

.field public static final ContentTypePattern_MimeType:Ljava/util/regex/Pattern; = null

.field public static final ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern; = null

.field private static final DEFAULT_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (Linux; U; Android 2.2; zh-cn;) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

.field private static final LogTag:Ljava/lang/String; = "common/Network"

.field public static final UserAgent_PC_Chrome:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3"

.field public static final UserAgent_PC_Chrome_6_0_464_0:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 322
    const-string v0, "([^\\s;]+)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/common/Network;->ContentTypePattern_MimeType:Ljava/util/regex/Pattern;

    .line 323
    const-string v0, "(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/common/Network;->ContentTypePattern_Charset:Ljava/util/regex/Pattern;

    .line 325
    const-string v0, "(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/common/Network;->ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    return-void
.end method

.method public static beginDownloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;Lcom/android/browser/common/Network$PostDownloadHandler;)V
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "output"
    .parameter "handler"

    .prologue
    .line 666
    new-instance v0, Lcom/android/browser/common/Network$DownloadTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/browser/common/Network$DownloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;Lcom/android/browser/common/Network$PostDownloadHandler;)V

    .line 667
    .local v0, task:Lcom/android/browser/common/Network$DownloadTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/common/Network$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 668
    return-void
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

    .line 472
    invoke-static {p0, p1, v0, v0, v0}, Lcom/android/browser/common/Network;->doHttpPost(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    .line 477
    .local p1, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/browser/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "url"

    .end local p1           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 480
    .restart local p0
    .restart local p1       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 481
    .local v0, httpParameters:Lorg/apache/http/params/BasicHttpParams;
    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 482
    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 483
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 484
    const-string v1, "User-agent"

    invoke-virtual {v0, v1, p3}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 487
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    .end local p3
    if-nez p3, :cond_2

    .line 488
    const-string p3, "Cookie"

    invoke-virtual {v0, p3, p4}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 492
    :cond_2
    new-instance p3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 493
    .local p3, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance p4, Lorg/apache/http/client/methods/HttpPost;

    .end local p4
    invoke-direct {p4, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 495
    .local p4, httppost:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .end local p0
    if-eqz p0, :cond_3

    .line 496
    new-instance p0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v0, "UTF-8"

    .end local v0           #httpParameters:Lorg/apache/http/params/BasicHttpParams;
    invoke-direct {p0, p1, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 498
    :cond_3
    invoke-interface {p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p3

    .line 499
    .local p3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p0

    .line 500
    .local p0, statusCode:I
    const-string p1, "common/Network"

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

    .line 501
    const/16 p1, 0xc8

    if-lt p0, p1, :cond_6

    const/16 p1, 0x12c

    if-ge p0, p1, :cond_6

    .line 504
    if-eqz p2, :cond_4

    .line 505
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p0

    .line 506
    .local p0, _headers:[Lorg/apache/http/Header;
    const/4 p1, 0x0

    .local p1, i:I
    :goto_0
    array-length p4, p0

    if-ge p1, p4, :cond_4

    .line 507
    aget-object p4, p0, p1

    invoke-interface {p4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object p4

    aget-object v0, p0, p1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 510
    .end local p0           #_headers:[Lorg/apache/http/Header;
    .end local p1           #i:I
    :cond_4
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .line 511
    .local p0, body:Lorg/apache/http/HttpEntity;
    if-eqz p0, :cond_5

    .line 512
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p0

    .line 514
    .local p0, result:Ljava/lang/String;
    if-eqz p0, :cond_5

    .line 521
    .end local p0           #result:Ljava/lang/String;
    :goto_1
    return-object p0

    .line 518
    :cond_5
    const-string p0, ""

    goto :goto_1

    .line 521
    .local p0, statusCode:I
    :cond_6
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 7
    .parameter "context"
    .parameter "urlStr"
    .parameter "output"

    .prologue
    const/4 v6, 0x0

    .line 678
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcom/android/browser/common/Network;->getProxiableURLConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 679
    .local v1, conn:Ljava/net/HttpURLConnection;
    invoke-static {p0, p1}, Lcom/android/browser/common/Network;->getSocketTimeout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 680
    invoke-static {p0, p1}, Lcom/android/browser/common/Network;->getSocketTimeout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 681
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 683
    .local v4, input:Ljava/io/InputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 686
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    if-lez v2, :cond_0

    .line 687
    const/4 v5, 0x0

    invoke-virtual {p2, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 693
    .end local v0           #buffer:[B
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v2           #count:I
    .end local v4           #input:Ljava/io/InputStream;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 694
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move v5, v6

    .line 697
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    return v5

    .line 690
    .restart local v0       #buffer:[B
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .restart local v2       #count:I
    .restart local v4       #input:Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 691
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 692
    const/4 v5, 0x1

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

    .line 166
    const/4 v2, 0x0

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/browser/common/Network;->downloadXml(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    .line 171
    const/4 v0, 0x0

    .line 174
    .local v0, responseStream:Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, p1, p2, p3, p5}, Lcom/android/browser/common/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object p2

    .line 175
    .end local v0           #responseStream:Ljava/io/InputStream;
    .local p2, responseStream:Ljava/io/InputStream;
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    .end local p3
    const/16 p0, 0x400

    invoke-direct {p3, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 176
    .end local p0
    .local p3, sbReponse:Ljava/lang/StringBuilder;
    new-instance p1, Ljava/io/BufferedReader;

    .end local p1
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, p2, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 178
    .local p1, reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .local p0, line:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 179
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string p0, "\r\n"

    .end local p0           #line:Ljava/lang/String;
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
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

    .line 185
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 188
    .end local p0           #responseStream:Ljava/io/InputStream;
    .end local p4
    :cond_0
    :goto_2
    throw p1

    .line 183
    .local p0, line:Ljava/lang/String;
    .restart local p1       #reader:Ljava/io/BufferedReader;
    .restart local p2       #responseStream:Ljava/io/InputStream;
    .restart local p3       #sbReponse:Ljava/lang/StringBuilder;
    .restart local p4
    :cond_1
    if-eqz p2, :cond_2

    .line 185
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 192
    .end local p0           #line:Ljava/lang/String;
    .end local p1           #reader:Ljava/io/BufferedReader;
    .end local p2           #responseStream:Ljava/io/InputStream;
    .end local p4
    :cond_2
    :goto_3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 193
    .local p0, responseXml:Ljava/lang/String;
    return-object p0

    .line 186
    .local p0, line:Ljava/lang/String;
    .restart local p1       #reader:Ljava/io/BufferedReader;
    .restart local p2       #responseStream:Ljava/io/InputStream;
    .restart local p4
    :catch_0
    move-exception p0

    .line 187
    .local p0, e:Ljava/io/IOException;
    const-string p1, "common/Network"

    .end local p1           #reader:Ljava/io/BufferedReader;
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #responseStream:Ljava/io/InputStream;
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to close responseStream"

    .end local p4
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

    .line 186
    .end local p3           #sbReponse:Ljava/lang/StringBuilder;
    .local p0, responseStream:Ljava/io/InputStream;
    .restart local p4
    :catch_1
    move-exception p0

    .line 187
    .local p0, e:Ljava/io/IOException;
    const-string p2, "common/Network"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to close responseStream"

    .end local p4
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

    .line 183
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

    .line 55
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/browser/common/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/android/browser/common/Network$HttpHeaderInfo;)Ljava/io/InputStream;

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

    .line 59
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/browser/common/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/android/browser/common/Network$HttpHeaderInfo;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/android/browser/common/Network$HttpHeaderInfo;)Ljava/io/InputStream;
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
            "Lcom/android/browser/common/Network$HttpHeaderInfo;",
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
    .line 79
    .local p5, requestHdrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 80
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "context"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    .restart local p0
    .restart local p1
    :cond_0
    if-nez p1, :cond_1

    .line 82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "url"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    .restart local p0
    .restart local p1
    :cond_1
    move-object v0, p1

    .line 85
    .local v0, newUrl:Ljava/net/URL;
    if-nez p2, :cond_b

    .line 86
    new-instance p2, Ljava/net/URL;

    .end local p2
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0           #newUrl:Ljava/net/URL;
    invoke-static {v0}, Lcom/android/browser/common/Network;->encryptURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    .local p2, newUrl:Ljava/net/URL;
    :goto_0
    const/4 v0, 0x0

    .line 89
    .local v0, responseStream:Ljava/io/InputStream;
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 90
    .end local v0           #responseStream:Ljava/io/InputStream;
    invoke-static {p0, p2}, Lcom/android/browser/common/Network;->getProxiableURLConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p2

    .line 91
    .local p2, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/browser/common/Network;->getSocketTimeout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 92
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/browser/common/Network;->getSocketTimeout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    .end local p0
    invoke-virtual {p2, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 94
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 95
    const-string p0, "User-agent"

    invoke-virtual {p2, p0, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_2
    if-eqz p4, :cond_3

    .line 98
    const-string p0, "Cookie"

    invoke-virtual {p2, p0, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_3
    if-eqz p5, :cond_4

    .line 101
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .end local p3
    .end local p4
    .local p0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 102
    .local p3, key:Ljava/lang/String;
    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    .end local p0           #i$:Ljava/util/Iterator;
    .end local p3           #key:Ljava/lang/String;
    :cond_4
    if-eqz p6, :cond_7

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string p3, "http"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https"

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 107
    :cond_5
    invoke-static {p2}, Lcom/android/browser/common/Network;->safeGetResponseCode(Ljava/net/HttpURLConnection;)I

    move-result p0

    iput p0, p6, Lcom/android/browser/common/Network$HttpHeaderInfo;->ResponseCode:I

    .line 108
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p6, Lcom/android/browser/common/Network$HttpHeaderInfo;->ContentType:Ljava/lang/String;

    .line 109
    iget-object p0, p6, Lcom/android/browser/common/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    if-nez p0, :cond_6

    .line 110
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, p6, Lcom/android/browser/common/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    .line 111
    :cond_6
    const/4 p0, 0x0

    .line 113
    .local p0, i:I
    :goto_2
    invoke-virtual {p2, p0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    .line 114
    .local p1, name:Ljava/lang/String;
    invoke-virtual {p2, p0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p3

    .line 116
    .local p3, value:Ljava/lang/String;
    if-nez p1, :cond_8

    if-nez p3, :cond_8

    .line 124
    .end local p0           #i:I
    .end local p1           #name:Ljava/lang/String;
    .end local p3           #value:Ljava/lang/String;
    :cond_7
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 125
    .local p0, responseStream:Ljava/io/InputStream;
    return-object p0

    .line 118
    .local p0, i:I
    .restart local p1       #name:Ljava/lang/String;
    .restart local p3       #value:Ljava/lang/String;
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_9

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 111
    .end local p1           #name:Ljava/lang/String;
    :cond_9
    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 120
    .restart local p1       #name:Ljava/lang/String;
    :cond_a
    iget-object p4, p6, Lcom/android/browser/common/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .end local p1           #name:Ljava/lang/String;
    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .local v0, newUrl:Ljava/net/URL;
    .local p0, context:Landroid/content/Context;
    .local p1, url:Ljava/net/URL;
    .local p2, noEncryptUrl:Z
    .local p3, userAgent:Ljava/lang/String;
    .restart local p4
    :cond_b
    move-object p2, v0

    .end local v0           #newUrl:Ljava/net/URL;
    .local p2, newUrl:Ljava/net/URL;
    goto/16 :goto_0
.end method

.method public static downloadXmlAsStreamWithoutRedirect(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lcom/android/browser/common/Network$HttpHeaderInfo;)Ljava/io/InputStream;
    .locals 10
    .parameter "context"
    .parameter "url"
    .parameter "userAgent"
    .parameter "cookie"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x190

    const/16 v8, 0x12c

    .line 129
    const/4 v5, 0x0

    .line 130
    .local v5, responseStream:Ljava/io/InputStream;
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 131
    invoke-static {p0, p1}, Lcom/android/browser/common/Network;->getProxiableURLConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 132
    .local v1, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/browser/common/Network;->getSocketTimeout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 133
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/browser/common/Network;->getSocketTimeout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 134
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 135
    const-string v7, "User-agent"

    invoke-virtual {v1, v7, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    if-eqz p3, :cond_1

    .line 138
    const-string v7, "Cookie"

    invoke-virtual {v1, v7, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_1
    invoke-static {v1}, Lcom/android/browser/common/Network;->safeGetResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v4

    .line 142
    .local v4, resCode:I
    if-lt v4, v8, :cond_2

    if-lt v4, v9, :cond_3

    .line 143
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 145
    :cond_3
    if-eqz p4, :cond_6

    .line 146
    if-lt v4, v8, :cond_5

    if-ge v4, v9, :cond_5

    .line 147
    const-string v7, "location"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, realUrl:Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 150
    .local v6, uri:Ljava/net/URI;
    invoke-virtual {v6}, Ljava/net/URI;->isAbsolute()Z

    move-result v7

    if-nez v7, :cond_4

    .line 151
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, baseUri:Ljava/net/URI;
    invoke-virtual {v0, v6}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v6

    .line 154
    .end local v0           #baseUri:Ljava/net/URI;
    :cond_4
    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p4, Lcom/android/browser/common/Network$HttpHeaderInfo;->realUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v3           #realUrl:Ljava/lang/String;
    .end local v6           #uri:Ljava/net/URI;
    :cond_5
    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p4, Lcom/android/browser/common/Network$HttpHeaderInfo;->ContentType:Ljava/lang/String;

    .line 161
    :cond_6
    return-object v5

    .line 155
    .restart local v3       #realUrl:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 156
    .local v2, e:Ljava/net/URISyntaxException;
    const-string v7, "common/Network"

    const-string v8, "create uri error"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static encryptURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "strUrl"

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "%sbe988a6134bc8254465424e5a70ef037"

    .line 556
    invoke-static {p0}, Lcom/android/browser/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    const-string v0, "%s&key=%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const-string v2, "%sbe988a6134bc8254465424e5a70ef037"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/browser/common/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 565
    :goto_0
    return-object v0

    .line 561
    :cond_0
    const-string v0, "%s?key=%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const-string v2, "%sbe988a6134bc8254465424e5a70ef037"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/browser/common/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 565
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getActiveNetworkName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const-string v6, "-"

    .line 735
    const-string v1, "null"

    .line 736
    .local v1, defaultValue:Ljava/lang/String;
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 738
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    move-object v2, v1

    .line 746
    .end local v1           #defaultValue:Ljava/lang/String;
    .local v2, defaultValue:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 739
    .end local v2           #defaultValue:Ljava/lang/String;
    .restart local v1       #defaultValue:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 740
    .local v3, info:Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    move-object v2, v1

    .end local v1           #defaultValue:Ljava/lang/String;
    .restart local v2       #defaultValue:Ljava/lang/String;
    goto :goto_0

    .line 741
    .end local v2           #defaultValue:Ljava/lang/String;
    .restart local v1       #defaultValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 742
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 744
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 745
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v2, v1

    .line 746
    .end local v1           #defaultValue:Ljava/lang/String;
    .restart local v2       #defaultValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 725
    const/4 v1, -0x1

    .line 726
    .local v1, defaultValue:I
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 728
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    move v3, v1

    .line 731
    :goto_0
    return v3

    .line 729
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 730
    .local v2, info:Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    move v3, v1

    goto :goto_0

    .line 731
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    goto :goto_0
.end method

.method public static getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "contentType"

    .prologue
    const-string v4, ""

    .line 308
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    const-string v2, ""

    move-object v2, v4

    .line 319
    :goto_0
    return-object v2

    .line 311
    :cond_0
    sget-object v2, Lcom/android/browser/common/Network;->ContentTypePattern_Charset:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 312
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 313
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, charset:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    .line 315
    goto :goto_0

    .line 319
    .end local v0           #charset:Ljava/lang/String;
    :cond_1
    const-string v2, ""

    move-object v2, v4

    goto :goto_0
.end method

.method public static getCharsetFromXmlStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter "xmlStream"

    .prologue
    .line 277
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 281
    .local v2, reader:Ljava/io/BufferedReader;
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, aLine:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    invoke-static {v0}, Lcom/android/browser/common/Network;->getCharsetFromXmlString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 292
    .end local v0           #aLine:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 288
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 289
    .local v1, e:Ljava/io/IOException;
    const-string v3, "common/Network"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method public static getCharsetFromXmlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "xml"

    .prologue
    .line 296
    sget-object v2, Lcom/android/browser/common/Network;->ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 297
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 298
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, charset:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    .line 304
    .end local v0           #charset:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static getHttpHeaderInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/browser/common/Network$HttpHeaderInfo;
    .locals 3
    .parameter "context"
    .parameter "urlString"
    .parameter "userAgent"
    .parameter "cookie"

    .prologue
    .line 374
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, url:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    const/4 p0, 0x0

    .line 440
    .end local v0           #url:Ljava/net/URL;
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_0
    return-object p0

    .line 379
    .restart local v0       #url:Ljava/net/URL;
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 380
    invoke-static {p0, v0}, Lcom/android/browser/common/Network;->getProxiableURLConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 381
    .local v0, conn:Ljava/net/HttpURLConnection;
    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 382
    invoke-static {p0, p1}, Lcom/android/browser/common/Network;->getSocketTimeout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 383
    invoke-static {p0, p1}, Lcom/android/browser/common/Network;->getSocketTimeout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    .end local p0
    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 384
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 385
    const-string p0, "User-agent"

    invoke-virtual {v0, p0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_1
    if-eqz p3, :cond_2

    .line 389
    const-string p0, "Cookie"

    invoke-virtual {v0, p0, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_2
    new-instance p3, Lcom/android/browser/common/Network$HttpHeaderInfo;

    .end local p3
    invoke-direct {p3}, Lcom/android/browser/common/Network$HttpHeaderInfo;-><init>()V

    .line 393
    .local p3, ret:Lcom/android/browser/common/Network$HttpHeaderInfo;
    invoke-static {v0}, Lcom/android/browser/common/Network;->safeGetResponseCode(Ljava/net/HttpURLConnection;)I

    move-result p0

    iput p0, p3, Lcom/android/browser/common/Network$HttpHeaderInfo;->ResponseCode:I

    .line 394
    iput-object p2, p3, Lcom/android/browser/common/Network$HttpHeaderInfo;->UserAgent:Ljava/lang/String;

    .line 403
    iget p0, p3, Lcom/android/browser/common/Network$HttpHeaderInfo;->ResponseCode:I

    const/16 p2, 0x64

    if-lt p0, p2, :cond_3

    .end local p2
    iget p0, p3, Lcom/android/browser/common/Network$HttpHeaderInfo;->ResponseCode:I

    const/16 p2, 0x190

    if-ge p0, p2, :cond_3

    .line 404
    const/4 p0, 0x0

    .local p0, i:I
    move p2, p0

    .line 406
    .end local p0           #i:I
    .local p2, i:I
    :goto_1
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p0

    .line 407
    .local p0, name:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, value:Ljava/lang/String;
    if-nez p0, :cond_4

    if-nez v2, :cond_4

    .end local v2           #value:Ljava/lang/String;
    .end local p0           #name:Ljava/lang/String;
    .end local p2           #i:I
    :cond_3
    move-object p0, p3

    .line 425
    goto :goto_0

    .line 411
    .restart local v2       #value:Ljava/lang/String;
    .restart local p0       #name:Ljava/lang/String;
    .restart local p2       #i:I
    :cond_4
    if-eqz p0, :cond_5

    const-string v1, "content-type"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 412
    iput-object v2, p3, Lcom/android/browser/common/Network$HttpHeaderInfo;->ContentType:Ljava/lang/String;

    .line 415
    :cond_5
    if-eqz p0, :cond_6

    const-string v1, "location"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #name:Ljava/lang/String;
    if-eqz p0, :cond_6

    .line 416
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 417
    .local v1, uri:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result p0

    if-nez p0, :cond_7

    .line 418
    new-instance p0, Ljava/net/URI;

    invoke-direct {p0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 419
    .local p0, baseUri:Ljava/net/URI;
    invoke-virtual {p0, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    .line 421
    .end local v1           #uri:Ljava/net/URI;
    .local p0, uri:Ljava/net/URI;
    :goto_2
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #uri:Ljava/net/URI;
    iput-object p0, p3, Lcom/android/browser/common/Network$HttpHeaderInfo;->realUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 404
    :cond_6
    add-int/lit8 p0, p2, 0x1

    .end local p2           #i:I
    .local p0, i:I
    move p2, p0

    .end local p0           #i:I
    .restart local p2       #i:I
    goto :goto_1

    .line 426
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .end local v2           #value:Ljava/lang/String;
    .end local p2           #i:I
    .end local p3           #ret:Lcom/android/browser/common/Network$HttpHeaderInfo;
    :catch_0
    move-exception p0

    .line 427
    .local p0, e:Ljava/net/MalformedURLException;
    const-string p1, "common/Network"

    .end local p1
    const-string p2, "Failed to transform URL"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    .end local p0           #e:Ljava/net/MalformedURLException;
    :goto_3
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 428
    .restart local p1
    :catch_1
    move-exception p0

    .line 429
    .local p0, e:Ljava/io/IOException;
    const-string p1, "common/Network"

    .end local p1
    const-string p2, "Failed to get mime type"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 430
    .end local p0           #e:Ljava/io/IOException;
    .restart local p1
    :catch_2
    move-exception p0

    .line 431
    .local p0, e:Ljava/net/URISyntaxException;
    const-string p1, "common/Network"

    .end local p1
    const-string p2, "Failed to parse URI"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 432
    .end local p0           #e:Ljava/net/URISyntaxException;
    .restart local p1
    :catch_3
    move-exception p0

    .line 438
    .local p0, e:Ljava/lang/StringIndexOutOfBoundsException;
    const-string p1, "common/Network"

    .end local p1
    const-string p2, "Failed to parse URI"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local p0           #e:Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v0       #conn:Ljava/net/HttpURLConnection;
    .restart local v1       #uri:Ljava/net/URI;
    .restart local v2       #value:Ljava/lang/String;
    .restart local p1
    .restart local p2       #i:I
    .restart local p3       #ret:Lcom/android/browser/common/Network$HttpHeaderInfo;
    :cond_7
    move-object p0, v1

    .end local v1           #uri:Ljava/net/URI;
    .local p0, uri:Ljava/net/URI;
    goto :goto_2
.end method

.method public static getHttpPostAsStream(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 10
    .parameter "context"
    .parameter "url"
    .parameter "data"
    .parameter
    .parameter "userAgent"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 330
    if-nez p1, :cond_0

    .line 331
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "url"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 333
    :cond_0
    move-object v3, p1

    .line 335
    .local v3, newUrl:Ljava/net/URL;
    const/4 v5, 0x0

    .line 336
    .local v5, responseStream:Ljava/io/InputStream;
    invoke-static {v8}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 337
    invoke-static {p0, v3}, Lcom/android/browser/common/Network;->getProxiableURLConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 338
    .local v0, conn:Ljava/net/HttpURLConnection;
    invoke-static {p0, v9}, Lcom/android/browser/common/Network;->getSocketTimeout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 339
    invoke-static {p0, v9}, Lcom/android/browser/common/Network;->getSocketTimeout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 340
    const-string v7, "POST"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 343
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 344
    const-string v7, "User-agent"

    invoke-virtual {v0, v7, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 348
    const-string v7, "Cookie"

    invoke-virtual {v0, v7, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 352
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 353
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 355
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/browser/common/Network;->safeGetResponseCode(Ljava/net/HttpURLConnection;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, responseCode:Ljava/lang/String;
    const-string v7, "ResponseCode"

    invoke-interface {p3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const/4 v1, 0x0

    .line 360
    .local v1, i:I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, value:Ljava/lang/String;
    if-nez v2, :cond_3

    if-nez v6, :cond_3

    .line 368
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 369
    return-object v5

    .line 365
    :cond_3
    invoke-interface {p3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getProxiableURLConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 10
    .parameter "context"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 601
    const/4 v4, 0x0

    .line 602
    .local v4, useProxy:Z
    const/4 v1, 0x0

    .line 603
    .local v1, host:Ljava/lang/String;
    const/4 v3, -0x1

    .line 606
    .local v3, port:I
    invoke-static {p0}, Lcom/android/browser/common/Network;->isCmwap(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 607
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    .line 609
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    if-lez v3, :cond_2

    move v4, v9

    .line 613
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 614
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v3

    .line 616
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p0}, Lcom/android/browser/common/Network;->isProxyEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v9

    .line 617
    :goto_1
    if-eqz v4, :cond_1

    invoke-static {p0}, Lcom/android/browser/common/Network;->isProxyForWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 618
    invoke-static {p0}, Lcom/android/browser/common/Network;->isWifi(Landroid/content/Context;)Z

    move-result v4

    .line 622
    :cond_1
    if-eqz v4, :cond_4

    .line 624
    :try_start_0
    new-instance v2, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 625
    .local v2, p:Ljava/net/Proxy;
    invoke-virtual {p1, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, p0

    .line 633
    .end local v2           #p:Ljava/net/Proxy;
    :goto_2
    return-object v5

    .restart local p0
    :cond_2
    move v4, v8

    .line 609
    goto :goto_0

    :cond_3
    move v4, v8

    .line 616
    goto :goto_1

    .line 626
    .end local p0
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 627
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "common/Network"

    const-string v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    const-string v6, "host=%s, port=%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v0, v9, v6}, Lcom/android/browser/common/ExceptionHandler;->sendMessageAsync(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 630
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    move-object v5, p0

    goto :goto_2

    .line 633
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local p0
    :cond_4
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/HttpURLConnection;

    move-object v5, p0

    goto :goto_2
.end method

.method public static getSocketTimeout(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "urlString"

    .prologue
    .line 525
    invoke-static {p0}, Lcom/android/browser/common/Network;->isCmwap(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const/16 v0, 0x7530

    .line 534
    :goto_0
    return v0

    .line 531
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "wap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 532
    :cond_1
    const/16 v0, 0x1f40

    goto :goto_0

    .line 534
    :cond_2
    const/16 v0, 0x3a98

    goto :goto_0
.end method

.method public static hasNetwork(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 754
    invoke-static {p0}, Lcom/android/browser/common/Network;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCmwap(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 758
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 759
    .local v6, cm:Landroid/net/ConnectivityManager;
    if-nez v6, :cond_0

    move v1, v4

    .line 767
    :goto_0
    return v1

    .line 761
    :cond_0
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 762
    .local v7, info:Landroid/net/NetworkInfo;
    if-nez v7, :cond_1

    move v1, v4

    .line 763
    goto :goto_0

    .line 764
    :cond_1
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, extraInfo:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_3

    :cond_2
    move v1, v4

    .line 766
    goto :goto_0

    .line 767
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    const-string v3, "wap"

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    goto :goto_0
.end method

.method private static final isProxyEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x1

    .line 643
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "http_proxy_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isProxyForWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 652
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "http_proxy_wifi_only"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 750
    invoke-static {p0}, Lcom/android/browser/common/Network;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .parameter "uri"

    .prologue
    .line 579
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    const/4 v2, 0x0

    .line 586
    :goto_0
    return-object v2

    .line 583
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Lcom/android/browser/common/FileNameUtils;->guessFileName(Ljava/lang/String;)Lcom/android/browser/common/FileNameUtils$UriAndFileName;

    move-result-object v1

    .line 586
    .local v1, uriAndFileName:Lcom/android/browser/common/FileNameUtils$UriAndFileName;
    iget-object v2, v1, Lcom/android/browser/common/FileNameUtils$UriAndFileName;->Uri:Ljava/net/URI;

    goto :goto_0
.end method

.method private static safeGetResponseCode(Ljava/net/HttpURLConnection;)I
    .locals 6
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1f4

    const-string v5, "common/Network"

    .line 539
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 547
    :goto_0
    return v1

    .line 540
    :catch_0
    move-exception v0

    .line 542
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "common/Network"

    const-string v1, "Bad response code"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 543
    goto :goto_0

    .line 544
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/browser/common/ExceptionHandler;->sendMessageAsync(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 546
    const-string v1, "common/Network"

    const-string v1, "NullPointerException"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 547
    goto :goto_0
.end method

.method public static stampDefaultHttpRequestProperty(Ljava/net/URLConnection;Ljava/lang/String;Ljava/net/URL;)V
    .locals 3
    .parameter "conn"
    .parameter "userAgent"
    .parameter "url"

    .prologue
    const-string v2, "User-Agent"

    .line 452
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 453
    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 454
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    :cond_0
    invoke-static {p1}, Lcom/android/browser/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    const-string v0, "User-Agent"

    invoke-virtual {p0, v2, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_1
    :goto_0
    return-void

    .line 458
    :cond_2
    const-string v0, "User-Agent"

    const-string v0, "Mozilla/5.0 (Linux; U; Android 2.2; zh-cn;) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    invoke-virtual {p0, v2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static tryDetectCharsetEncoding(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "url"
    .parameter "userAgent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 232
    if-nez p1, :cond_0

    .line 233
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "url"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 235
    :cond_0
    invoke-static {v8}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 236
    invoke-static {p0, p1}, Lcom/android/browser/common/Network;->getProxiableURLConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 237
    .local v0, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/browser/common/Network;->getSocketTimeout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 238
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/browser/common/Network;->getSocketTimeout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 239
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 240
    const-string v6, "User-agent"

    invoke-virtual {v0, v6, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_1
    const/4 v5, 0x0

    .line 247
    .local v5, ret:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, contentType:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 249
    invoke-static {v1}, Lcom/android/browser/common/Network;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 254
    sget-object v6, Lcom/android/browser/common/Network;->ContentTypePattern_MimeType:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 255
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_3

    .line 256
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, mimetype:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 258
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 259
    const-string v6, "application/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "application/xml"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "+xml"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 262
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 263
    .local v4, responseStream:Ljava/io/InputStream;
    if-eqz v4, :cond_3

    .line 264
    invoke-static {v4}, Lcom/android/browser/common/Network;->getCharsetFromXmlStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 265
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 273
    .end local v2           #matcher:Ljava/util/regex/Matcher;
    .end local v3           #mimetype:Ljava/lang/String;
    .end local v4           #responseStream:Ljava/io/InputStream;
    :cond_3
    return-object v5
.end method
