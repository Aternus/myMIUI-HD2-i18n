.class public Lcom/android/settings/XiaomiAccountHelper;
.super Ljava/lang/Object;
.source "XiaomiAccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/XiaomiAccountHelper$MySslParameters;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResponse:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/settings/XiaomiAccountHelper;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private handleError(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "error"

    .prologue
    .line 116
    const-string v1, "OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const-string v1, ""

    .line 125
    :goto_0
    return-object v1

    .line 119
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/settings/XiaomiAccountConstants;->errorCodes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 120
    sget-object v1, Lcom/android/settings/XiaomiAccountConstants;->errorCodes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/XiaomiAccountConstants;->errorIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 119
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f060053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private makeRequest(Ljava/lang/String;Lcom/android/settings/Parameter;)V
    .locals 14
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v3, 0x0

    .line 62
    .local v3, conn:Ljavax/net/ssl/HttpsURLConnection;
    :try_start_0
    const-string v12, "BKS"

    invoke-static {v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 63
    .local v11, trusted:Ljava/security/KeyStore;
    iget-object v12, p0, Lcom/android/settings/XiaomiAccountHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f05

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 65
    .local v4, in:Ljava/io/InputStream;
    :try_start_1
    const-string v12, "miuirom"

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 70
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v10

    .line 72
    .local v10, tmf:Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v10, v11}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 73
    new-instance v9, Lcom/android/settings/XiaomiAccountHelper$MySslParameters;

    invoke-virtual {v10}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/android/settings/XiaomiAccountHelper$MySslParameters;-><init>([Ljavax/net/ssl/TrustManager;)V

    .line 75
    .local v9, sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 76
    .local v7, req:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v3, v0

    .line 77
    const/16 v12, 0x7530

    invoke-virtual {v3, v12}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 78
    new-instance v12, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;

    invoke-direct {v12, v9}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    invoke-virtual {v3, v12}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 79
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 80
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 81
    const-string v12, "POST"

    invoke-virtual {v3, v12}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 82
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 83
    const-string v12, "Content-Type"

    const-string v13, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v12, v13}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 86
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 87
    .local v6, out:Ljava/io/OutputStream;
    invoke-virtual/range {p2 .. p2}, Lcom/android/settings/Parameter;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/OutputStream;->write([B)V

    .line 91
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 93
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 94
    .local v2, code:I
    const/16 v12, 0xc8

    if-ne v2, v12, :cond_0

    .line 96
    const/4 v5, 0x0

    .line 97
    .local v5, line:Ljava/lang/String;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v13, 0x400

    invoke-direct {v1, v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 99
    .local v1, br:Ljava/io/BufferedReader;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v8, sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 101
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 105
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v12

    .line 110
    .end local v5           #line:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 111
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 113
    .end local v2           #code:I
    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #out:Ljava/io/OutputStream;
    .end local v7           #req:Ljava/net/URL;
    .end local v9           #sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    .end local v10           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    .end local v11           #trusted:Ljava/security/KeyStore;
    :cond_1
    :goto_2
    return-void

    .line 67
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v11       #trusted:Ljava/security/KeyStore;
    :catchall_0
    move-exception v12

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 108
    .end local v4           #in:Ljava/io/InputStream;
    .end local v11           #trusted:Ljava/security/KeyStore;
    :catch_1
    move-exception v12

    .line 110
    if-eqz v3, :cond_1

    .line 111
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_2

    .line 103
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #code:I
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #out:Ljava/io/OutputStream;
    .restart local v7       #req:Ljava/net/URL;
    .restart local v8       #sb:Ljava/lang/StringBuilder;
    .restart local v9       #sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    .restart local v10       #tmf:Ljavax/net/ssl/TrustManagerFactory;
    .restart local v11       #trusted:Ljava/security/KeyStore;
    :cond_2
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 104
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v12, p0, Lcom/android/settings/XiaomiAccountHelper;->mResponse:Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 110
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #code:I
    .end local v4           #in:Ljava/io/InputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #out:Ljava/io/OutputStream;
    .end local v7           #req:Ljava/net/URL;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    .end local v9           #sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    .end local v10           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    .end local v11           #trusted:Ljava/security/KeyStore;
    :catchall_1
    move-exception v12

    if-eqz v3, :cond_3

    .line 111
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    throw v12
.end method

.method private request(Ljava/lang/String;Lcom/android/settings/Parameter;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter "params"

    .prologue
    .line 146
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/XiaomiAccountHelper;->makeRequest(Ljava/lang/String;Lcom/android/settings/Parameter;)V

    .line 147
    const/4 v1, 0x0

    .local v1, error:Ljava/lang/String;
    const/4 v3, 0x0

    .line 148
    .local v3, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/XiaomiAccountHelper;->mResponse:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_0

    .line 150
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/XiaomiAccountHelper;->mResponse:Lorg/json/JSONObject;

    const-string v5, "error"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    iget-object v4, p0, Lcom/android/settings/XiaomiAccountHelper;->mResponse:Lorg/json/JSONObject;

    const-string v5, "message"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 156
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    iget-object v4, p0, Lcom/android/settings/XiaomiAccountHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f06004e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 164
    .end local v1           #error:Ljava/lang/String;
    .end local v3           #message:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 152
    .restart local v1       #error:Ljava/lang/String;
    .restart local v3       #message:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 153
    .local v0, e:Lorg/json/JSONException;
    const-string v4, "XMAccountHelper"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 163
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #error:Ljava/lang/String;
    .end local v3           #message:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 164
    .local v2, ioe:Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/settings/XiaomiAccountHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f06004f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 159
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v1       #error:Ljava/lang/String;
    .restart local v3       #message:Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v3

    .line 160
    goto :goto_1

    .line 162
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/XiaomiAccountHelper;->handleError(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public bindEmail(Lcom/android/settings/Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 137
    const-string v0, "https://user.api.miui.com/api?r=mobile/bindem"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/XiaomiAccountHelper;->request(Ljava/lang/String;Lcom/android/settings/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bindNickname(Lcom/android/settings/Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 141
    const-string v0, "https://user.api.miui.com/api?r=mobile/setnick"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/XiaomiAccountHelper;->request(Ljava/lang/String;Lcom/android/settings/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bindPhone(Lcom/android/settings/Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 133
    const-string v0, "https://user.api.miui.com/api?r=mobile/bindph"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/XiaomiAccountHelper;->request(Ljava/lang/String;Lcom/android/settings/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter()Lcom/android/settings/Parameter;
    .locals 5

    .prologue
    .line 169
    new-instance v2, Lcom/android/settings/Parameter;

    invoke-direct {v2}, Lcom/android/settings/Parameter;-><init>()V

    .line 170
    .local v2, params:Lcom/android/settings/Parameter;
    const-string v3, "mv"

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/Parameter;

    .line 171
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, lauguage:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, country:Ljava/lang/String;
    const-string v3, "la"

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/Parameter;

    .line 174
    const-string v3, "co"

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/Parameter;

    .line 175
    return-object v2
.end method

.method public getResponse()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountHelper;->mResponse:Lorg/json/JSONObject;

    return-object v0
.end method

.method public viewCard(Lcom/android/settings/Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 129
    const-string v0, "https://user.api.miui.com/api?r=mobile/card"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/XiaomiAccountHelper;->request(Ljava/lang/String;Lcom/android/settings/Parameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
