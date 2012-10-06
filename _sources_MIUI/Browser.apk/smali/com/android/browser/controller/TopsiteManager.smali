.class public Lcom/android/browser/controller/TopsiteManager;
.super Ljava/lang/Object;
.source "TopsiteManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "com.android.browser.controller.TopsiteManager"

.field private static final TOPSITE_URL:Ljava/lang/String; = "http://miren.cn/clientaccess/v1/cfg/topsite.xml"


# instance fields
.field private _context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/browser/controller/TopsiteManager;->_context:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private static addASite(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "cr"
    .parameter "index"
    .parameter "title"
    .parameter "url"

    .prologue
    const-string v5, "com.android.browser.controller.TopsiteManager"

    const-string v4, "addBookmarkHistory"

    .line 48
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .local v2, map:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 52
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "number"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "title"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "url"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v3, Lcom/android/browser/model/BrowserHistoryDataProvider;->TOPSITE_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 58
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v3, "com.android.browser.controller.TopsiteManager"

    const-string v3, "addBookmarkHistory"

    invoke-static {v5, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 59
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 60
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "com.android.browser.controller.TopsiteManager"

    const-string v3, "addBookmarkHistory"

    invoke-static {v5, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static addTopsiteList(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "context"
    .parameter "cr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, topsitelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 71
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 72
    .local v1, record:[Ljava/lang/String;
    if-eqz v1, :cond_0

    const/4 v2, 0x3

    array-length v3, v1

    if-ne v2, v3, :cond_0

    .line 74
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {p0, p1, v2, v3, v4}, Lcom/android/browser/controller/TopsiteManager;->addASite(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0           #i:I
    .end local v1           #record:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getToplist()Ljava/util/ArrayList;
    .locals 7
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
    const/4 v6, 0x0

    .line 95
    new-instance v1, Lcom/android/browser/model/TopSiteXMLHandler;

    iget-object v3, p0, Lcom/android/browser/controller/TopsiteManager;->_context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/browser/model/TopSiteXMLHandler;-><init>(Landroid/content/Context;)V

    .line 102
    .local v1, topsiteHandler:Lcom/android/browser/model/TopSiteXMLHandler;
    const/4 v2, 0x0

    .line 105
    .local v2, xml:Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/android/browser/controller/TopsiteManager;->_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 114
    :goto_0
    invoke-static {v2, v1}, Lcom/android/browser/common/SaxXmlParserWrapper;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    iget-object v3, p0, Lcom/android/browser/controller/TopsiteManager;->_context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "isNew"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 126
    invoke-virtual {v1}, Lcom/android/browser/model/TopSiteXMLHandler;->getWebList()Ljava/util/ArrayList;

    move-result-object v3

    .line 130
    :goto_1
    return-object v3

    .line 108
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/browser/controller/TopsiteManager;->_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 120
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 121
    .local v0, e:Lorg/xml/sax/SAXException;
    const-string v3, "com.android.browser.controller.TopsiteManager"

    const-string v4, "error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    .line 122
    goto :goto_1

    .end local v0           #e:Lorg/xml/sax/SAXException;
    :cond_1
    move-object v3, v6

    .line 130
    goto :goto_1
.end method


# virtual methods
.method public upgrade(Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "mResolver"

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/browser/controller/TopsiteManager;->getToplist()Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    .local v0, topsite:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 86
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->TOPSITE_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/android/browser/controller/TopsiteManager;->_context:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/browser/controller/TopsiteManager;->addTopsiteList(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 88
    iget-object v1, p0, Lcom/android/browser/controller/TopsiteManager;->_context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isNew"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    :cond_0
    return-void
.end method
