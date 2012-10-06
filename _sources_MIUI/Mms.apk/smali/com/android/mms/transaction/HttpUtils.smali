.class public Lcom/android/mms/transaction/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

.field private static final mRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/android/mms/transaction/HttpUtils;->getHttpAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method protected static abortHttpConnection(J)Z
    .locals 5
    .parameter "token"

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, req:Lorg/apache/http/client/methods/HttpRequestBase;
    sget-object v3, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 263
    :try_start_0
    sget-object v2, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    move-object v1, v0

    .line 264
    monitor-exit v3

    .line 265
    if-nez v1, :cond_0

    .line 266
    const/4 v2, 0x0

    .line 269
    :goto_0
    return v2

    .line 264
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 268
    :cond_0
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 269
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 318
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 326
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .locals 7
    .parameter "context"

    .prologue
    const-string v6, "Mms:transaction"

    .line 282
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, userAgent:Ljava/lang/String;
    invoke-static {v3, p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 284
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 285
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpSocketTimeout()I

    move-result v2

    .line 290
    .local v2, soTimeout:I
    const-string v4, "Mms:transaction"

    const/4 v4, 0x3

    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    const-string v4, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HttpUtils] createHttpClient w/ socket timeout "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UA="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 295
    return-object v0
.end method

.method private static getHttpAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 304
    .local v1, locale:Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 307
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 309
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 313
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4
    .parameter "exception"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 278
    throw v0
.end method

.method protected static httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B
    .locals 5
    .parameter "context"
    .parameter "token"
    .parameter "url"
    .parameter "pdu"
    .parameter "method"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    if-nez p3, :cond_0

    .line 100
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "URL must not be null."

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    .restart local p0
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    .line 121
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, hostUrl:Ljava/net/URI;
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v1

    .end local v1           #hostUrl:Ljava/net/URI;
    const-string v4, "http"

    invoke-direct {v3, v2, v1, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 126
    .local v3, target:Lorg/apache/http/HttpHost;
    invoke-static {p0}, Lcom/android/mms/transaction/HttpUtils;->createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, req:Lorg/apache/http/client/methods/HttpRequestBase;
    packed-switch p5, :pswitch_data_0

    .line 143
    const-string p0, "Mms:transaction"

    .end local p0
    new-instance p4, Ljava/lang/StringBuilder;

    .end local p4
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Unknown HTTP method: "

    .end local p6
    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ". Must be one of POST["

    .end local p5
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const/4 p5, 0x1

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "] or GET["

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const/4 p5, 0x2

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "]."

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 146
    const/4 p0, 0x0

    .line 248
    sget-object p3, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    .end local p3
    monitor-enter p3

    .line 249
    const-wide/16 p4, 0x0

    cmp-long p4, p1, p4

    if-lez p4, :cond_1

    .line 250
    :try_start_1
    sget-object p4, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1
    invoke-virtual {p4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_2
    move-object p1, p0

    move-object p0, v0

    .line 257
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local v1           #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v3           #target:Lorg/apache/http/HttpHost;
    .end local p7
    .end local p8
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    :goto_0
    return-object p1

    .line 130
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v3       #target:Lorg/apache/http/HttpHost;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p3
    .restart local p4
    .restart local p5
    .restart local p6
    .restart local p7
    .restart local p8
    :pswitch_0
    :try_start_2
    new-instance p5, Lcom/android/mms/transaction/ProgressCallbackEntity;

    .end local p5
    invoke-direct {p5, p0, p1, p2, p4}, Lcom/android/mms/transaction/ProgressCallbackEntity;-><init>(Landroid/content/Context;J[B)V

    .line 133
    .local p5, entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    const-string p4, "application/vnd.wap.mms-message"

    .end local p4
    invoke-virtual {p5, p4}, Lcom/android/mms/transaction/ProgressCallbackEntity;->setContentType(Ljava/lang/String;)V

    .line 135
    new-instance p4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p4, p3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 136
    .local p4, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {p4, p5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 137
    move-object p4, p4

    .end local v1           #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .local p4, req:Lorg/apache/http/client/methods/HttpRequestBase;
    move-object v1, p4

    .line 150
    .end local p4           #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .end local p5           #entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    .restart local v1       #req:Lorg/apache/http/client/methods/HttpRequestBase;
    :goto_1
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p4

    .line 151
    .local p4, params:Lorg/apache/http/params/HttpParams;
    if-eqz p6, :cond_3

    .line 152
    new-instance p5, Lorg/apache/http/HttpHost;

    invoke-direct {p5, p7, p8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {p4, p5}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 155
    :cond_3
    invoke-virtual {v1, p4}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 158
    const-string p4, "Accept"

    .end local p4           #params:Lorg/apache/http/params/HttpParams;
    const-string p5, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {v1, p4, p5}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfTagName()Ljava/lang/String;

    move-result-object p4

    .line 161
    .local p4, xWapProfileTagName:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object p5

    .line 163
    .local p5, xWapProfileUrl:Ljava/lang/String;
    if-eqz p5, :cond_5

    .line 164
    const-string p6, "Mms:transaction"

    .end local p6
    const/4 p7, 0x2

    invoke-static {p6, p7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local p7
    move-result p6

    if-eqz p6, :cond_4

    .line 165
    const-string p6, "Mms:transaction"

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "[HttpUtils] httpConn: xWapProfUrl="

    .end local p8
    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p6, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_4
    invoke-virtual {v1, p4, p5}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParams()Ljava/lang/String;

    move-result-object p4

    .line 179
    .local p4, extraHttpParams:Ljava/lang/String;
    if-eqz p4, :cond_8

    .line 180
    const-string p5, "phone"

    .end local p5           #xWapProfileUrl:Ljava/lang/String;
    invoke-virtual {p0, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p7

    .line 183
    .local p7, line1Number:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParamsLine1Key()Ljava/lang/String;

    move-result-object p6

    .line 184
    .local p6, line1Key:Ljava/lang/String;
    const-string p0, "\\|"

    invoke-virtual {p4, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 186
    .local p0, paramList:[Ljava/lang/String;
    move-object p0, p0

    .local p0, arr$:[Ljava/lang/String;
    array-length p5, p0

    .local p5, len$:I
    const/4 p4, 0x0

    .local p4, i$:I
    :goto_2
    if-ge p4, p5, :cond_8

    aget-object p8, p0, p4

    .line 187
    .local p8, paramPair:Ljava/lang/String;
    const-string v2, ":"

    const/4 v4, 0x2

    invoke-virtual {p8, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, splitPair:[Ljava/lang/String;
    array-length p8, v2

    .end local p8           #paramPair:Ljava/lang/String;
    const/4 v4, 0x2

    if-ne p8, v4, :cond_7

    .line 190
    const/4 p8, 0x0

    aget-object p8, v2, p8

    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p8

    .line 191
    .local p8, name:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v2, v2, v4

    .end local v2           #splitPair:[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, value:Ljava/lang/String;
    if-eqz p6, :cond_6

    .line 194
    invoke-virtual {v2, p6, p7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 196
    :cond_6
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 197
    invoke-virtual {v1, p8, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v2           #value:Ljava/lang/String;
    .end local p8           #name:Ljava/lang/String;
    :cond_7
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 140
    .local p0, context:Landroid/content/Context;
    .local p4, pdu:[B
    .local p5, method:I
    .local p6, isProxySet:Z
    .local p7, proxyHost:Ljava/lang/String;
    .local p8, proxyPort:I
    :pswitch_1
    new-instance p4, Lorg/apache/http/client/methods/HttpGet;

    .end local p4           #pdu:[B
    invoke-direct {p4, p3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .end local v1           #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .local p4, req:Lorg/apache/http/client/methods/HttpRequestBase;
    move-object v1, p4

    .line 141
    .end local p4           #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v1       #req:Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_1

    .line 252
    .end local p0           #context:Landroid/content/Context;
    .end local p1
    .end local p3
    .end local p5           #method:I
    .end local p6           #isProxySet:Z
    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 202
    .end local p7           #proxyHost:Ljava/lang/String;
    .end local p8           #proxyPort:I
    .restart local p1
    .restart local p3
    :cond_8
    :try_start_4
    const-string p0, "Accept-Language"

    sget-object p4, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v1, p0, p4}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object p0, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 205
    :try_start_5
    sget-object p4, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 207
    :try_start_6
    invoke-virtual {v0, v3, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 208
    .local p0, response:Lorg/apache/http/HttpResponse;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p4

    .line 209
    .local p4, status:Lorg/apache/http/StatusLine;
    invoke-interface {p4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p5

    const/16 p6, 0xc8

    if-eq p5, p6, :cond_c

    .line 210
    new-instance p0, Ljava/io/IOException;

    .end local p0           #response:Lorg/apache/http/HttpResponse;
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "HTTP error: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-interface {p4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object p4

    .end local p4           #status:Lorg/apache/http/StatusLine;
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 236
    .end local v1           #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v3           #target:Lorg/apache/http/HttpHost;
    :catch_0
    move-exception p0

    move-object p4, p0

    move-object p0, v0

    .line 237
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p4, e:Ljava/net/URISyntaxException;
    :try_start_7
    invoke-static {p4, p3}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    .line 248
    sget-object p3, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    .end local p3
    monitor-enter p3

    .line 249
    const-wide/16 p4, 0x0

    cmp-long p4, p1, p4

    if-lez p4, :cond_9

    .line 250
    .end local p4           #e:Ljava/net/URISyntaxException;
    :try_start_8
    sget-object p4, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1
    invoke-virtual {p4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_9
    monitor-exit p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 253
    if-eqz p0, :cond_a

    .line 254
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 257
    :cond_a
    :goto_3
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 206
    .end local p0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v3       #target:Lorg/apache/http/HttpHost;
    .restart local p1
    .restart local p3
    :catchall_1
    move-exception p4

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 238
    .end local v1           #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v3           #target:Lorg/apache/http/HttpHost;
    :catch_1
    move-exception p0

    move-object p4, p0

    move-object p0, v0

    .line 239
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local p0       #client:Landroid/net/http/AndroidHttpClient;
    .local p4, e:Ljava/lang/IllegalStateException;
    :try_start_b
    invoke-static {p4, p3}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    .line 248
    sget-object p3, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    .end local p3
    monitor-enter p3

    .line 249
    const-wide/16 p4, 0x0

    cmp-long p4, p1, p4

    if-lez p4, :cond_b

    .line 250
    .end local p4           #e:Ljava/lang/IllegalStateException;
    :try_start_c
    sget-object p4, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1
    invoke-virtual {p4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_b
    monitor-exit p3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 253
    if-eqz p0, :cond_a

    .line 254
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_3

    .line 212
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v3       #target:Lorg/apache/http/HttpHost;
    .local p0, response:Lorg/apache/http/HttpResponse;
    .restart local p1
    .restart local p3
    .local p4, status:Lorg/apache/http/StatusLine;
    :cond_c
    :try_start_d
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    move-result-object p5

    .line 213
    .local p5, entity:Lorg/apache/http/HttpEntity;
    const/4 p0, 0x0

    .line 214
    .local p0, body:[B
    if-eqz p5, :cond_e

    .line 216
    :try_start_e
    invoke-interface {p5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p6

    const-wide/16 v1, 0x0

    cmp-long p4, p6, v1

    if-lez p4, :cond_d

    .line 217
    .end local v1           #req:Lorg/apache/http/client/methods/HttpRequestBase;
    .end local p4           #status:Lorg/apache/http/StatusLine;
    invoke-interface {p5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p6

    long-to-int p4, p6

    new-array p0, p4, [B

    .line 218
    new-instance p4, Ljava/io/DataInputStream;

    invoke-interface {p5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p6

    invoke-direct {p4, p6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 220
    .local p4, dis:Ljava/io/DataInputStream;
    :try_start_f
    invoke-virtual {p4, p0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 223
    :try_start_10
    invoke-virtual {p4}, Ljava/io/DataInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    .line 230
    .end local p4           #dis:Ljava/io/DataInputStream;
    :cond_d
    :goto_4
    if-eqz p5, :cond_e

    .line 231
    :try_start_11
    invoke-interface {p5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    .line 248
    :cond_e
    sget-object p3, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    .end local p3
    monitor-enter p3

    .line 249
    const-wide/16 p4, 0x0

    cmp-long p4, p1, p4

    if-lez p4, :cond_f

    .line 250
    :try_start_12
    sget-object p4, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1
    invoke-virtual {p4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_f
    monitor-exit p3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 253
    if-eqz v0, :cond_10

    .line 254
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_10
    move-object p1, p0

    move-object p0, v0

    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    goto/16 :goto_0

    .line 224
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .local p0, body:[B
    .restart local p1
    .restart local p3
    .restart local p4       #dis:Ljava/io/DataInputStream;
    :catch_2
    move-exception p4

    .line 225
    .local p4, e:Ljava/io/IOException;
    :try_start_13
    const-string p6, "Mms:transaction"

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "Error closing input stream: "

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-virtual {p4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p4

    .end local p4           #e:Ljava/io/IOException;
    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p6, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_4

    .line 230
    :catchall_2
    move-exception p4

    if-eqz p5, :cond_11

    .line 231
    :try_start_14
    invoke-interface {p5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_11
    throw p4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a
    .catch Ljava/net/URISyntaxException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/net/SocketException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    .line 240
    .end local v3           #target:Lorg/apache/http/HttpHost;
    .end local p0           #body:[B
    .end local p5           #entity:Lorg/apache/http/HttpEntity;
    :catch_3
    move-exception p0

    move-object p4, p0

    move-object p0, v0

    .line 241
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p4, e:Ljava/lang/IllegalArgumentException;
    :try_start_15
    invoke-static {p4, p3}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 248
    sget-object p3, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    .end local p3
    monitor-enter p3

    .line 249
    const-wide/16 p4, 0x0

    cmp-long p4, p1, p4

    if-lez p4, :cond_12

    .line 250
    .end local p4           #e:Ljava/lang/IllegalArgumentException;
    :try_start_16
    sget-object p4, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1
    invoke-virtual {p4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_12
    monitor-exit p3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 253
    if-eqz p0, :cond_a

    .line 254
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_3

    .line 222
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v3       #target:Lorg/apache/http/HttpHost;
    .local p0, body:[B
    .restart local p1
    .restart local p3
    .local p4, dis:Ljava/io/DataInputStream;
    .restart local p5       #entity:Lorg/apache/http/HttpEntity;
    :catchall_3
    move-exception p6

    .line 223
    :try_start_17
    invoke-virtual {p4}, Ljava/io/DataInputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_4

    .line 226
    .end local p4           #dis:Ljava/io/DataInputStream;
    :goto_5
    :try_start_18
    throw p6

    .line 224
    .restart local p4       #dis:Ljava/io/DataInputStream;
    :catch_4
    move-exception p4

    .line 225
    .local p4, e:Ljava/io/IOException;
    const-string p7, "Mms:transaction"

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error closing input stream: "

    invoke-virtual {p8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    invoke-virtual {p4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p4

    .end local p4           #e:Ljava/io/IOException;
    invoke-virtual {p8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p7, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto :goto_5

    .line 252
    .end local p0           #body:[B
    .end local p1
    .end local p3
    :catchall_4
    move-exception p0

    :try_start_19
    monitor-exit p3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    throw p0

    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local v3           #target:Lorg/apache/http/HttpHost;
    .end local p5           #entity:Lorg/apache/http/HttpEntity;
    :catchall_5
    move-exception p0

    :try_start_1a
    monitor-exit p3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    throw p0

    :catchall_6
    move-exception p0

    :try_start_1b
    monitor-exit p3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    throw p0

    :catchall_7
    move-exception p0

    :try_start_1c
    monitor-exit p3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    throw p0

    .line 242
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local p1
    .restart local p3
    :catch_5
    move-exception p0

    move-object p4, p0

    move-object p0, v0

    .line 243
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p4, e:Ljava/net/SocketException;
    :try_start_1d
    invoke-static {p4, p3}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    .line 248
    sget-object p3, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    .end local p3
    monitor-enter p3

    .line 249
    const-wide/16 p4, 0x0

    cmp-long p4, p1, p4

    if-lez p4, :cond_13

    .line 250
    .end local p4           #e:Ljava/net/SocketException;
    :try_start_1e
    sget-object p4, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1
    invoke-virtual {p4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_13
    monitor-exit p3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 253
    if-eqz p0, :cond_a

    .line 254
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_3

    .line 252
    .end local p0           #client:Landroid/net/http/AndroidHttpClient;
    :catchall_8
    move-exception p0

    :try_start_1f
    monitor-exit p3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    throw p0

    .line 244
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local p1
    .restart local p3
    :catch_6
    move-exception p0

    move-object p4, p0

    move-object p0, v0

    .line 245
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local p0       #client:Landroid/net/http/AndroidHttpClient;
    .local p4, e:Ljava/lang/Exception;
    :try_start_20
    invoke-static {p4, p3}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    .line 248
    sget-object p3, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    .end local p3
    monitor-enter p3

    .line 249
    const-wide/16 p4, 0x0

    cmp-long p4, p1, p4

    if-lez p4, :cond_14

    .line 250
    .end local p4           #e:Ljava/lang/Exception;
    :try_start_21
    sget-object p4, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1
    invoke-virtual {p4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_14
    monitor-exit p3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    .line 253
    if-eqz p0, :cond_a

    .line 254
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_3

    .line 252
    .end local p0           #client:Landroid/net/http/AndroidHttpClient;
    :catchall_9
    move-exception p0

    :try_start_22
    monitor-exit p3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    throw p0

    .line 248
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local p1
    .restart local p3
    :catchall_a
    move-exception p0

    move-object p3, p0

    move-object p0, v0

    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local p3
    .restart local p0       #client:Landroid/net/http/AndroidHttpClient;
    :goto_6
    sget-object p4, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    monitor-enter p4

    .line 249
    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-lez p5, :cond_15

    .line 250
    :try_start_23
    sget-object p5, Lcom/android/mms/transaction/HttpUtils;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1
    invoke-virtual {p5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_15
    monitor-exit p4
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    .line 253
    if-eqz p0, :cond_16

    .line 254
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_16
    throw p3

    .line 252
    .end local p0           #client:Landroid/net/http/AndroidHttpClient;
    :catchall_b
    move-exception p0

    :try_start_24
    monitor-exit p4
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    throw p0

    .line 248
    .restart local p0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local p1
    .restart local p3
    :catchall_c
    move-exception p3

    goto :goto_6

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
