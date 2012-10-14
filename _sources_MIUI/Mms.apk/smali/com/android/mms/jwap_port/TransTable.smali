.class public Lcom/android/mms/jwap_port/TransTable;
.super Ljava/lang/Object;
.source "TransTable.java"


# static fields
.field private static tables:Ljava/util/Hashtable;


# instance fields
.field private mib2str:Ljava/util/Hashtable;

.field private str2mib:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/mms/jwap_port/TransTable;->tables:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/mms/jwap_port/TransTable;->mib2str:Ljava/util/Hashtable;

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/mms/jwap_port/TransTable;->str2mib:Ljava/util/Hashtable;

    .line 49
    return-void
.end method

.method public static getTable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/jwap_port/TransTable;
    .locals 12
    .parameter "context"
    .parameter "table"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    const/4 p0, 0x0

    .line 150
    .end local p0
    :goto_0
    return-object p0

    .line 69
    .restart local p0
    :cond_0
    sget-object v1, Lcom/android/mms/jwap_port/TransTable;->tables:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_8

    .line 71
    sget-object v9, Lcom/android/mms/jwap_port/TransTable;->tables:Ljava/util/Hashtable;

    monitor-enter v9

    .line 72
    :try_start_0
    sget-object v1, Lcom/android/mms/jwap_port/TransTable;->tables:Ljava/util/Hashtable;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    .restart local v1       #o:Ljava/lang/Object;
    if-nez v1, :cond_7

    .line 75
    new-instance v4, Lcom/android/mms/jwap_port/TransTable;

    invoke-direct {v4}, Lcom/android/mms/jwap_port/TransTable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .local v4, o:Lcom/android/mms/jwap_port/TransTable;
    const/4 v1, 0x0

    .line 78
    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .end local p0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    .line 84
    .end local v1           #in:Ljava/io/InputStream;
    .local p0, in:Ljava/io/InputStream;
    :goto_1
    if-nez p0, :cond_1

    .line 86
    :try_start_2
    sget-object p0, Lcom/android/mms/jwap_port/TransTable;->tables:Ljava/util/Hashtable;

    .end local p0           #in:Ljava/io/InputStream;
    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v1, ": Unable to load translation table"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    .end local v4           #o:Lcom/android/mms/jwap_port/TransTable;
    :catchall_0
    move-exception p0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 79
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v4       #o:Lcom/android/mms/jwap_port/TransTable;
    .restart local p1
    :catch_0
    move-exception p0

    .line 81
    .local p0, e1:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    move-object p0, v1

    .end local v1           #in:Ljava/io/InputStream;
    .local p0, in:Ljava/io/InputStream;
    goto :goto_1

    .line 91
    :cond_1
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    .local v5, p:Ljava/util/Properties;
    :try_start_4
    invoke-virtual {v5, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 98
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 107
    :try_start_6
    sget-object p0, Lcom/android/mms/jwap_port/TransTable;->tables:Ljava/util/Hashtable;

    .end local p0           #in:Ljava/io/InputStream;
    invoke-virtual {p0, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-object v0, v4

    check-cast v0, Lcom/android/mms/jwap_port/TransTable;

    move-object v7, v0

    .line 110
    .local v7, tbl:Lcom/android/mms/jwap_port/TransTable;
    const-string p0, "transtable.aliases"

    invoke-virtual {v5, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 111
    .local p0, aliases:Z
    const-string v1, "transtable.delimiter"

    const-string v2, ","

    invoke-virtual {v5, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, delimiter:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, e:Ljava/util/Enumeration;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 114
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    .local v1, key:Ljava/lang/String;
    const-string v6, "transtable.aliases"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "transtable.delimiter"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 119
    invoke-virtual {v5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, val:Ljava/lang/String;
    const/4 v6, 0x0

    .line 121
    .local v6, strtok:Ljava/util/StringTokenizer;
    if-eqz p0, :cond_3

    .line 122
    new-instance v6, Ljava/util/StringTokenizer;

    .end local v6           #strtok:Ljava/util/StringTokenizer;
    invoke-direct {v6, v8, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .restart local v6       #strtok:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .end local v8           #val:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v8

    .line 126
    .restart local v8       #val:Ljava/lang/String;
    :cond_3
    :try_start_7
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 127
    .local v1, code:Ljava/lang/Integer;
    iget-object v10, v7, Lcom/android/mms/jwap_port/TransTable;->mib2str:Ljava/util/Hashtable;

    invoke-virtual {v10, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v10, v7, Lcom/android/mms/jwap_port/TransTable;->str2mib:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    if-eqz p0, :cond_6

    .line 130
    :goto_3
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 131
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 132
    iget-object v10, v7, Lcom/android/mms/jwap_port/TransTable;->str2mib:Ljava/util/Hashtable;

    invoke-virtual {v10, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 135
    .end local v1           #code:Ljava/lang/Integer;
    :catch_1
    move-exception v1

    move-object v1, v8

    .end local v8           #val:Ljava/lang/String;
    .local v1, val:Ljava/lang/String;
    goto :goto_2

    .line 98
    .end local v1           #val:Ljava/lang/String;
    .end local v2           #delimiter:Ljava/lang/String;
    .end local v3           #e:Ljava/util/Enumeration;
    .end local v6           #strtok:Ljava/util/StringTokenizer;
    .end local v7           #tbl:Lcom/android/mms/jwap_port/TransTable;
    .local p0, in:Ljava/io/InputStream;
    :catchall_1
    move-exception v1

    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 100
    :catch_2
    move-exception p0

    .line 102
    .local p0, unknown:Ljava/io/IOException;
    :try_start_9
    sget-object p0, Lcom/android/mms/jwap_port/TransTable;->tables:Ljava/util/Hashtable;

    .end local p0           #unknown:Ljava/io/IOException;
    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v1, ": Unable to load translation table"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v2       #delimiter:Ljava/lang/String;
    .restart local v3       #e:Ljava/util/Enumeration;
    .restart local v7       #tbl:Lcom/android/mms/jwap_port/TransTable;
    .local p0, aliases:Z
    .restart local p1
    :cond_4
    move-object p0, v4

    .line 143
    .end local v2           #delimiter:Ljava/lang/String;
    .end local v3           #e:Ljava/util/Enumeration;
    .end local v4           #o:Lcom/android/mms/jwap_port/TransTable;
    .end local v5           #p:Ljava/util/Properties;
    .end local v7           #tbl:Lcom/android/mms/jwap_port/TransTable;
    .local p0, o:Ljava/lang/Object;
    :goto_4
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 146
    .end local p0           #o:Ljava/lang/Object;
    :goto_5
    if-eqz p0, :cond_5

    instance-of v1, p0, Lcom/android/mms/jwap_port/TransTable;

    if-nez v1, :cond_5

    .line 148
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v1, ": Unable to load translation table."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    .restart local p1
    :cond_5
    check-cast p0, Lcom/android/mms/jwap_port/TransTable;

    goto/16 :goto_0

    .local v1, code:Ljava/lang/Integer;
    .restart local v2       #delimiter:Ljava/lang/String;
    .restart local v3       #e:Ljava/util/Enumeration;
    .restart local v4       #o:Lcom/android/mms/jwap_port/TransTable;
    .restart local v5       #p:Ljava/util/Properties;
    .restart local v6       #strtok:Ljava/util/StringTokenizer;
    .restart local v7       #tbl:Lcom/android/mms/jwap_port/TransTable;
    .restart local v8       #val:Ljava/lang/String;
    .local p0, aliases:Z
    :cond_6
    move-object v1, v8

    .end local v8           #val:Ljava/lang/String;
    .local v1, val:Ljava/lang/String;
    goto/16 :goto_2

    .end local v2           #delimiter:Ljava/lang/String;
    .end local v3           #e:Ljava/util/Enumeration;
    .end local v4           #o:Lcom/android/mms/jwap_port/TransTable;
    .end local v5           #p:Ljava/util/Properties;
    .end local v6           #strtok:Ljava/util/StringTokenizer;
    .end local v7           #tbl:Lcom/android/mms/jwap_port/TransTable;
    .local v1, o:Ljava/lang/Object;
    .local p0, context:Landroid/content/Context;
    :cond_7
    move-object p0, v1

    .end local v1           #o:Ljava/lang/Object;
    .local p0, o:Ljava/lang/Object;
    goto :goto_4

    .restart local v1       #o:Ljava/lang/Object;
    .local p0, context:Landroid/content/Context;
    :cond_8
    move-object p0, v1

    goto :goto_5
.end method


# virtual methods
.method public code2str(I)Ljava/lang/String;
    .locals 2
    .parameter "mib"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/mms/jwap_port/TransTable;->mib2str:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
