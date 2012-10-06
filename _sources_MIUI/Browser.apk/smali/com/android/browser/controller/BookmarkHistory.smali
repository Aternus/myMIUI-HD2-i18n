.class public Lcom/android/browser/controller/BookmarkHistory;
.super Ljava/lang/Object;
.source "BookmarkHistory.java"


# static fields
.field public static final CLEAR_HISTORY_DATE:Ljava/lang/String; = "clear_history_date"

.field private static final LOGTAG:Ljava/lang/String; = "com.android.browser.controller.BookmarkHistory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBookmarkHistory(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IIJZI)V
    .locals 5
    .parameter "db"
    .parameter "url"
    .parameter "name"
    .parameter "favicon"
    .parameter "visits"
    .parameter "bookmark"
    .parameter "date"
    .parameter "retainIcon"
    .parameter "mode"

    .prologue
    .line 34
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 35
    .local v0, creationTime:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 38
    .local v2, map:Landroid/content/ContentValues;
    :try_start_0
    const-string v3, "title"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v3, "created"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 41
    const-string v3, "position"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v0           #creationTime:J
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 42
    const-string v0, "bookmark"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    .end local p5
    invoke-virtual {v2, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    const-string p5, "favicon"

    invoke-static {p3}, Lcom/android/browser/api_v8/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p3

    .end local p3
    invoke-virtual {v2, p5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 44
    const-string p3, "date"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {v2, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 45
    const-string p3, "mode"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v2, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    const-string p3, "visits"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .end local p4
    invoke-virtual {v2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    const-string p3, "searchable_url"

    invoke-static {p1}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getSearchable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string p3, "searchable_keywords"

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/String;

    const/4 p5, 0x0

    aput-object p1, p4, p5

    const/4 p5, 0x1

    aput-object p2, p4, p5

    invoke-static {p4}, Lcom/android/browser/model/MiRenUrlDataProvider;->getSearchableKeywords([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    invoke-virtual {v2, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string p2, "history"

    const-string p3, "url"

    invoke-virtual {p0, p2, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local p0
    :goto_0
    if-eqz p8, :cond_0

    .line 56
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void

    .line 51
    .restart local p0
    :catch_0
    move-exception p0

    .line 52
    .local p0, e:Ljava/lang/IllegalStateException;
    const-string p2, "com.android.browser.controller.BookmarkHistory"

    const-string p3, "addBookmarkHistory"

    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static clearHistory(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "context"
    .parameter "cr"

    .prologue
    .line 65
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    const-string v2, "visits > 0 AND bookmark = 0"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "clear_history_date"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method

.method public static importSystemDatabaseHistory(Landroid/content/Context;Landroid/content/ContentResolver;Z)Ljava/util/Set;
    .locals 19
    .parameter "context"
    .parameter "cr"
    .parameter "retainIcon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const-string v8, "visits DESC"

    .line 81
    .local v8, orderBy:Ljava/lang/String;
    const-string v6, "visits > 0"

    .line 82
    .local v6, whereClause:Ljava/lang/String;
    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 83
    .local p1, cursor:Landroid/database/Cursor;
    if-nez p1, :cond_0

    .line 84
    const/16 p0, 0x0

    .line 128
    .end local p0
    .end local p2
    :goto_0
    return-object p0

    .line 86
    .restart local p0
    .restart local p2
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 87
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 88
    const/16 p0, 0x0

    goto :goto_0

    .line 91
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 92
    .local v4, ret:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v3, Lcom/android/browser/model/BrowserDatabaseHelper;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/model/BrowserDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 93
    .local v3, dbHelper:Lcom/android/browser/model/BrowserDatabaseHelper;
    const/4 v9, 0x0

    .line 96
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v3}, Lcom/android/browser/model/BrowserDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 97
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 98
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .end local v3           #dbHelper:Lcom/android/browser/model/BrowserDatabaseHelper;
    .end local p0
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p0

    if-nez p0, :cond_a

    .line 99
    const/16 p0, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, url:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/browser/model/BrowserHistoryDataProvider;->isIllegalHistoryUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 98
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 117
    .end local v10           #url:Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 118
    .local p0, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string p2, "com.android.browser.controller.BookmarkHistory"

    .end local p2
    const-string v3, "error"

    move-object/from16 v0, p2

    move-object v1, v3

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p0

    .end local p0           #ex:Landroid/database/sqlite/SQLiteException;
    if-eqz p0, :cond_2

    .line 121
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 122
    :cond_2
    if-eqz p1, :cond_3

    .line 123
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_3
    if-eqz v9, :cond_4

    .line 125
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    :goto_3
    move-object/from16 p0, v4

    .line 128
    goto :goto_0

    .line 102
    .restart local v10       #url:Ljava/lang/String;
    .restart local p2
    :cond_5
    const/16 p0, 0x5

    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 103
    .local v11, title:Ljava/lang/String;
    const/16 p0, 0x3

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 104
    .local v15, date:J
    const/16 p0, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 105
    .local v13, visits:I
    const/16 p0, 0x4

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 106
    .local v14, bookmark:I
    const/16 p0, 0x6

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    .line 107
    .local p0, dataFavicon:[B
    if-eqz p0, :cond_9

    move-object/from16 v0, p0

    array-length v0, v0

    move v3, v0

    if-lez v3, :cond_9

    .line 108
    const/4 v3, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 113
    .local v12, favicon:Landroid/graphics/Bitmap;
    :goto_4
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    const/16 v18, 0x0

    move/from16 v17, p2

    invoke-static/range {v9 .. v18}, Lcom/android/browser/controller/BookmarkHistory;->addBookmarkHistory(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IIJZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 120
    .end local v10           #url:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #favicon:Landroid/graphics/Bitmap;
    .end local v13           #visits:I
    .end local v14           #bookmark:I
    .end local v15           #date:J
    .end local p0           #dataFavicon:[B
    .end local p2
    :catchall_0
    move-exception p0

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 121
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 122
    :cond_6
    if-eqz p1, :cond_7

    .line 123
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_7
    if-eqz v9, :cond_8

    .line 125
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    throw p0

    .line 110
    .restart local v10       #url:Ljava/lang/String;
    .restart local v11       #title:Ljava/lang/String;
    .restart local v13       #visits:I
    .restart local v14       #bookmark:I
    .restart local v15       #date:J
    .restart local p0       #dataFavicon:[B
    .restart local p2
    :cond_9
    const/4 v12, 0x0

    .restart local v12       #favicon:Landroid/graphics/Bitmap;
    goto :goto_4

    .line 116
    .end local v10           #url:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #favicon:Landroid/graphics/Bitmap;
    .end local v13           #visits:I
    .end local v14           #bookmark:I
    .end local v15           #date:J
    .end local p0           #dataFavicon:[B
    :cond_a
    :try_start_3
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 120
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 121
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 122
    :cond_b
    if-eqz p1, :cond_c

    .line 123
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_c
    if-eqz v9, :cond_4

    .line 125
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_3
.end method
