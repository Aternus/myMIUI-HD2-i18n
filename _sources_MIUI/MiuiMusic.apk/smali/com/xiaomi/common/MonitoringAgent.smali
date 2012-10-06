.class public Lcom/xiaomi/common/MonitoringAgent;
.super Ljava/lang/Object;
.source "MonitoringAgent.java"


# static fields
.field private static final API_STAT_URL:Ljava/lang/String; = "http://stat.api.xiaomi.com/stat.php"

.field public static final LOG_TAG:Ljava/lang/String; = "com.xiaomi.common.Monitoring"

.field private static agent:Lcom/xiaomi/common/MonitoringAgent; = null

.field private static customStatUploadUrl:Ljava/lang/String; = null

.field private static customUUID:Ljava/lang/String; = null

.field private static final sDefaultNumberOfRecordPerSending:I = 0x64

.field private static final sProcessLock:Ljava/lang/String; = "process-lock"

.field private static final sStatUploadProcessLock:Ljava/lang/String; = "stat-upload-process-lock"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/xiaomi/common/MonitoringDbHelper;

.field private noMoreRecord:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/xiaomi/common/MonitoringAgent;->agent:Lcom/xiaomi/common/MonitoringAgent;

    .line 45
    sput-object v0, Lcom/xiaomi/common/MonitoringAgent;->customStatUploadUrl:Ljava/lang/String;

    .line 47
    sput-object v0, Lcom/xiaomi/common/MonitoringAgent;->customUUID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/MonitoringAgent;->noMoreRecord:Ljava/lang/Boolean;

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    new-instance v0, Lcom/xiaomi/common/MonitoringDbHelper;

    invoke-direct {v0, p1}, Lcom/xiaomi/common/MonitoringDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/common/MonitoringAgent;->mDbHelper:Lcom/xiaomi/common/MonitoringDbHelper;

    .line 54
    iput-object p1, p0, Lcom/xiaomi/common/MonitoringAgent;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$000()Lcom/xiaomi/common/MonitoringAgent;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/xiaomi/common/MonitoringAgent;->agent:Lcom/xiaomi/common/MonitoringAgent;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-static {p0}, Lcom/xiaomi/common/MonitoringAgent;->getStatUploadUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/common/MonitoringAgent;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/xiaomi/common/MonitoringAgent;->isStatPostSuccessful(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/xiaomi/common/MonitoringAgent;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/common/MonitoringAgent;->afterSend(J)V

    return-void
.end method

.method private afterSend(J)V
    .locals 8
    .parameter "latestRecordRowId"

    .prologue
    .line 227
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 228
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "latestRecordRowId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_0
    const-string v2, "process-lock"

    monitor-enter v2

    .line 231
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/common/MonitoringAgent;->mDbHelper:Lcom/xiaomi/common/MonitoringDbHelper;

    invoke-virtual {v3}, Lcom/xiaomi/common/MonitoringDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 234
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v3, "record"

    const-string v4, "%s<=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 243
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    return-void

    .line 238
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 239
    .local v1, e:Landroid/database/SQLException;
    :try_start_3
    const-string v3, "com.xiaomi.common.Monitoring"

    const-string v4, "failed to write the report stat into database"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 241
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 243
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 241
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/common/MonitoringAgent;
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    sget-object v0, Lcom/xiaomi/common/MonitoringAgent;->agent:Lcom/xiaomi/common/MonitoringAgent;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/xiaomi/common/MonitoringAgent;

    invoke-direct {v0, p0}, Lcom/xiaomi/common/MonitoringAgent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/common/MonitoringAgent;->agent:Lcom/xiaomi/common/MonitoringAgent;

    .line 61
    :cond_0
    sget-object v0, Lcom/xiaomi/common/MonitoringAgent;->agent:Lcom/xiaomi/common/MonitoringAgent;

    return-object v0
.end method

.method public static getStatUploadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lcom/xiaomi/common/MonitoringAgent;->customStatUploadUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lcom/xiaomi/common/MonitoringAgent;->customStatUploadUrl:Ljava/lang/String;

    .line 350
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://stat.api.xiaomi.com/stat.php"

    goto :goto_0
.end method

.method private static getStatUploadUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 340
    const-string v0, "%1$s?%2$s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/xiaomi/common/MonitoringAgent;->getStatUploadUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/xiaomi/common/MonitoringAgent;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getToSendRecords(I)Ljava/util/List;
    .locals 13
    .parameter "limitCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/common/MonitoringData$MonitoringRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v1, "com.xiaomi.common.Monitoring"

    const-string v1, "_id"

    .line 184
    if-gtz p1, :cond_0

    .line 185
    const/16 p1, 0x64

    .line 187
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v11, ret:Ljava/util/List;,"Ljava/util/List<Lcom/xiaomi/common/MonitoringData$MonitoringRecord;>;"
    const-string v12, "process-lock"

    monitor-enter v12

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/common/MonitoringAgent;->mDbHelper:Lcom/xiaomi/common/MonitoringDbHelper;

    invoke-virtual {v1}, Lcom/xiaomi/common/MonitoringDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 191
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 194
    .local v10, iterator:Landroid/database/Cursor;
    :try_start_1
    const-string v1, "record"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "schedule"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "%1$s<?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "timestamp"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/xiaomi/common/DateTimeHelper;->getTodayStartTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 204
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    :try_start_2
    new-instance v1, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;

    invoke-direct {v1, v10}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 208
    .local v9, e:Ljava/io/IOException;
    :try_start_3
    const-string v1, "com.xiaomi.common.Monitoring"

    const-string v2, "failed to load the report stat"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 211
    .end local v9           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v9, v1

    .line 212
    .local v9, e:Landroid/database/SQLException;
    :try_start_4
    const-string v1, "com.xiaomi.common.Monitoring"

    const-string v2, "failed to read the report stat into database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 214
    if-eqz v10, :cond_1

    .line 215
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 218
    .end local v9           #e:Landroid/database/SQLException;
    :goto_1
    monitor-exit v12

    .line 220
    return-object v11

    .line 214
    :cond_2
    if-eqz v10, :cond_3

    .line 215
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 218
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #iterator:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 214
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #iterator:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_4

    .line 215
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 355
    sget-object v0, Lcom/xiaomi/common/MonitoringAgent;->customUUID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Lcom/xiaomi/common/MonitoringAgent;->customUUID:Ljava/lang/String;

    .line 357
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/common/UserInfo;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isStatPostSuccessful(Ljava/lang/String;)Z
    .locals 8
    .parameter "responseXml"

    .prologue
    const-string v5, "code"

    const-string v7, "com.xiaomi.common.Monitoring"

    .line 304
    invoke-static {p1}, Lcom/xiaomi/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 307
    const/4 v4, 0x0

    .line 310
    .local v4, xmldoc:Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 311
    .local v0, docFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 312
    .local v2, inputSource:Lorg/xml/sax/InputSource;
    sget-object v5, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v5}, Landroid/util/Xml$Encoding;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 315
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 316
    .local v3, rootElement:Lorg/w3c/dom/Element;
    if-eqz v3, :cond_0

    const-string v5, "code"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "code"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "200"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v5

    if-eqz v5, :cond_0

    .line 318
    const/4 v5, 0x1

    .line 331
    .end local v0           #docFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2           #inputSource:Lorg/xml/sax/InputSource;
    .end local v3           #rootElement:Lorg/w3c/dom/Element;
    .end local v4           #xmldoc:Lorg/w3c/dom/Document;
    :goto_0
    return v5

    .line 320
    .restart local v4       #xmldoc:Lorg/w3c/dom/Document;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 321
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v5, "com.xiaomi.common.Monitoring"

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .end local v4           #xmldoc:Lorg/w3c/dom/Document;
    :cond_0
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 322
    .restart local v4       #xmldoc:Lorg/w3c/dom/Document;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 323
    .local v1, e:Lorg/xml/sax/SAXException;
    const-string v5, "com.xiaomi.common.Monitoring"

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 324
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 325
    .local v1, e:Ljava/io/IOException;
    const-string v5, "com.xiaomi.common.Monitoring"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 326
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 327
    .local v1, e:Lorg/w3c/dom/DOMException;
    const-string v5, "com.xiaomi.common.Monitoring"

    invoke-virtual {v1}, Lorg/w3c/dom/DOMException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setStatUploadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "statUploadUrl"

    .prologue
    .line 362
    sput-object p0, Lcom/xiaomi/common/MonitoringAgent;->customStatUploadUrl:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public static setUUID(Ljava/lang/String;)V
    .locals 0
    .parameter "UUID"

    .prologue
    .line 368
    sput-object p0, Lcom/xiaomi/common/MonitoringAgent;->customUUID:Ljava/lang/String;

    .line 369
    return-void
.end method


# virtual methods
.method public prepareHttpPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 18
    .parameter "version"
    .parameter "uuid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/common/MonitoringData$MonitoringRecord;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    .local p3, items:Ljava/util/List;,"Ljava/util/List<Lcom/xiaomi/common/MonitoringData$MonitoringRecord;>;"
    if-nez p1, :cond_0

    .line 257
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "version"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 258
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/xiaomi/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 259
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "uuid"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 260
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_3

    .line 261
    :cond_2
    const/4 v13, 0x0

    .line 295
    :goto_0
    return-object v13

    .line 263
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/common/MonitoringAgent;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-static {v13}, Lcom/xiaomi/common/Misc;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 264
    .local v8, info:Landroid/content/pm/PackageInfo;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v10, ret:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "product"

    iget-object v15, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v16, "com.xiaomi."

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "uuid"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "version"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 270
    .local v11, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v12, Ljava/io/StringWriter;

    const/16 v13, 0x200

    invoke-direct {v12, v13}, Ljava/io/StringWriter;-><init>(I)V

    .line 271
    .local v12, writer:Ljava/io/StringWriter;
    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 272
    const-string v13, ""

    const-string v14, "root"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 273
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;

    .line 276
    .local v9, rec:Lcom/xiaomi/common/MonitoringData$MonitoringRecord;
    :try_start_0
    const-string v13, ""

    const-string v14, "item"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    const-string v13, ""

    const-string v14, "key"

    invoke-virtual {v9}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    const-string v13, ""

    const-string v14, "timestamp"

    invoke-virtual {v9}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->getTimestamp()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    invoke-virtual {v9}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    const-string v13, ""

    const-string v14, "item"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 281
    :catch_0
    move-exception v13

    move-object v6, v13

    .line 282
    .local v6, e:Ljava/lang/IllegalArgumentException;
    const-string v13, "com.xiaomi.common.Monitoring"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ignoring bad item: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v13, "com.xiaomi.common.Monitoring"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 286
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    .end local v9           #rec:Lcom/xiaomi/common/MonitoringData$MonitoringRecord;
    :cond_4
    const-string v13, ""

    const-string v14, "root"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 288
    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, data:Ljava/lang/String;
    const-string v13, "UTF-8"

    invoke-virtual {v3, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 291
    .local v4, dataBytes:[B
    invoke-static {v4}, Lcom/xiaomi/common/Base64Coder;->encode([B)[C

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, dataEncoded:Ljava/lang/String;
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "data"

    invoke-direct {v13, v14, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "data-auth"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "564F6D5C-51DB-11DF-91BC-77CDDFD72085"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/xiaomi/common/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v13, v10

    .line 295
    goto/16 :goto_0
.end method

.method public report(Lcom/xiaomi/common/MonitoringData$MonitoringRecord;)V
    .locals 21
    .parameter "record"

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "record"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 73
    :cond_0
    const-string v20, "process-lock"

    monitor-enter v20

    .line 74
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/common/MonitoringAgent;->mDbHelper:Lcom/xiaomi/common/MonitoringDbHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/xiaomi/common/MonitoringDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 75
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v16, 0x0

    .line 78
    .local v16, iterator:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->getReportSchedule()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/xiaomi/common/DateTimeHelper;->getTodayStartTimestamp(J)J

    move-result-wide v17

    .line 81
    .local v17, startRange:J
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/xiaomi/common/DateTimeHelper;->getTomorrowStartTimestamp(J)J

    move-result-wide v14

    .line 82
    .local v14, endRange:J
    const-string v5, "record"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const-string v7, "(%s=?) AND (%s=?) AND (%s>=?) AND (%s<?)"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "key"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "value"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "timestamp"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "timestamp"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->getValue()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "1"

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 89
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    if-eqz v16, :cond_1

    .line 104
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .end local v14           #endRange:J
    .end local v17           #startRange:J
    :goto_0
    return-void

    .line 93
    :cond_2
    :try_start_3
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v19, values:Landroid/content/ContentValues;
    const-string v5, "key"

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v5, "value"

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->getValue()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v5, "timestamp"

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    const-string v5, "schedule"

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->getReportSchedule()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v5, "record"

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 99
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xiaomi/common/MonitoringAgent;->noMoreRecord:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 103
    if-eqz v16, :cond_3

    .line 104
    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 107
    .end local v19           #values:Landroid/content/ContentValues;
    :goto_1
    monitor-exit v20

    goto :goto_0

    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v16           #iterator:Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 100
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v16       #iterator:Landroid/database/Cursor;
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 101
    .local v13, e:Landroid/database/SQLException;
    :try_start_5
    const-string v5, "com.xiaomi.common.Monitoring"

    const-string v6, "failed to write the report stat into database"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 103
    if-eqz v16, :cond_4

    .line 104
    :try_start_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 103
    .end local v13           #e:Landroid/database/SQLException;
    :catchall_1
    move-exception v5

    if-eqz v16, :cond_5

    .line 104
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public tryUploadStatData(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter
    .parameter "releaseChannel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/common/MonitoringData$MonitoringRecord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, additional:Ljava/util/List;,"Ljava/util/List<Lcom/xiaomi/common/MonitoringData$MonitoringRecord;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    iget-object v3, p0, Lcom/xiaomi/common/MonitoringAgent;->noMoreRecord:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, logTag:Ljava/lang/String;
    const-string v3, "Preparing stat data..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v3, Lcom/xiaomi/common/MonitoringAgent;->agent:Lcom/xiaomi/common/MonitoringAgent;

    invoke-direct {v3, v5}, Lcom/xiaomi/common/MonitoringAgent;->getToSendRecords(I)Ljava/util/List;

    move-result-object v2

    .line 120
    .local v2, tosend:Ljava/util/List;,"Ljava/util/List<Lcom/xiaomi/common/MonitoringData$MonitoringRecord;>;"
    if-eqz p2, :cond_1

    .line 121
    if-eqz v2, :cond_3

    .line 122
    invoke-interface {v2, v5, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 130
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/xiaomi/common/UserInfo;->isPhoneInfoSent(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 132
    invoke-static {p1}, Lcom/xiaomi/common/UserInfo;->getPhoneInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/common/MonitoringData;->createPhoneInfoRecord(Ljava/lang/String;)Lcom/xiaomi/common/MonitoringData$MonitoringRecord;

    move-result-object v1

    .line 133
    .local v1, phoneInfo:Lcom/xiaomi/common/MonitoringData$MonitoringRecord;
    invoke-interface {v2, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 136
    .end local v1           #phoneInfo:Lcom/xiaomi/common/MonitoringData$MonitoringRecord;
    :cond_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 137
    new-instance v3, Lcom/xiaomi/common/MonitoringAgent$1;

    invoke-direct {v3, p0, p1}, Lcom/xiaomi/common/MonitoringAgent$1;-><init>(Lcom/xiaomi/common/MonitoringAgent;Landroid/content/Context;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object p3, v4, v6

    invoke-virtual {v3, v4}, Lcom/xiaomi/common/MonitoringAgent$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 125
    :cond_3
    move-object v2, p2

    goto :goto_1

    .line 164
    :cond_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/common/MonitoringAgent;->noMoreRecord:Ljava/lang/Boolean;

    goto :goto_0
.end method
