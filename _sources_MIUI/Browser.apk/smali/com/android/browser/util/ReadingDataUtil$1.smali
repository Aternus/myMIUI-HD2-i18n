.class final Lcom/android/browser/util/ReadingDataUtil$1;
.super Landroid/os/AsyncTask;
.source "ReadingDataUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/util/ReadingDataUtil;->trySendMcacheDataAsync(Landroid/content/Context;Lcom/android/browser/controller/ReadingModeController$ReadingData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Lcom/android/browser/controller/ReadingModeController$ReadingData;

.field final synthetic val$keepAliveSeconds:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/browser/controller/ReadingModeController$ReadingData;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/browser/util/ReadingDataUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/browser/util/ReadingDataUtil$1;->val$data:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    iput p3, p0, Lcom/android/browser/util/ReadingDataUtil$1;->val$keepAliveSeconds:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/util/ReadingDataUtil$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v11, 0x0

    const-string v12, "ignored error"

    .line 59
    iget-object v6, p0, Lcom/android/browser/util/ReadingDataUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/browser/common/Network;->isWifi(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-nez v6, :cond_0

    move-object v6, v11

    .line 106
    :goto_0
    return-object v6

    .line 63
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v1, dat:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "uuid"

    iget-object v8, p0, Lcom/android/browser/util/ReadingDataUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/browser/common/UserInfo;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "flag"

    const-string v8, "simple"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "url"

    iget-object v8, p0, Lcom/android/browser/util/ReadingDataUtil$1;->val$data:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    iget-object v8, v8, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "sign"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/browser/util/ReadingDataUtil$1;->val$data:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    iget-object v9, v9, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "de916b1a-85b5-4be7-a368-c25085926f92"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/browser/common/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    #calls: Lcom/android/browser/util/ReadingDataUtil;->getGetMpageUrl()Ljava/lang/String;
    invoke-static {}, Lcom/android/browser/util/ReadingDataUtil;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/browser/common/Network;->doHttpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, ret:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v11

    .line 71
    goto :goto_0

    .line 73
    :cond_1
    new-instance v3, Lcom/android/browser/util/ResultCodeXmlHandler;

    invoke-direct {v3}, Lcom/android/browser/util/ResultCodeXmlHandler;-><init>()V

    .line 74
    .local v3, handler:Lcom/android/browser/util/ResultCodeXmlHandler;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v6, v3}, Lcom/android/browser/common/SaxXmlParserWrapper;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 75
    invoke-virtual {v3}, Lcom/android/browser/util/ResultCodeXmlHandler;->isSupportedFormat()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v11

    .line 76
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v3}, Lcom/android/browser/util/ResultCodeXmlHandler;->isSuccessResult()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 79
    sget-boolean v6, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-eqz v6, :cond_3

    .line 80
    invoke-static {}, Lcom/android/browser/util/ReadingDataUtil;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the url is cached already: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/browser/util/ReadingDataUtil$1;->val$data:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    iget-object v8, v8, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v6, v11

    .line 81
    goto/16 :goto_0

    .line 83
    :cond_4
    invoke-virtual {v3}, Lcom/android/browser/util/ResultCodeXmlHandler;->getCode()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 84
    invoke-static {}, Lcom/android/browser/util/ReadingDataUtil;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ignore upload for error, code=\'%d\', desc=\'%s\'."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/android/browser/util/ResultCodeXmlHandler;->getCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Lcom/android/browser/util/ResultCodeXmlHandler;->getDesc()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v11

    .line 85
    goto/16 :goto_0

    .line 88
    :cond_5
    iget-object v6, p0, Lcom/android/browser/util/ReadingDataUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/browser/common/Network;->isWifi(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-boolean v6, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-nez v6, :cond_6

    move-object v6, v11

    .line 89
    goto/16 :goto_0

    .line 90
    :cond_6
    iget-object v6, p0, Lcom/android/browser/util/ReadingDataUtil$1;->val$data:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    invoke-virtual {v6}, Lcom/android/browser/controller/ReadingModeController$ReadingData;->toCacheString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, v11

    .line 92
    goto/16 :goto_0

    .line 94
    :cond_7
    iget-object v6, p0, Lcom/android/browser/util/ReadingDataUtil$1;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/browser/util/ReadingDataUtil$1;->val$data:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    iget v8, p0, Lcom/android/browser/util/ReadingDataUtil$1;->val$keepAliveSeconds:I

    #calls: Lcom/android/browser/util/ReadingDataUtil;->uploadMcacheData(Landroid/content/Context;Lcom/android/browser/controller/ReadingModeController$ReadingData;Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v6, v7, v0, v8}, Lcom/android/browser/util/ReadingDataUtil;->access$200(Landroid/content/Context;Lcom/android/browser/controller/ReadingModeController$ReadingData;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 96
    new-instance v4, Lcom/android/browser/util/ResultCodeXmlHandler;

    invoke-direct {v4}, Lcom/android/browser/util/ResultCodeXmlHandler;-><init>()V

    .line 97
    .local v4, handler2:Lcom/android/browser/util/ResultCodeXmlHandler;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v6, v4}, Lcom/android/browser/common/SaxXmlParserWrapper;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 98
    invoke-virtual {v4}, Lcom/android/browser/util/ResultCodeXmlHandler;->isErrorResult()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 99
    invoke-static {}, Lcom/android/browser/util/ReadingDataUtil;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "error 2, code=\'%d\', desc=\'%s\'."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/android/browser/util/ResultCodeXmlHandler;->getCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v4}, Lcom/android/browser/util/ResultCodeXmlHandler;->getDesc()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/browser/common/SaxXmlParserWrapper$ConfigParserException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0           #content:Ljava/lang/String;
    .end local v1           #dat:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v3           #handler:Lcom/android/browser/util/ResultCodeXmlHandler;
    .end local v4           #handler2:Lcom/android/browser/util/ResultCodeXmlHandler;
    .end local v5           #ret:Ljava/lang/String;
    :cond_8
    :goto_1
    move-object v6, v11

    .line 106
    goto/16 :goto_0

    .line 101
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 102
    .local v2, e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/browser/util/ReadingDataUtil;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ignored error"

    invoke-static {v6, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 103
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 104
    .local v2, e:Lcom/android/browser/common/SaxXmlParserWrapper$ConfigParserException;
    invoke-static {}, Lcom/android/browser/util/ReadingDataUtil;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ignored error"

    invoke-static {v6, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
