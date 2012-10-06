.class public Lcom/android/browser/util/ReadingDataUtil;
.super Ljava/lang/Object;
.source "ReadingDataUtil.java"


# static fields
.field private static final ERROR_CODE_NOT_FOUND_URL:I = -0x1

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final sGetMpageUrl:Ljava/lang/String; = "http://reader.miren.cn/clientaccess/v1/apis/reader/mcache/getmpage.php"

.field private static final sGetMpageUrl_Dev:Ljava/lang/String; = "http://reader.miren.cn/clientaccess/v1-dev/apis/reader/mcache/getmpage.php"

.field private static final sPostMpageUrl:Ljava/lang/String; = "http://reader.miren.cn/clientaccess/v1/apis/reader/mcache/uploadmpage.php"

.field private static final sPostMpageUrl_Dev:Ljava/lang/String; = "http://reader.miren.cn/clientaccess/v1-dev/apis/reader/mcache/uploadmpage.php"

.field private static final sSignSuffix:Ljava/lang/String; = "de916b1a-85b5-4be7-a368-c25085926f92"

.field private static final sUseDevelopementServer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 266
    const-string v0, "util/ReadingDataUtil"

    sput-object v0, Lcom/android/browser/util/ReadingDataUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/browser/util/ReadingDataUtil;->getGetMpageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/browser/util/ReadingDataUtil;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/android/browser/controller/ReadingModeController$ReadingData;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3}, Lcom/android/browser/util/ReadingDataUtil;->uploadMcacheData(Landroid/content/Context;Lcom/android/browser/controller/ReadingModeController$ReadingData;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getGetMpageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const-string v0, "http://reader.miren.cn/clientaccess/v1/apis/reader/mcache/getmpage.php"

    return-object v0
.end method

.method public static getMcacheData(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .locals 12
    .parameter "context"
    .parameter "url"

    .prologue
    const/4 v10, 0x0

    const-string v11, "ignored error"

    .line 116
    if-nez p0, :cond_0

    .line 117
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "context"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 118
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v10

    .line 152
    :goto_0
    return-object v5

    .line 122
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, dat:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "uuid"

    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "flag"

    const-string v7, "verbose"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "url"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "sign"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "de916b1a-85b5-4be7-a368-c25085926f92"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/browser/common/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-static {}, Lcom/android/browser/util/ReadingDataUtil;->getGetMpageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/browser/common/Network;->doHttpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, ret:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v10

    .line 130
    goto :goto_0

    .line 132
    :cond_2
    invoke-static {v4}, Lcom/android/browser/controller/ReadingModeController$ReadingData;->fromCacheString(Ljava/lang/String;)Lcom/android/browser/controller/ReadingModeController$ReadingData;

    move-result-object v3

    .line 133
    .local v3, result:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    if-nez v3, :cond_4

    .line 134
    new-instance v2, Lcom/android/browser/util/ResultCodeXmlHandler;

    invoke-direct {v2}, Lcom/android/browser/util/ResultCodeXmlHandler;-><init>()V

    .line 135
    .local v2, handler:Lcom/android/browser/util/ResultCodeXmlHandler;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v5, v2}, Lcom/android/browser/common/SaxXmlParserWrapper;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 136
    invoke-virtual {v2}, Lcom/android/browser/util/ResultCodeXmlHandler;->isErrorResult()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 137
    sget-boolean v5, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-eqz v5, :cond_3

    .line 138
    sget-object v5, Lcom/android/browser/util/ReadingDataUtil;->LOG_TAG:Ljava/lang/String;

    const-string v6, "error, code=\'%d\', desc=\'%s\': %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/android/browser/util/ResultCodeXmlHandler;->getCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/android/browser/util/ResultCodeXmlHandler;->getDesc()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v5, v10

    .line 141
    goto/16 :goto_0

    .line 140
    :cond_3
    sget-object v5, Lcom/android/browser/util/ReadingDataUtil;->LOG_TAG:Ljava/lang/String;

    const-string v6, "error, code=\'%d\', desc=\'%s\'."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/android/browser/util/ResultCodeXmlHandler;->getCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/android/browser/util/ResultCodeXmlHandler;->getDesc()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/browser/common/SaxXmlParserWrapper$ConfigParserException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 145
    .end local v0           #dat:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v2           #handler:Lcom/android/browser/util/ResultCodeXmlHandler;
    .end local v3           #result:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .end local v4           #ret:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 146
    .local v1, e:Ljava/lang/OutOfMemoryError;
    sget-object v5, Lcom/android/browser/util/ReadingDataUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignored error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :goto_2
    move-object v5, v10

    .line 152
    goto/16 :goto_0

    .restart local v0       #dat:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v3       #result:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .restart local v4       #ret:Ljava/lang/String;
    :cond_4
    move-object v5, v3

    .line 144
    goto/16 :goto_0

    .line 147
    .end local v0           #dat:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #result:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .end local v4           #ret:Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 148
    .local v1, e:Ljava/io/IOException;
    sget-object v5, Lcom/android/browser/util/ReadingDataUtil;->LOG_TAG:Ljava/lang/String;

    const-string v6, "ignored error"

    invoke-static {v5, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 149
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 150
    .local v1, e:Lcom/android/browser/common/SaxXmlParserWrapper$ConfigParserException;
    sget-object v5, Lcom/android/browser/util/ReadingDataUtil;->LOG_TAG:Ljava/lang/String;

    const-string v6, "ignored error"

    invoke-static {v5, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static final getPostMpageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const-string v0, "http://reader.miren.cn/clientaccess/v1/apis/reader/mcache/uploadmpage.php"

    return-object v0
.end method

.method public static trySendMcacheDataAsync(Landroid/content/Context;Lcom/android/browser/controller/ReadingModeController$ReadingData;I)V
    .locals 2
    .parameter "context"
    .parameter "data"
    .parameter "keepAliveSeconds"

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    if-nez p1, :cond_1

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    :cond_2
    :goto_0
    return-void

    .line 51
    :cond_3
    if-lez p2, :cond_2

    .line 53
    invoke-static {p0}, Lcom/android/browser/common/Network;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-eqz v0, :cond_2

    .line 56
    :cond_4
    new-instance v0, Lcom/android/browser/util/ReadingDataUtil$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/browser/util/ReadingDataUtil$1;-><init>(Landroid/content/Context;Lcom/android/browser/controller/ReadingModeController$ReadingData;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/util/ReadingDataUtil$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static uploadMcacheData(Landroid/content/Context;Lcom/android/browser/controller/ReadingModeController$ReadingData;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "data"
    .parameter "content"
    .parameter "keepAliveSeconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const-string v0, "\r\n"

    .line 159
    .local v0, lineEnd:Ljava/lang/String;
    const-string v0, "--"

    .line 160
    .local v0, twoHyphens:Ljava/lang/String;
    const-string v0, "ef62260035474a13aa1e0e283ac13a59"

    .line 161
    .local v0, boundary:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #boundary:Ljava/lang/String;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".m.gz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, filename:Ljava/lang/String;
    sget-boolean v0, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/android/browser/util/ReadingDataUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reading mode is uploading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 171
    .local v0, dos:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/browser/util/ReadingDataUtil;->getPostMpageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .local v2, sbParams:Ljava/lang/StringBuilder;
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getUserIdQueryString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v3, p1, Lcom/android/browser/controller/ReadingModeController$ReadingData;->imageUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&image_url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/browser/controller/ReadingModeController$ReadingData;->imageUrl:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&keep_alive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    .end local p3
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    sget-boolean p3, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-eqz p3, :cond_3

    .line 180
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&client_id="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XiamiRobot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "miuibrowser"

    invoke-static {p0, v4}, Lcom/android/browser/common/Misc;->getMyVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&sign="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/browser/common/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "de916b1a-85b5-4be7-a368-c25085926f92"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/browser/common/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string p1, "\r\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 p3, 0x400

    invoke-direct {p1, p3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 188
    .local p1, byteArrayStream:Ljava/io/ByteArrayOutputStream;
    new-instance p3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p3, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 189
    .local p3, zipOutput:Ljava/util/zip/GZIPOutputStream;
    const-string v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .end local p2
    invoke-virtual {p3, p2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 190
    invoke-virtual {p3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 191
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 192
    .local p2, contentBytes:[B
    invoke-virtual {p3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 194
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 195
    .end local p1           #byteArrayStream:Ljava/io/ByteArrayOutputStream;
    new-instance p1, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .end local p3           #zipOutput:Ljava/util/zip/GZIPOutputStream;
    invoke-direct {p1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/browser/common/Network;->getProxiableURLConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 196
    .local p1, conn:Ljava/net/HttpURLConnection;
    invoke-static {}, Lcom/android/browser/util/ReadingDataUtil;->getPostMpageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/android/browser/common/Network;->getSocketTimeout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 197
    invoke-static {}, Lcom/android/browser/util/ReadingDataUtil;->getPostMpageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/android/browser/common/Network;->getSocketTimeout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    .end local p0
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 200
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 201
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 202
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 205
    const-string p0, "POST"

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 206
    const-string p0, "Connection"

    const-string p3, "Keep-Alive"

    invoke-virtual {p1, p0, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string p0, "Content-Type"

    const-string p3, "multipart/form-data;boundary=ef62260035474a13aa1e0e283ac13a59"

    invoke-virtual {p1, p0, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string p0, "ef62260035474a13aa1e0e283ac13a59"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x4b

    .line 210
    .local p0, EXTRA_LEN:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p0, p3

    array-length p3, p2

    .end local p0           #EXTRA_LEN:I
    add-int/2addr p0, p3

    .line 211
    .local p0, len:I
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 213
    new-instance p0, Ljava/io/DataOutputStream;

    .end local p0           #len:I
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p0, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .local p0, dos:Ljava/io/DataOutputStream;
    :try_start_1
    const-string p3, "--ef62260035474a13aa1e0e283ac13a59\r\n"

    invoke-virtual {p0, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 215
    const-string p3, "Content-Disposition: form-data; name=\"mcgzdata\";filename=\"%s\"%s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .end local v2           #sbParams:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    const-string v2, "\r\n"

    .end local v1           #filename:Ljava/lang/String;
    aput-object v2, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 216
    const-string p3, "\r\n"

    invoke-virtual {p0, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 217
    const/4 p3, 0x0

    array-length v0, p2

    invoke-virtual {p0, p2, p3, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 220
    const-string p2, "\r\n"

    .end local p2           #contentBytes:[B
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 221
    const-string p2, "--"

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 222
    const-string p2, "ef62260035474a13aa1e0e283ac13a59"

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 223
    const-string p2, "--"

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 224
    const-string p2, "\r\n"

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->flush()V

    .line 228
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->close()V

    .line 229
    const/4 p0, 0x0

    .line 231
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .end local p1           #conn:Ljava/net/HttpURLConnection;
    invoke-static {p1}, Lcom/android/browser/common/Strings;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p1

    .line 233
    if-eqz p0, :cond_2

    .line 234
    throw p0

    :cond_2
    return-object p1

    .line 182
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    .restart local v1       #filename:Ljava/lang/String;
    .restart local v2       #sbParams:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .local p2, content:Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&client_id="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "miuibrowser"

    invoke-static {p0, v4}, Lcom/android/browser/common/Misc;->getMyVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 233
    .end local v2           #sbParams:Ljava/lang/StringBuilder;
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .end local p2           #content:Ljava/lang/String;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #dos:Ljava/io/DataOutputStream;
    .end local v1           #filename:Ljava/lang/String;
    .local p0, dos:Ljava/io/DataOutputStream;
    :goto_1
    if-eqz p0, :cond_4

    .line 234
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->close()V

    :cond_4
    throw p1

    .line 233
    :catchall_1
    move-exception p1

    goto :goto_1
.end method
