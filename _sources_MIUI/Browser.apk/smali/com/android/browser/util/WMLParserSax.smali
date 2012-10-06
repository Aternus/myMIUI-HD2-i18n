.class public Lcom/android/browser/util/WMLParserSax;
.super Ljava/lang/Object;
.source "WMLParserSax.java"

# interfaces
.implements Lcom/android/browser/util/ICancelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/util/WMLParserSax$ProgressListener;
    }
.end annotation


# static fields
.field private static LOGTAG:Ljava/lang/String;


# instance fields
.field private canceled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "com.android.browser.util.WMLParserSax"

    sput-object v0, Lcom/android/browser/util/WMLParserSax;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static processEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .parameter "input"
    .parameter "charset"

    .prologue
    .line 76
    :try_start_0
    invoke-static {p0}, Lcom/android/browser/common/Strings;->convertStreamToBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 77
    .local v0, bytes:[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4}, Lcom/android/browser/common/Network;->getCharsetFromXmlStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, encoding:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    const-string v2, "UTF-8"

    .line 85
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 91
    .local v3, str:Ljava/lang/String;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0           #bytes:[B
    .end local v2           #encoding:Ljava/lang/String;
    .end local v3           #str:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 82
    .restart local v0       #bytes:[B
    .restart local v2       #encoding:Ljava/lang/String;
    :cond_1
    move-object v2, p1

    goto :goto_0

    .line 93
    .end local v0           #bytes:[B
    .end local v2           #encoding:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 94
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/browser/util/WMLParserSax;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p0

    .line 97
    goto :goto_1
.end method

.method private static readFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "fileName"

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 37
    .local v0, am:Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    .line 39
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 40
    if-nez v1, :cond_2

    .line 49
    if-eqz v1, :cond_0

    .line 51
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    move-object v2, v3

    .line 55
    :cond_1
    :goto_1
    return-object v2

    .line 44
    :cond_2
    :try_start_2
    invoke-static {v1}, Lcom/android/browser/common/Strings;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 49
    if-eqz v1, :cond_1

    .line 51
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 52
    :catch_0
    move-exception v3

    goto :goto_1

    .line 46
    :catch_1
    move-exception v2

    .line 49
    if-eqz v1, :cond_3

    .line 51
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_2
    move-object v2, v3

    .line 55
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 51
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 53
    :cond_4
    :goto_3
    throw v2

    .line 52
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v3

    goto :goto_3
.end method


# virtual methods
.method public cancelParsing()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/util/WMLParserSax;->canceled:Z

    .line 102
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/browser/util/WMLParserSax;->canceled:Z

    return v0
.end method

.method public parseWML(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;Lcom/android/browser/util/WMLParserSax$ProgressListener;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "is"
    .parameter "os"
    .parameter "listener"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/browser/util/WMLParserSax;->canceled:Z

    .line 64
    invoke-static {p2, p5}, Lcom/android/browser/util/WMLParserSax;->processEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 66
    .local v2, newIs:Ljava/io/InputStream;
    new-instance v1, Lcom/android/browser/util/WMLParserHandler;

    invoke-direct {v1, p3, p4, p0}, Lcom/android/browser/util/WMLParserHandler;-><init>(Ljava/io/ByteArrayOutputStream;Lcom/android/browser/util/WMLParserSax$ProgressListener;Lcom/android/browser/util/ICancelable;)V

    .line 67
    .local v1, handler:Lcom/android/browser/util/WMLParserHandler;
    const-string v4, "js/wml.js"

    invoke-static {p1, v4}, Lcom/android/browser/util/WMLParserSax;->readFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, script:Ljava/lang/String;
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/controller/BrowserSettings;->getIsInNightMode()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "css/wml_night.css"

    :goto_0
    invoke-static {p1, v4}, Lcom/android/browser/util/WMLParserSax;->readFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, css:Ljava/lang/String;
    invoke-virtual {v1, v3, v0}, Lcom/android/browser/util/WMLParserHandler;->setScriptAndCss(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v2, v1}, Lcom/android/browser/common/SaxXmlParserWrapper;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 71
    return-void

    .line 68
    .end local v0           #css:Ljava/lang/String;
    :cond_0
    const-string v4, "css/wml.css"

    goto :goto_0
.end method
