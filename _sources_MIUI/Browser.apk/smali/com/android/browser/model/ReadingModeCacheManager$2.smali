.class final Lcom/android/browser/model/ReadingModeCacheManager$2;
.super Landroid/os/AsyncTask;
.source "ReadingModeCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/model/ReadingModeCacheManager;->writeBackCachedList()V
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
    .line 200
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/model/ReadingModeCacheManager$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 16
    .parameter "params"

    .prologue
    .line 204
    invoke-static {}, Lcom/android/browser/model/ReadingModeCacheManager;->access$000()Ljava/util/ArrayList;

    move-result-object v12

    monitor-enter v12

    .line 206
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    #calls: Lcom/android/browser/model/ReadingModeCacheManager;->getCacheFolderPath()Ljava/lang/String;
    invoke-static {}, Lcom/android/browser/model/ReadingModeCacheManager;->access$100()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .local v3, filePath:Ljava/lang/StringBuilder;
    const-string v13, "CacheList"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    const/4 v4, 0x0

    .line 210
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 211
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 212
    .local v9, obj:Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 213
    .local v0, allList:Lorg/json/JSONArray;
    const-string v13, "cached_list"

    invoke-virtual {v9, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    invoke-static {}, Lcom/android/browser/model/ReadingModeCacheManager;->access$000()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/LinkedHashMap;

    .line 215
    .local v10, oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 216
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 217
    .local v11, oneListObj:Lorg/json/JSONObject;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 218
    .local v8, listArray:Lorg/json/JSONArray;
    const-string v13, "url_list"

    invoke-virtual {v11, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 220
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 221
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    goto :goto_1

    .line 227
    .end local v0           #allList:Lorg/json/JSONArray;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8           #listArray:Lorg/json/JSONArray;
    .end local v9           #obj:Lorg/json/JSONObject;
    .end local v10           #oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #oneListObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v13

    move-object v1, v13

    move-object v4, v5

    .line 228
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    const-string v13, "com.android.browser.model.ReadingModeCacheManager"

    const-string v14, "the cache file is not found"

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 235
    if-eqz v4, :cond_0

    .line 237
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 243
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_3
    const/4 v13, 0x0

    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v13

    .line 223
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #allList:Lorg/json/JSONArray;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v8       #listArray:Lorg/json/JSONArray;
    .restart local v9       #obj:Lorg/json/JSONObject;
    .restart local v10       #oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11       #oneListObj:Lorg/json/JSONObject;
    :cond_1
    :try_start_6
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_0

    .line 229
    .end local v0           #allList:Lorg/json/JSONArray;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8           #listArray:Lorg/json/JSONArray;
    .end local v9           #obj:Lorg/json/JSONObject;
    .end local v10           #oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #oneListObj:Lorg/json/JSONObject;
    :catch_1
    move-exception v13

    move-object v1, v13

    move-object v4, v5

    .line 230
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v1, e:Lorg/json/JSONException;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_4
    :try_start_7
    const-string v13, "com.android.browser.model.ReadingModeCacheManager"

    const-string v14, "construct the JSON object error"

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 235
    if-eqz v4, :cond_0

    .line 237
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 238
    :catch_2
    move-exception v1

    .line 239
    .local v1, e:Ljava/io/IOException;
    :try_start_9
    const-string v13, "com.android.browser.model.ReadingModeCacheManager"

    const-string v14, "close stream error"

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 244
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #filePath:Ljava/lang/StringBuilder;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v13

    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v13

    .line 225
    .restart local v0       #allList:Lorg/json/JSONArray;
    .restart local v3       #filePath:Ljava/lang/StringBuilder;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #obj:Lorg/json/JSONObject;
    :cond_2
    :try_start_a
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 226
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 235
    if-eqz v5, :cond_4

    .line 237
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    move-object v4, v5

    .line 240
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 238
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 239
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_c
    const-string v13, "com.android.browser.model.ReadingModeCacheManager"

    const-string v14, "close stream error"

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 240
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 238
    .end local v0           #allList:Lorg/json/JSONArray;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #obj:Lorg/json/JSONObject;
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .line 239
    .local v1, e:Ljava/io/IOException;
    const-string v13, "com.android.browser.model.ReadingModeCacheManager"

    const-string v14, "close stream error"

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    .line 231
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v13

    move-object v1, v13

    .line 232
    .restart local v1       #e:Ljava/io/IOException;
    :goto_5
    :try_start_d
    const-string v13, "com.android.browser.model.ReadingModeCacheManager"

    const-string v14, "write file error"

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 235
    if-eqz v4, :cond_0

    .line 237
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_3

    .line 238
    :catch_6
    move-exception v1

    .line 239
    :try_start_f
    const-string v13, "com.android.browser.model.ReadingModeCacheManager"

    const-string v14, "close stream error"

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_3

    .line 235
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v13

    :goto_6
    if-eqz v4, :cond_3

    .line 237
    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 240
    :cond_3
    :goto_7
    :try_start_11
    throw v13

    .line 238
    :catch_7
    move-exception v1

    .line 239
    .restart local v1       #e:Ljava/io/IOException;
    const-string v14, "com.android.browser.model.ReadingModeCacheManager"

    const-string v15, "close stream error"

    invoke-static {v14, v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_7

    .line 235
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v13

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 231
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v13

    move-object v1, v13

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 229
    :catch_9
    move-exception v13

    move-object v1, v13

    goto :goto_4

    .line 227
    :catch_a
    move-exception v13

    move-object v1, v13

    goto/16 :goto_2

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #allList:Lorg/json/JSONArray;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #obj:Lorg/json/JSONObject;
    :cond_4
    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method
