.class Lcom/android/browser/model/ForumPredictionUrlsProvider$1;
.super Landroid/os/AsyncTask;
.source "ForumPredictionUrlsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/model/ForumPredictionUrlsProvider;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/android/browser/model/ForumPredictionUrlsProvider;


# direct methods
.method constructor <init>(Lcom/android/browser/model/ForumPredictionUrlsProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider$1;->this$0:Lcom/android/browser/model/ForumPredictionUrlsProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/model/ForumPredictionUrlsProvider$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 21
    .parameter "params"

    .prologue
    .line 50
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/ForumPredictionUrlsProvider$1;->this$0:Lcom/android/browser/model/ForumPredictionUrlsProvider;

    move-object v4, v0

    #getter for: Lcom/android/browser/model/ForumPredictionUrlsProvider;->mIndexUrls:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/browser/model/ForumPredictionUrlsProvider;->access$000(Lcom/android/browser/model/ForumPredictionUrlsProvider;)Ljava/util/HashMap;

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 52
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/ForumPredictionUrlsProvider$1;->this$0:Lcom/android/browser/model/ForumPredictionUrlsProvider;

    move-object v4, v0

    #getter for: Lcom/android/browser/model/ForumPredictionUrlsProvider;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/browser/model/ForumPredictionUrlsProvider;->access$100(Lcom/android/browser/model/ForumPredictionUrlsProvider;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    .line 53
    .local v11, am:Landroid/content/res/AssetManager;
    const-string v4, "forum_urls.json"

    invoke-virtual {v11, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    .line 54
    .local v19, stream:Ljava/io/InputStream;
    invoke-static/range {v19 .. v19}, Lcom/android/browser/common/Strings;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    .line 55
    .local v16, jsonText:Ljava/lang/String;
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v17, obj:Lorg/json/JSONObject;
    const-string v4, "index_pages"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 57
    .local v15, indexPages:Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v14, v4, :cond_0

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/ForumPredictionUrlsProvider$1;->this$0:Lcom/android/browser/model/ForumPredictionUrlsProvider;

    move-object v4, v0

    #getter for: Lcom/android/browser/model/ForumPredictionUrlsProvider;->mIndexUrls:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/browser/model/ForumPredictionUrlsProvider;->access$000(Lcom/android/browser/model/ForumPredictionUrlsProvider;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 62
    :cond_0
    const-string v4, "page_exprs"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 63
    .local v18, pageExprs:Lorg/json/JSONArray;
    const/4 v14, 0x0

    :goto_1
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v14, v4, :cond_1

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/ForumPredictionUrlsProvider$1;->this$0:Lcom/android/browser/model/ForumPredictionUrlsProvider;

    move-object v4, v0

    #getter for: Lcom/android/browser/model/ForumPredictionUrlsProvider;->mPageExprs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/browser/model/ForumPredictionUrlsProvider;->access$200(Lcom/android/browser/model/ForumPredictionUrlsProvider;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 68
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/ForumPredictionUrlsProvider$1;->this$0:Lcom/android/browser/model/ForumPredictionUrlsProvider;

    move-object v4, v0

    #getter for: Lcom/android/browser/model/ForumPredictionUrlsProvider;->mHeaderDBHelper:Lcom/android/browser/model/HttpHeaderDatabaseHelper;
    invoke-static {v4}, Lcom/android/browser/model/ForumPredictionUrlsProvider;->access$300(Lcom/android/browser/model/ForumPredictionUrlsProvider;)Lcom/android/browser/model/HttpHeaderDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/model/HttpHeaderDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 69
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v3, :cond_4

    .line 70
    const-string v4, "forums"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 72
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 73
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    .line 74
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 75
    .local v20, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/ForumPredictionUrlsProvider$1;->this$0:Lcom/android/browser/model/ForumPredictionUrlsProvider;

    move-object v4, v0

    #getter for: Lcom/android/browser/model/ForumPredictionUrlsProvider;->mIndexUrls:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/browser/model/ForumPredictionUrlsProvider;->access$000(Lcom/android/browser/model/ForumPredictionUrlsProvider;)Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 73
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 84
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #am:Landroid/content/res/AssetManager;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v14           #i:I
    .end local v15           #indexPages:Lorg/json/JSONArray;
    .end local v16           #jsonText:Ljava/lang/String;
    .end local v17           #obj:Lorg/json/JSONObject;
    .end local v18           #pageExprs:Lorg/json/JSONArray;
    .end local v19           #stream:Ljava/io/InputStream;
    .end local v20           #url:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 86
    :catch_0
    move-exception v4

    move-object v13, v4

    .line 87
    .local v13, e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/browser/model/ForumPredictionUrlsProvider;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error to open file"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v13           #e:Ljava/io/IOException;
    :goto_3
    const/4 v4, 0x0

    return-object v4

    .line 79
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11       #am:Landroid/content/res/AssetManager;
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v14       #i:I
    .restart local v15       #indexPages:Lorg/json/JSONArray;
    .restart local v16       #jsonText:Ljava/lang/String;
    .restart local v17       #obj:Lorg/json/JSONObject;
    .restart local v18       #pageExprs:Lorg/json/JSONArray;
    .restart local v19       #stream:Ljava/io/InputStream;
    :cond_2
    if-eqz v12, :cond_3

    .line 80
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 84
    .end local v12           #c:Landroid/database/Cursor;
    :cond_4
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 88
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #am:Landroid/content/res/AssetManager;
    .end local v14           #i:I
    .end local v15           #indexPages:Lorg/json/JSONArray;
    .end local v16           #jsonText:Ljava/lang/String;
    .end local v17           #obj:Lorg/json/JSONObject;
    .end local v18           #pageExprs:Lorg/json/JSONArray;
    .end local v19           #stream:Ljava/io/InputStream;
    :catch_1
    move-exception v4

    move-object v13, v4

    .line 89
    .local v13, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/android/browser/model/ForumPredictionUrlsProvider;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error to parse JSON"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 90
    .end local v13           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v4

    move-object v13, v4

    .line 91
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lcom/android/browser/model/ForumPredictionUrlsProvider;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error to execute SQL"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
