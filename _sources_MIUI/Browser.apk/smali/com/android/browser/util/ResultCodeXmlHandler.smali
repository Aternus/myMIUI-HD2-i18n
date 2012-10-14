.class public Lcom/android/browser/util/ResultCodeXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ResultCodeXmlHandler.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCode:Ljava/lang/String;

.field private mDesc:Ljava/lang/String;

.field private mElementValue:Ljava/lang/String;

.field private mIntCode:I

.field private mIsError:Z

.field private mIsSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string v0, "util/ResultCodeXmlHandler"

    sput-object v0, Lcom/android/browser/util/ResultCodeXmlHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 104
    iput-boolean v0, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mIsSuccess:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mIsError:Z

    return-void
.end method

.method private parseCode(Ljava/lang/String;)V
    .locals 3
    .parameter "code"

    .prologue
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mIntCode:I

    .line 98
    iput-object p1, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 100
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/browser/util/ResultCodeXmlHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ignored \'code\' error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 49
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mElementValue:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    move-object p2, p3

    .line 76
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v0, "error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    iput-boolean v1, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mIsError:Z

    .line 88
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mElementValue:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_3
    const-string v0, "root"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    iput-boolean v1, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mIsSuccess:Z

    goto :goto_1

    .line 83
    :cond_4
    const-string v0, "code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    iget-object v0, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mElementValue:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/browser/util/ResultCodeXmlHandler;->parseCode(Ljava/lang/String;)V

    goto :goto_1

    .line 85
    :cond_5
    const-string v0, "desc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mElementValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mDesc:Ljava/lang/String;

    goto :goto_1
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mIntCode:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public isErrorResult()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mIsError:Z

    return v0
.end method

.method public isSuccessResult()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mIsSuccess:Z

    return v0
.end method

.method public isSupportedFormat()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mIsError:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mIsSuccess:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    move-object p2, p3

    .line 59
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    if-eqz p4, :cond_1

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "root"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_3
    const-string v0, "code"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/util/ResultCodeXmlHandler;->parseCode(Ljava/lang/String;)V

    .line 66
    const-string v0, "desc"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/util/ResultCodeXmlHandler;->mDesc:Ljava/lang/String;

    goto :goto_0
.end method
