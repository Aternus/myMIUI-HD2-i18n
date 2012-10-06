.class final Lcom/android/browser/model/ReadingModeCacheManager$1;
.super Landroid/os/AsyncTask;
.source "ReadingModeCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/ReadingModeCacheManager;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/model/ReadingModeCacheManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 22
    .parameter "params"

    .prologue
    .line 47
    invoke-static {}, Lcom/android/browser/model/ReadingModeCacheManager;->access$000()Ljava/util/ArrayList;

    move-result-object v18

    monitor-enter v18

    .line 49
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    #calls: Lcom/android/browser/model/ReadingModeCacheManager;->getCacheFolderPath()Ljava/lang/String;
    invoke-static {}, Lcom/android/browser/model/ReadingModeCacheManager;->access$100()Ljava/lang/String;

    move-result-object v19

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .local v6, filePath:Ljava/lang/StringBuilder;
    new-instance v15, Ljava/io/File;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v15, path:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_0

    .line 52
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_0
    const-string v19, "CacheList"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    const/4 v7, 0x0

    .line 57
    .local v7, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_2

    .line 60
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 61
    const/16 v19, 0x0

    .line 84
    if-eqz v7, :cond_1

    .line 86
    :try_start_2
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v18

    move-object/from16 v18, v19

    .line 92
    .end local v5           #file:Ljava/io/File;
    :goto_1
    return-object v18

    .line 87
    .restart local v5       #file:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 88
    .local v4, e:Ljava/io/IOException;
    const-string v20, "com.android.browser.model.ReadingModeCacheManager"

    const-string v21, "cannot close the stream"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 93
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #filePath:Ljava/lang/StringBuilder;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v15           #path:Ljava/io/File;
    :catchall_0
    move-exception v19

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v19

    .line 63
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #filePath:Ljava/lang/StringBuilder;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v15       #path:Ljava/io/File;
    :cond_2
    :try_start_4
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 64
    .end local v7           #fis:Ljava/io/FileInputStream;
    .local v8, fis:Ljava/io/FileInputStream;
    :try_start_5
    invoke-static {v8}, Lcom/android/browser/common/Strings;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    .line 65
    .local v11, listText:Ljava/lang/String;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    .local v13, obj:Lorg/json/JSONObject;
    const-string v19, "cached_list"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 67
    .local v3, cachedList:Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v19

    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 68
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 69
    .local v14, oneList:Lorg/json/JSONObject;
    const-string v19, "url_list"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 70
    .local v17, urlList:Lorg/json/JSONArray;
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    .local v12, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, j:I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v19

    move v0, v10

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 72
    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 73
    .local v16, url:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, v16

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 75
    .end local v16           #url:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/browser/model/ReadingModeCacheManager;->access$000()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7

    .line 67
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 84
    .end local v10           #j:I
    .end local v12           #map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14           #oneList:Lorg/json/JSONObject;
    .end local v17           #urlList:Lorg/json/JSONArray;
    :cond_4
    if-eqz v8, :cond_7

    .line 86
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v7, v8

    .line 92
    .end local v3           #cachedList:Lorg/json/JSONArray;
    .end local v5           #file:Ljava/io/File;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v9           #i:I
    .end local v11           #listText:Ljava/lang/String;
    .end local v13           #obj:Lorg/json/JSONObject;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :cond_5
    :goto_4
    const/16 v19, 0x0

    :try_start_7
    monitor-exit v18

    move-object/from16 v18, v19

    goto :goto_1

    .line 87
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v3       #cachedList:Lorg/json/JSONArray;
    .restart local v5       #file:Ljava/io/File;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v9       #i:I
    .restart local v11       #listText:Ljava/lang/String;
    .restart local v13       #obj:Lorg/json/JSONObject;
    :catch_1
    move-exception v4

    .line 88
    .restart local v4       #e:Ljava/io/IOException;
    const-string v19, "com.android.browser.model.ReadingModeCacheManager"

    const-string v20, "cannot close the stream"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v7, v8

    .line 89
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 78
    .end local v3           #cachedList:Lorg/json/JSONArray;
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #file:Ljava/io/File;
    .end local v9           #i:I
    .end local v11           #listText:Ljava/lang/String;
    .end local v13           #obj:Lorg/json/JSONObject;
    :catch_2
    move-exception v19

    move-object/from16 v4, v19

    .line 79
    .restart local v4       #e:Ljava/io/IOException;
    :goto_5
    :try_start_8
    const-string v19, "com.android.browser.model.ReadingModeCacheManager"

    const-string v20, "error when opening the file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 84
    if-eqz v7, :cond_5

    .line 86
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    .line 87
    :catch_3
    move-exception v4

    .line 88
    :try_start_a
    const-string v19, "com.android.browser.model.ReadingModeCacheManager"

    const-string v20, "cannot close the stream"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 80
    .end local v4           #e:Ljava/io/IOException;
    :catch_4
    move-exception v19

    move-object/from16 v4, v19

    .line 81
    .local v4, e:Lorg/json/JSONException;
    :goto_6
    :try_start_b
    const-string v19, "com.android.browser.model.ReadingModeCacheManager"

    const-string v20, "cannot parse the file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 84
    if-eqz v7, :cond_5

    .line 86
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_4

    .line 87
    :catch_5
    move-exception v4

    .line 88
    .local v4, e:Ljava/io/IOException;
    :try_start_d
    const-string v19, "com.android.browser.model.ReadingModeCacheManager"

    const-string v20, "cannot close the stream"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_4

    .line 84
    .end local v4           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v19

    :goto_7
    if-eqz v7, :cond_6

    .line 86
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 89
    :cond_6
    :goto_8
    :try_start_f
    throw v19

    .line 87
    :catch_6
    move-exception v4

    .line 88
    .restart local v4       #e:Ljava/io/IOException;
    const-string v20, "com.android.browser.model.ReadingModeCacheManager"

    const-string v21, "cannot close the stream"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_8

    .line 84
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v5       #file:Ljava/io/File;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v19

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .line 80
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v19

    move-object/from16 v4, v19

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 78
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v19

    move-object/from16 v4, v19

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v3       #cachedList:Lorg/json/JSONArray;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v9       #i:I
    .restart local v11       #listText:Ljava/lang/String;
    .restart local v13       #obj:Lorg/json/JSONObject;
    :cond_7
    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_4
.end method
