.class Lcom/miui/player/plugin/PlugInItem;
.super Ljava/lang/Object;
.source "PlugInItem.java"


# static fields
.field private static final DEX_TEMP_DIR:Ljava/lang/String; = "plug_ins_dex"

.field private static final PLUG_IN_CONNECTOR:Ljava/lang/String; = ".PlugInConnector"

.field private static final PLUG_IN_DIR:Ljava/lang/String; = "plug_ins"

.field private static final PLUG_IN_DOWNLOAD_DIR:Ljava/lang/String; = "plug_ins_download"

.field private static final PLUG_IN_URL_PREFIX:Ljava/lang/String; = "http://app.miui.com/music/"

.field private static final VERSION_URL_PREFIX:Ljava/lang/String; = "http://app.miui.com/music/"


# instance fields
.field private final mConfigPrefKey:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;

.field private mLastRequestTime:J

.field private final mPackageName:Ljava/lang/String;

.field private final mRequestTimePrefKey:Ljava/lang/String;

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Package;)V
    .locals 2
    .parameter "pkg"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/player/plugin/PlugInItem;->mLastRequestTime:J

    .line 36
    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/plugin/PlugInItem;->mPackageName:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/miui/player/plugin/PlugInItem;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/player/plugin/PlugInItem;->filterPackageDirectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/plugin/PlugInItem;->mType:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/player/plugin/PlugInItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/plugin/PlugInItem;->mFileName:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/player/plugin/PlugInItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/plugin/PlugInItem;->mConfigPrefKey:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/player/plugin/PlugInItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_request_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/plugin/PlugInItem;->mRequestTimePrefKey:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private static filterPackageDirectName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pkg"

    .prologue
    .line 149
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 150
    .local v0, start:I
    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method private getDexFiles(Ljava/lang/ClassLoader;)[Ldalvik/system/DexFile;
    .locals 4
    .parameter "loader"

    .prologue
    const/4 v3, 0x0

    .line 154
    instance-of v2, p1, Ldalvik/system/DexClassLoader;

    if-nez v2, :cond_0

    move-object v2, v3

    .line 169
    .end local p0
    :goto_0
    return-object v2

    .line 159
    .restart local p0
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 160
    .local v0, classType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v2, "mDexs"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 161
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 162
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ldalvik/system/DexFile;

    check-cast p0, [Ldalvik/system/DexFile;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_0

    .line 166
    .end local v0           #classType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #field:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    :goto_1
    move-object v2, v3

    .line 169
    goto :goto_0

    .line 165
    :catch_1
    move-exception v2

    goto :goto_1

    .line 164
    :catch_2
    move-exception v2

    goto :goto_1

    .line 163
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private getDexName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/player/plugin/PlugInItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clean(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/miui/player/plugin/PlugInItem;->getPlugInFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 132
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/miui/player/plugin/PlugInItem;->getDexTempDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/player/plugin/PlugInItem;->getDexName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 133
    return-void
.end method

.method public getConfig(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 119
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/miui/player/plugin/PlugInItem;->mConfigPrefKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDexTempDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .parameter "context"

    .prologue
    .line 98
    const-string v0, "plug_ins_dex"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadFile(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter "context"

    .prologue
    .line 90
    new-instance v0, Ljava/io/File;

    const-string v1, "plug_ins_download"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/player/plugin/PlugInItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFactoryPath(Ldalvik/system/DexClassLoader;)Ljava/lang/String;
    .locals 14
    .parameter "loader"

    .prologue
    const-string v13, ".PlugInConnector"

    const-string v12, "."

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/player/plugin/PlugInItem;->getDexFiles(Ljava/lang/ClassLoader;)[Ldalvik/system/DexFile;

    move-result-object v4

    .line 49
    .local v4, dexs:[Ldalvik/system/DexFile;
    if-eqz v4, :cond_2

    .line 50
    move-object v0, v4

    .local v0, arr$:[Ldalvik/system/DexFile;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v3, v0, v6

    .line 51
    .local v3, dex:Ldalvik/system/DexFile;
    invoke-virtual {v3}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 52
    .local v1, classes:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 53
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    .local v2, clz:Ljava/lang/String;
    const-string v10, "."

    invoke-virtual {v2, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 55
    .local v5, end:I
    if-ltz v5, :cond_0

    .line 59
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 60
    .local v9, start:I
    if-ltz v9, :cond_0

    .line 64
    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, specific:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/miui/player/plugin/PlugInItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".PlugInConnector"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 70
    .end local v0           #arr$:[Ldalvik/system/DexFile;
    .end local v1           #classes:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2           #clz:Ljava/lang/String;
    .end local v3           #dex:Ldalvik/system/DexFile;
    .end local v5           #end:I
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #specific:Ljava/lang/String;
    .end local v9           #start:I
    :goto_1
    return-object v10

    .line 50
    .restart local v0       #arr$:[Ldalvik/system/DexFile;
    .restart local v1       #classes:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v3       #dex:Ldalvik/system/DexFile;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 70
    .end local v0           #arr$:[Ldalvik/system/DexFile;
    .end local v1           #classes:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v3           #dex:Ldalvik/system/DexFile;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/miui/player/plugin/PlugInItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".PlugInConnector"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/player/plugin/PlugInItem;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "specific"

    .prologue
    .line 83
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://app.miui.com/music/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/plugin/PlugInItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 86
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlugInFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "context"

    .prologue
    .line 94
    new-instance v0, Ljava/io/File;

    const-string v1, "plug_ins"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/plugin/PlugInItem;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized getRequestTime(Landroid/content/Context;)J
    .locals 5
    .parameter "context"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/miui/player/plugin/PlugInItem;->mLastRequestTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 103
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/miui/player/plugin/PlugInItem;->mRequestTimePrefKey:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/player/plugin/PlugInItem;->mLastRequestTime:J

    .line 107
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    iget-wide v1, p0, Lcom/miui/player/plugin/PlugInItem;->mLastRequestTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v1

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getVersionUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://app.miui.com/music/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/plugin/PlugInItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/version.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/player/plugin/PlugInItem;->getDownloadFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 45
    return-void
.end method

.method public removeConfig(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 136
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 137
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/miui/player/plugin/PlugInItem;->mConfigPrefKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/miui/player/plugin/PlugInItem;->mConfigPrefKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public updateConfigPref(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "config"

    .prologue
    .line 124
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 125
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/miui/player/plugin/PlugInItem;->mConfigPrefKey:Ljava/lang/String;

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    return-void
.end method

.method public declared-synchronized updateRequestTimePref(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "time"

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iput-wide p2, p0, Lcom/miui/player/plugin/PlugInItem;->mLastRequestTime:J

    .line 112
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 113
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/miui/player/plugin/PlugInItem;->mRequestTimePrefKey:Ljava/lang/String;

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 111
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
