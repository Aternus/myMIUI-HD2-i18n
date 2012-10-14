.class public Lcom/android/thememanager/ThemeResourceFolder;
.super Lcom/miui/android/resourcebrowser/ZipResourceFolder;
.source "ThemeResourceFolder.java"


# instance fields
.field private mResourceType:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "metaData"
    .parameter "folderPath"

    .prologue
    const-wide/16 v2, -0x1

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/android/resourcebrowser/ZipResourceFolder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    .line 24
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 25
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    .line 27
    :cond_0
    return-void
.end method

.method private deleteOldResource()V
    .locals 15

    .prologue
    .line 58
    new-instance v2, Ljava/io/File;

    iget-object v11, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFolderPath:Ljava/lang/String;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, dir:Ljava/io/File;
    iget-object v11, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFolderPath:Ljava/lang/String;

    sget-object v12, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 93
    :cond_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, files:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 64
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v8, mapIdToVersionPath:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v9, v0, v5

    .line 66
    .local v9, name:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/thememanager/ThemeHelper;->deleteUnusedThemeTmpFile(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 65
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70
    :cond_3
    invoke-static {v9}, Lcom/miui/android/resourcebrowser/ResourceHelper;->parseIdVersion(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 71
    .local v6, idVersion:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_2

    .line 75
    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 76
    .local v10, versionPath:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-nez v10, :cond_4

    .line 77
    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    new-instance v12, Landroid/util/Pair;

    iget-object v13, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v12, v13, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    :cond_4
    iget-object v1, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-gt v11, v12, :cond_5

    .line 81
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, deletePath:Ljava/lang/String;
    :goto_2
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 88
    const/16 v11, 0x2f

    const/16 v12, 0x5f

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, endcodedPath:Ljava/lang/String;
    const-string v11, "rm -rf \"%s/%s\""

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    sget-object v14, Lcom/android/thememanager/ThemeHelper;->THEME_PATH_PREVIEW:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v3, v12, v13

    invoke-static {v11, v12}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    .end local v1           #deletePath:Ljava/lang/String;
    .end local v3           #endcodedPath:Ljava/lang/String;
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v1, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .restart local v1       #deletePath:Ljava/lang/String;
    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    new-instance v12, Landroid/util/Pair;

    iget-object v13, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v12, v13, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method protected createZipResource(Landroid/content/Context;Ljava/lang/String;Lcom/miui/android/resourcebrowser/ZipResourceCache;)Lcom/miui/android/resourcebrowser/ZipResourceInfo;
    .locals 10
    .parameter "context"
    .parameter "filePath"
    .parameter "zipCache"

    .prologue
    .line 37
    invoke-static {p2}, Lcom/miui/android/resourcebrowser/ResourceHelper;->isZipResource(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 38
    const/4 v6, 0x0

    .line 54
    :goto_0
    return-object v6

    .line 40
    :cond_0
    iget-wide v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    const-wide/16 v6, -0x1

    move-wide v4, v6

    .line 42
    .local v4, previewFlags:J
    :goto_1
    iget-object v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFileFlags:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 43
    .local v0, cacheFlags:Ljava/lang/Long;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v1, v6

    .line 44
    .local v1, componentFlags:J
    :goto_2
    iget-object v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, p2, p3, v7}, Lcom/android/thememanager/ThemeInfo;->createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lcom/miui/android/resourcebrowser/ZipResourceCache;[Ljava/lang/Object;)Lcom/android/thememanager/ThemeInfo;

    move-result-object v3

    .line 46
    .local v3, info:Lcom/android/thememanager/ThemeInfo;
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-nez v6, :cond_1

    .line 47
    if-eqz v3, :cond_4

    iget-wide v6, v3, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    move-wide v1, v6

    .line 48
    :goto_3
    iget-object v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mFileFlags:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_1
    iget-wide v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    invoke-static {v6, v7, v1, v2}, Lcom/android/thememanager/ThemeHelper;->matchThemeResource(JJ)Z

    move-result v6

    if-nez v6, :cond_5

    .line 52
    const/4 v6, 0x0

    goto :goto_0

    .line 40
    .end local v0           #cacheFlags:Ljava/lang/Long;
    .end local v1           #componentFlags:J
    .end local v3           #info:Lcom/android/thememanager/ThemeInfo;
    .end local v4           #previewFlags:J
    :cond_2
    iget-wide v6, p0, Lcom/android/thememanager/ThemeResourceFolder;->mResourceType:J

    move-wide v4, v6

    goto :goto_1

    .line 43
    .restart local v0       #cacheFlags:Ljava/lang/Long;
    .restart local v4       #previewFlags:J
    :cond_3
    const-wide/16 v6, 0x0

    move-wide v1, v6

    goto :goto_2

    .line 47
    .restart local v1       #componentFlags:J
    .restart local v3       #info:Lcom/android/thememanager/ThemeInfo;
    :cond_4
    const-wide/16 v6, 0x0

    move-wide v1, v6

    goto :goto_3

    :cond_5
    move-object v6, v3

    .line 54
    goto :goto_0
.end method

.method public loadData(Landroid/widget/AsyncAdapter$AsyncLoadDataTask;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AsyncAdapter",
            "<",
            "Lcom/miui/android/resourcebrowser/Resource;",
            ">.Async",
            "LoadDataTask;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, task:Landroid/widget/AsyncAdapter$AsyncLoadDataTask;,"Landroid/widget/AsyncAdapter<Lcom/miui/android/resourcebrowser/Resource;>.AsyncLoadDataTask;"
    invoke-direct {p0}, Lcom/android/thememanager/ThemeResourceFolder;->deleteOldResource()V

    .line 32
    invoke-super {p0, p1}, Lcom/miui/android/resourcebrowser/ZipResourceFolder;->loadData(Landroid/widget/AsyncAdapter$AsyncLoadDataTask;)V

    .line 33
    return-void
.end method
