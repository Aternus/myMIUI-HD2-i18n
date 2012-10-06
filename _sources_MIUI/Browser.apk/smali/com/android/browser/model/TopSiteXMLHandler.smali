.class public Lcom/android/browser/model/TopSiteXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TopSiteXMLHandler.java"


# static fields
.field public static final GROUP_TAG:Ljava/lang/String; = "group"

.field public static final INDEX_ATT:Ljava/lang/String; = "index"

.field public static final ITEM_TAG:Ljava/lang/String; = "item"

.field public static final ROOT_TAG:Ljava/lang/String; = "root"

.field public static final TITLE_ATT:Ljava/lang/String; = "title"

.field public static final URL_ATT:Ljava/lang/String; = "url"

.field public static final VER_ATT:Ljava/lang/String; = "ver"


# instance fields
.field private final _context:Landroid/content/Context;

.field _index:Ljava/lang/String;

.field private mWebList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/model/TopSiteXMLHandler;->mWebList:Ljava/util/ArrayList;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/browser/model/TopSiteXMLHandler;->_index:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/android/browser/model/TopSiteXMLHandler;->_context:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private getParser()Lorg/xml/sax/XMLReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 90
    .local v1, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 91
    .local v0, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 92
    .local v2, xr:Lorg/xml/sax/XMLReader;
    invoke-interface {v2, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 93
    return-object v2
.end method


# virtual methods
.method public getWebList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/browser/model/TopSiteXMLHandler;->mWebList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parseXML(Ljava/lang/String;)V
    .locals 4
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/browser/model/TopSiteXMLHandler;->getParser()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 86
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "top_version"

    .line 53
    const-string v2, "root"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    const-string v2, "ver"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, _ver:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/model/TopSiteXMLHandler;->_context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "top_version"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2}, Lorg/xml/sax/SAXException;-><init>()V

    throw v2

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/android/browser/model/TopSiteXMLHandler;->_context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "top_version"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    iget-object v2, p0, Lcom/android/browser/model/TopSiteXMLHandler;->_context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "isNew"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    .end local v0           #_ver:Ljava/lang/String;
    :cond_1
    const-string v2, "group"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    const-string v2, "index"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/model/TopSiteXMLHandler;->_index:Ljava/lang/String;

    .line 70
    :cond_2
    const-string v2, "item"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    .line 73
    .local v1, record:[Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/model/TopSiteXMLHandler;->_index:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v5

    .line 74
    new-instance v2, Ljava/lang/String;

    const-string v3, "title"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    .line 75
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/String;

    const-string v4, "url"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 76
    iget-object v2, p0, Lcom/android/browser/model/TopSiteXMLHandler;->mWebList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v1           #record:[Ljava/lang/String;
    :cond_3
    return-void
.end method
