.class public Lcom/android/browser/model/BaiduSuggestionDataProvider;
.super Landroid/content/ContentProvider;
.source "BaiduSuggestionDataProvider.java"


# static fields
.field public static final Authority:Ljava/lang/String; = "com.android.browser.baidu_suggestion"

.field public static final BAIDU_SUGGESTION_URI:Landroid/net/Uri; = null

.field public static final DefaultSelection:Ljava/lang/String; = "url LIKE ?"

.field private static final HTTP_TIMEOUT:Ljava/lang/String; = "http.connection-manager.timeout"

.field private static final HTTP_TIMEOUT_MS:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "BaiduSuggestionDataProvider"

.field private static final USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Linux; U; Android 2.2; en-gb; Nexus One Build/FRF50)AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

.field public static final mBaiduSearchUri:Ljava/lang/String; = "http://m.baidu.com/s?from=1269a&word="


# instance fields
.field private mBaiduSuggestUri:Ljava/lang/String;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const-string v0, "content://cn.miren.baidu_suggestion"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/model/BaiduSuggestionDataProvider;->BAIDU_SUGGESTION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 164
    const-string v0, "http://suggestion.baidu.com/su?p=3&t=%s&wd=%s"

    iput-object v0, p0, Lcom/android/browser/model/BaiduSuggestionDataProvider;->mBaiduSuggestUri:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/browser/model/BaiduSuggestionDataProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 135
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 136
    const/4 v1, 0x0

    .line 138
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0
.end method

.method private final getSuggestionUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "query"

    .prologue
    .line 143
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 148
    iget-object v1, p0, Lcom/android/browser/model/BaiduSuggestionDataProvider;->mBaiduSuggestUri:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 144
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 145
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "BaiduSuggestionDataProvider"

    const-string v2, "Found error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNetworkConnected()Z
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/browser/model/BaiduSuggestionDataProvider;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 130
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 52
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    .line 62
    const-string v1, "Mozilla/5.0 (Linux; U; Android 2.2; en-gb; Nexus One Build/FRF50)AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/model/BaiduSuggestionDataProvider;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 63
    iget-object v1, p0, Lcom/android/browser/model/BaiduSuggestionDataProvider;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 64
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const-string v1, "http.connection-manager.timeout"

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lorg/apache/http/params/HttpParams;

    .line 65
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 71
    if-eqz p4, :cond_0

    const/4 v0, 0x0

    aget-object v0, p4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    .line 73
    :cond_1
    const/4 v0, 0x0

    aget-object v10, p4, v0

    .line 75
    .local v10, query:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/browser/model/BaiduSuggestionDataProvider;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    const-string v0, "BaiduSuggestionDataProvider"

    const-string v1, "Not connected to network."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_2
    :try_start_0
    invoke-direct {p0, v10}, Lcom/android/browser/model/BaiduSuggestionDataProvider;->getSuggestionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 81
    .local v14, suggestUri:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_3
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v9, v14}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 87
    .local v9, method:Lorg/apache/http/client/methods/HttpGet;
    iget-object v0, p0, Lcom/android/browser/model/BaiduSuggestionDataProvider;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 88
    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5

    .line 90
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "GB2312"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 96
    .local v13, ret:Ljava/lang/String;
    const/16 v0, 0x7b

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 97
    .local v8, jsonStartIndex:I
    const/16 v0, 0x7d

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 98
    .local v7, jsonEndIndex:I
    const/4 v0, -0x1

    if-ge v0, v8, :cond_4

    const/4 v0, -0x1

    if-ge v0, v7, :cond_4

    .line 99
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v13, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 100
    :cond_4
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    .local v12, results:Lorg/json/JSONObject;
    const-string v0, "s"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 102
    .local v1, suggest:Lorg/json/JSONArray;
    new-instance v0, Lcom/android/browser/model/JSONArraySuggestionCursor;

    invoke-virtual {p0}, Lcom/android/browser/model/BaiduSuggestionDataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090024

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f020044

    const-string v4, "http://m.baidu.com/s?from=1269a&word="

    const-string v5, "gb2312"

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/model/JSONArraySuggestionCursor;-><init>(Lorg/json/JSONArray;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 111
    .end local v1           #suggest:Lorg/json/JSONArray;
    .end local v7           #jsonEndIndex:I
    .end local v8           #jsonStartIndex:I
    .end local v9           #method:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v12           #results:Lorg/json/JSONObject;
    .end local v13           #ret:Ljava/lang/String;
    .end local v14           #suggestUri:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 112
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    const-string v0, "BaiduSuggestionDataProvider"

    const-string v1, "Error"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :cond_5
    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 113
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 114
    .local v6, e:Ljava/io/IOException;
    const-string v0, "BaiduSuggestionDataProvider"

    const-string v1, "Error"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 115
    .end local v6           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 116
    .local v6, e:Lorg/json/JSONException;
    const-string v0, "BaiduSuggestionDataProvider"

    const-string v1, "Error"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
