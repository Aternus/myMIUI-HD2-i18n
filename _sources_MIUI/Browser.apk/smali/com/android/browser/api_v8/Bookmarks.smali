.class public Lcom/android/browser/api_v8/Bookmarks;
.super Ljava/lang/Object;
.source "Bookmarks.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "com.android.browser.Bookmarks"

.field private static final acceptableBookmarkSchemes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "about:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "javascript:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "file:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "content:"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/api_v8/Bookmarks;->acceptableBookmarkSchemes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;IJFZIZ)J
    .locals 15
    .parameter "context"
    .parameter "cr"
    .parameter "url"
    .parameter "name"
    .parameter "folderId"
    .parameter "thumbnail"
    .parameter "favicon"
    .parameter "visits"
    .parameter "date"
    .parameter "position"
    .parameter "retainIcon"
    .parameter "mode"
    .parameter "isShowToast"

    .prologue
    .line 93
    new-instance p10, Ljava/util/Date;

    .end local p10
    invoke-direct/range {p10 .. p10}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {p10 .. p10}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 94
    .local v5, creationTime:J
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v10, map:Landroid/content/ContentValues;
    const/16 p10, 0x0

    .line 96
    .local p10, cursor:Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 98
    .local v8, id:J
    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/android/browser/api_v8/BrowserInternal;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    .line 99
    .end local p10           #cursor:Landroid/database/Cursor;
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_1

    .line 190
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_0
    move-wide/from16 p1, v8

    .end local v8           #id:J
    .end local p2
    .local p1, id:J
    move-object p0, v11

    .end local v11           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    move-wide/from16 p3, v8

    .line 210
    .end local v5           #creationTime:J
    .end local v10           #map:Landroid/content/ContentValues;
    .end local p1           #id:J
    .end local p3
    .end local p4
    .end local p5
    .end local p6
    .end local p8
    :goto_0
    return-wide p3

    .line 101
    .restart local v5       #creationTime:J
    .restart local v8       #id:J
    .restart local v10       #map:Landroid/content/ContentValues;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .local p1, cr:Landroid/content/ContentResolver;
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    .restart local p6
    .restart local p8
    :cond_1
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p10

    if-eqz p10, :cond_9

    const/16 p10, 0x4

    move-object v0, v11

    move/from16 v1, p10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p10

    if-nez p10, :cond_9

    .line 105
    const-string p8, "created"

    .end local p8
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p9

    move-object v0, v10

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    const-string p8, "position"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p9

    move-object v0, v10

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    if-eqz p5, :cond_2

    .line 108
    const-string p8, "thumbnail"

    invoke-static/range {p5 .. p5}, Lcom/android/browser/api_v8/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p9

    move-object v0, v10

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 109
    :cond_2
    move-object v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/browser/util/MiRenWebViewUtils;->isValidTitle(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p8

    if-eqz p8, :cond_3

    .line 110
    const-string p8, "title"

    move-object v0, v10

    move-object/from16 v1, p8

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_3
    const-string p3, "bookmark"

    .end local p3
    const/16 p8, 0x1

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string p3, "favicon"

    invoke-static/range {p6 .. p6}, Lcom/android/browser/api_v8/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p6

    .end local p6
    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 114
    const-string p3, "mode"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    if-ltz p4, :cond_4

    .line 116
    const-string p3, "folder_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .end local p4
    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    :cond_4
    sget-object p3, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    const-string p4, "_id = ?"

    const/16 p6, 0x1

    move/from16 v0, p6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p6, v0

    const/16 p8, 0x0

    const/16 p9, 0x0

    move-object v0, v11

    move/from16 v1, p9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p9

    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p9

    aput-object p9, p6, p8

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v10

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 119
    const/16 p1, 0x0

    move-object v0, v11

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    .end local p1           #cr:Landroid/content/ContentResolver;
    move-result p1

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 p3, v0

    .line 190
    .end local v5           #creationTime:J
    .end local v8           #id:J
    .end local v10           #map:Landroid/content/ContentValues;
    .local p3, id:J
    :cond_5
    :goto_1
    if-eqz v11, :cond_12

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object/from16 p1, v11

    .line 192
    .end local v11           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    :goto_2
    if-eqz p11, :cond_6

    .line 193
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object p6

    move-object/from16 v0, p6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    .line 195
    :cond_6
    if-eqz p0, :cond_7

    const/16 p2, 0x1

    move/from16 v0, p13

    move/from16 v1, p2

    if-ne v0, v1, :cond_7

    .line 196
    .end local p2
    const p2, 0x7f090020

    const/16 p6, 0x0

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Landroid/widget/Toast;->show()V

    .line 200
    :cond_7
    move-wide/from16 v0, p3

    long-to-int v0, v0

    move/from16 p2, v0

    .line 201
    .local p2, newItemId:I
    if-eqz p5, :cond_8

    .line 203
    new-instance p5, Lcom/android/browser/api_v8/Bookmarks$1;

    .end local p5
    move-object/from16 v0, p5

    move-object v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/browser/api_v8/Bookmarks$1;-><init>(Landroid/content/Context;I)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .end local p0           #context:Landroid/content/Context;
    move-object/from16 v0, p5

    move-object v1, p0

    invoke-virtual {v0, v1}, Lcom/android/browser/api_v8/Bookmarks$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_8
    move-object/from16 p0, p1

    .end local p1           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    move-wide/from16 p1, p3

    .line 210
    .end local p2           #newItemId:I
    .end local p3           #id:J
    .local p1, id:J
    goto/16 :goto_0

    .line 121
    .restart local v5       #creationTime:J
    .restart local v8       #id:J
    .restart local v10       #map:Landroid/content/ContentValues;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .local p1, cr:Landroid/content/ContentResolver;
    .local p2, url:Ljava/lang/String;
    .local p3, name:Ljava/lang/String;
    .restart local p4
    .restart local p5
    .restart local p6
    .restart local p8
    :cond_9
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result p10

    .line 122
    .local p10, count:I
    const/4 v12, 0x0

    .line 123
    .local v12, matchedTitle:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    move v0, v7

    move/from16 v1, p10

    if-ge v0, v1, :cond_15

    .line 126
    invoke-interface {v11, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 127
    const/4 v13, 0x5

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 128
    .local v13, oldTitle:Ljava/lang/String;
    if-eqz v13, :cond_e

    move-object v0, v13

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .end local v13           #oldTitle:Ljava/lang/String;
    if-eqz v13, :cond_e

    .line 131
    const-string v7, "position"

    .end local v7           #i:I
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .end local v12           #matchedTitle:Z
    invoke-virtual {v10, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string v7, "created"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    if-eqz p5, :cond_a

    .line 135
    const-string v7, "thumbnail"

    invoke-static/range {p5 .. p5}, Lcom/android/browser/api_v8/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v12

    invoke-virtual {v10, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 136
    :cond_a
    sget-object v7, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object v1, v7

    move-object v2, v10

    move-object v3, v12

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 138
    const/4 v12, 0x1

    .line 139
    .restart local v12       #matchedTitle:Z
    const/4 v7, 0x0

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v7

    int-to-long v7, v7

    .end local v8           #id:J
    .local v7, id:J
    move v14, v12

    .end local v12           #matchedTitle:Z
    .local v14, matchedTitle:Z
    move-wide v12, v7

    .end local v7           #id:J
    .local v12, id:J
    move v7, v14

    .line 143
    .end local v14           #matchedTitle:Z
    .local v7, matchedTitle:Z
    :goto_4
    if-nez v7, :cond_14

    .line 147
    :try_start_3
    const-string v7, "title"

    .end local v7           #matchedTitle:Z
    move-object v0, v10

    move-object v1, v7

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string p3, "url"

    .end local p3           #name:Ljava/lang/String;
    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string p3, "created"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, v10

    move-object/from16 v1, p3

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 150
    const-string p3, "position"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .end local v5           #creationTime:J
    move-object v0, v10

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    const-string p3, "bookmark"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v10

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    if-eqz p5, :cond_b

    .line 153
    const-string p3, "thumbnail"

    invoke-static/range {p5 .. p5}, Lcom/android/browser/api_v8/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    move-object v0, v10

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 154
    :cond_b
    const-string p3, "favicon"

    invoke-static/range {p6 .. p6}, Lcom/android/browser/api_v8/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p6

    .end local p6
    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 156
    const-string p3, "date"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    const-string p3, "mode"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    if-ltz p4, :cond_c

    .line 159
    const-string p3, "folder_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .end local p4
    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    :cond_c
    if-lez p10, :cond_d

    .line 166
    const/16 p3, 0x2

    move-object v0, v11

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p7

    .line 171
    :cond_d
    if-nez p7, :cond_f

    .line 172
    const-string p3, "visits"

    add-int/lit8 p4, p7, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    :goto_5
    sget-object p3, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 179
    .local v6, newRow:Landroid/net/Uri;
    sget-object v7, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v10           #map:Landroid/content/ContentValues;
    move-result-object p1

    .line 180
    .local p1, newCursor:Landroid/database/Cursor;
    if-eqz p1, :cond_13

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_13

    .line 181
    const/16 p3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    move-result p3

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 p3, v0

    .line 183
    .end local v12           #id:J
    .local p3, id:J
    :goto_6
    if-eqz p1, :cond_5

    :try_start_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p6

    if-nez p6, :cond_5

    .line 184
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 187
    :catch_0
    move-exception p1

    move-wide/from16 p8, p3

    .end local p3           #id:J
    .local p8, id:J
    move-object/from16 p3, p1

    move-object/from16 p1, v11

    .line 188
    .end local v6           #newRow:Landroid/net/Uri;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local p10           #count:I
    .local p1, cursor:Landroid/database/Cursor;
    .local p3, e:Ljava/lang/IllegalStateException;
    :goto_7
    :try_start_5
    const-string p4, "com.android.browser.Bookmarks"

    const-string p6, "addBookmark"

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 190
    if-eqz p1, :cond_11

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-wide/from16 p3, p8

    .end local p8           #id:J
    .local p3, id:J
    goto/16 :goto_2

    .line 123
    .restart local v5       #creationTime:J
    .local v7, i:I
    .restart local v8       #id:J
    .restart local v10       #map:Landroid/content/ContentValues;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .local v12, matchedTitle:Z
    .local p1, cr:Landroid/content/ContentResolver;
    .local p3, name:Ljava/lang/String;
    .restart local p4
    .restart local p6
    .local p8, date:J
    .restart local p10       #count:I
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 175
    .end local v5           #creationTime:J
    .end local v7           #i:I
    .end local v8           #id:J
    .end local p3           #name:Ljava/lang/String;
    .end local p4
    .end local p6
    .local v12, id:J
    :cond_f
    :try_start_6
    const-string p3, "visits"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    .line 187
    .end local v10           #map:Landroid/content/ContentValues;
    .end local p1           #cr:Landroid/content/ContentResolver;
    :catch_1
    move-exception p1

    move-object/from16 p3, p1

    move-wide/from16 p8, v12

    .end local v12           #id:J
    .local p8, id:J
    move-object/from16 p1, v11

    .end local v11           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    goto :goto_7

    .line 190
    .restart local v5       #creationTime:J
    .restart local v8       #id:J
    .restart local v10       #map:Landroid/content/ContentValues;
    .local p1, cr:Landroid/content/ContentResolver;
    .restart local p3       #name:Ljava/lang/String;
    .restart local p4
    .restart local p6
    .local p8, date:J
    .local p10, cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v8

    .end local v8           #id:J
    .end local p2           #url:Ljava/lang/String;
    .local p1, id:J
    move-object/from16 p0, p10

    .end local v5           #creationTime:J
    .end local v10           #map:Landroid/content/ContentValues;
    .end local p3           #name:Ljava/lang/String;
    .end local p4
    .end local p6
    .end local p8           #date:J
    .end local p10           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    :goto_8
    if-eqz p0, :cond_10

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_10
    throw p3

    .end local p1           #id:J
    .restart local v5       #creationTime:J
    .restart local v8       #id:J
    .restart local v10       #map:Landroid/content/ContentValues;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .restart local p2       #url:Ljava/lang/String;
    :catchall_1
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v8

    .end local v8           #id:J
    .end local p2           #url:Ljava/lang/String;
    .restart local p1       #id:J
    move-object p0, v11

    .end local v11           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_8

    .end local v5           #creationTime:J
    .end local v10           #map:Landroid/content/ContentValues;
    .end local p1           #id:J
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #id:J
    .local p0, context:Landroid/content/Context;
    .restart local p2       #url:Ljava/lang/String;
    .restart local p8       #date:J
    .local p10, count:I
    :catchall_2
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v12

    .end local v12           #id:J
    .end local p2           #url:Ljava/lang/String;
    .restart local p1       #id:J
    move-object p0, v11

    .end local v11           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_8

    .restart local v6       #newRow:Landroid/net/Uri;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .local p1, newCursor:Landroid/database/Cursor;
    .restart local p2       #url:Ljava/lang/String;
    .local p3, id:J
    :catchall_3
    move-exception p0

    move-wide/from16 p1, p3

    .end local p2           #url:Ljava/lang/String;
    .end local p3           #id:J
    .local p1, id:J
    move-object/from16 p3, p0

    move-object p0, v11

    .end local v11           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_8

    .end local v6           #newRow:Landroid/net/Uri;
    .end local p10           #count:I
    .local p0, context:Landroid/content/Context;
    .local p1, cursor:Landroid/database/Cursor;
    .restart local p2       #url:Ljava/lang/String;
    .local p3, e:Ljava/lang/IllegalStateException;
    .local p8, id:J
    :catchall_4
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p0, p1

    .end local p1           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    move-wide/from16 p1, p8

    .end local p2           #url:Ljava/lang/String;
    .end local p8           #id:J
    .local p1, id:J
    goto :goto_8

    .line 187
    .restart local v5       #creationTime:J
    .restart local v8       #id:J
    .restart local v10       #map:Landroid/content/ContentValues;
    .local p0, context:Landroid/content/Context;
    .local p1, cr:Landroid/content/ContentResolver;
    .restart local p2       #url:Ljava/lang/String;
    .local p3, name:Ljava/lang/String;
    .restart local p4
    .restart local p6
    .local p8, date:J
    .local p10, cursor:Landroid/database/Cursor;
    :catch_2
    move-exception p1

    move-object/from16 p3, p1

    move-wide/from16 p8, v8

    .end local v8           #id:J
    .local p8, id:J
    move-object/from16 p1, p10

    .end local p10           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    goto :goto_7

    .end local p1           #cursor:Landroid/database/Cursor;
    .end local p3           #name:Ljava/lang/String;
    .end local p4
    .end local p6
    .end local p8           #id:J
    .restart local v8       #id:J
    .restart local v11       #cursor:Landroid/database/Cursor;
    :catch_3
    move-exception p1

    move-object/from16 p3, p1

    move-wide/from16 p8, v8

    .end local v8           #id:J
    .restart local p8       #id:J
    move-object/from16 p1, v11

    .end local v11           #cursor:Landroid/database/Cursor;
    .restart local p1       #cursor:Landroid/database/Cursor;
    goto :goto_7

    .end local v5           #creationTime:J
    .end local v10           #map:Landroid/content/ContentValues;
    .local p3, e:Ljava/lang/IllegalStateException;
    :cond_11
    move-wide/from16 p3, p8

    .end local p8           #id:J
    .local p3, id:J
    goto/16 :goto_2

    .end local p1           #cursor:Landroid/database/Cursor;
    .restart local v11       #cursor:Landroid/database/Cursor;
    :cond_12
    move-object/from16 p1, v11

    .end local v11           #cursor:Landroid/database/Cursor;
    .restart local p1       #cursor:Landroid/database/Cursor;
    goto/16 :goto_2

    .end local p3           #id:J
    .restart local v6       #newRow:Landroid/net/Uri;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #id:J
    .local p1, newCursor:Landroid/database/Cursor;
    .local p8, date:J
    .local p10, count:I
    :cond_13
    move-wide/from16 p3, v12

    .end local v12           #id:J
    .restart local p3       #id:J
    goto/16 :goto_6

    .end local v6           #newRow:Landroid/net/Uri;
    .restart local v5       #creationTime:J
    .local v7, matchedTitle:Z
    .restart local v10       #map:Landroid/content/ContentValues;
    .restart local v12       #id:J
    .local p1, cr:Landroid/content/ContentResolver;
    .local p3, name:Ljava/lang/String;
    .restart local p4
    .restart local p6
    :cond_14
    move-wide/from16 p3, v12

    .end local v12           #id:J
    .end local p4
    .local p3, id:J
    goto/16 :goto_1

    .local v7, i:I
    .restart local v8       #id:J
    .local v12, matchedTitle:Z
    .local p3, name:Ljava/lang/String;
    .restart local p4
    :cond_15
    move v7, v12

    .end local v12           #matchedTitle:Z
    .local v7, matchedTitle:Z
    move-wide v12, v8

    .end local v8           #id:J
    .local v12, id:J
    goto/16 :goto_4
.end method

.method public static addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZI)J
    .locals 14
    .parameter "context"
    .parameter "cr"
    .parameter "url"
    .parameter "name"
    .parameter "thumbnail"
    .parameter "favicon"
    .parameter "retainIcon"
    .parameter "mode"

    .prologue
    .line 218
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 219
    .local v0, position:J
    const/4 v4, -0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    long-to-float v10, v0

    const/4 v13, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-static/range {v0 .. v13}, Lcom/android/browser/api_v8/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;IJFZIZ)J

    .end local v0           #position:J
    move-result-wide p0

    .end local p0
    return-wide p0
.end method

.method public static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .parameter "bm"

    .prologue
    .line 701
    if-nez p0, :cond_0

    .line 702
    const/4 v1, 0x0

    .line 707
    :goto_0
    return-object v1

    .line 705
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 706
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 707
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static getBookmarkIdFromUrl(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "cr"
    .parameter "url"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 383
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const/4 v0, -0x1

    .line 397
    :goto_0
    return v0

    .line 386
    :cond_0
    const/4 v7, -0x1

    .line 388
    .local v7, result:I
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "url = ? OR url = ? AND bookmark = ? "

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p2, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string v5, "1"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 394
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 396
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 397
    goto :goto_0
.end method

.method public static getTitle(Landroid/content/Context;Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "cr"
    .parameter "id"

    .prologue
    .line 402
    const-string v7, ""

    .line 403
    .local v7, result:Ljava/lang/String;
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 407
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 409
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 410
    return-object v7
.end method

.method public static importBookmark(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IJFZ)V
    .locals 12
    .parameter "db"
    .parameter "url"
    .parameter "name"
    .parameter "thumbnail"
    .parameter "favicon"
    .parameter "visits"
    .parameter "date"
    .parameter "position"
    .parameter "retainIcon"

    .prologue
    .line 601
    const/4 v11, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move v10, v11

    invoke-static/range {v0 .. v10}, Lcom/android/browser/api_v8/Bookmarks;->importBookmark(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IJFZI)V

    .line 602
    return-void
.end method

.method public static importBookmark(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IJFZI)V
    .locals 14
    .parameter "db"
    .parameter "url"
    .parameter "name"
    .parameter "thumbnail"
    .parameter "favicon"
    .parameter "visits"
    .parameter "date"
    .parameter "position"
    .parameter "retainIcon"
    .parameter "folderId"

    .prologue
    .line 484
    new-instance p8, Ljava/util/Date;

    .end local p8
    invoke-direct/range {p8 .. p8}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {p8 .. p8}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 485
    .local v5, creationTime:J
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 486
    .local v9, map:Landroid/content/ContentValues;
    const/16 p8, 0x0

    .line 488
    .local p8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/browser/api_v8/BrowserInternal;->getVisitedLike(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 489
    .end local p8           #cursor:Landroid/database/Cursor;
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 575
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object p0, v7

    .line 581
    .end local v5           #creationTime:J
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local p2
    .end local p3
    .end local p4
    .end local p6
    .end local p10
    .local p0, cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 491
    .restart local v5       #creationTime:J
    .restart local v7       #cursor:Landroid/database/Cursor;
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p6
    .restart local p10
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p8

    if-eqz p8, :cond_7

    const/16 p8, 0x4

    move-object v0, v7

    move/from16 v1, p8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p8

    if-nez p8, :cond_7

    .line 494
    const-string p8, "created"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object v0, v9

    move-object/from16 v1, p8

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 495
    const-string p8, "position"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .end local v5           #creationTime:J
    move-object v0, v9

    move-object/from16 v1, p8

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 496
    if-eqz p3, :cond_3

    .line 497
    const-string p8, "thumbnail"

    invoke-static/range {p3 .. p3}, Lcom/android/browser/api_v8/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p3

    .end local p3
    move-object v0, v9

    move-object/from16 v1, p8

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 498
    :cond_3
    if-ltz p10, :cond_4

    .line 499
    const-string p3, "folder_id"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 500
    :cond_4
    const-string p3, "title"

    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string p3, "bookmark"

    const/16 p8, 0x1

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    const-string p3, "favicon"

    invoke-static/range {p4 .. p4}, Lcom/android/browser/api_v8/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p4

    .end local p4
    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 504
    const-string p3, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 505
    const-string p3, "searchable_url"

    invoke-static {p1}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getSearchable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string p3, "searchable_keywords"

    const/16 p4, 0x2

    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p4, v0

    const/16 p6, 0x0

    aput-object p1, p4, p6

    .end local p6
    const/16 p6, 0x1

    aput-object p2, p4, p6

    invoke-static/range {p4 .. p4}, Lcom/android/browser/model/MiRenUrlDataProvider;->getSearchableKeywords([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string p2, "history"

    const-string p3, "_id = ?"

    const/16 p4, 0x1

    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p4, v0

    const/16 p6, 0x0

    const/16 p7, 0x0

    move-object v0, v7

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p7

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p7

    aput-object p7, p4, p6

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, v9

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 575
    .end local p10
    :cond_5
    :goto_1
    if-eqz v7, :cond_10

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object p0, v7

    .line 578
    .end local v7           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    :cond_6
    :goto_2
    if-eqz p9, :cond_1

    .line 579
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object p2

    move-object/from16 v0, p2

    move-object v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 510
    .restart local v5       #creationTime:J
    .restart local v7       #cursor:Landroid/database/Cursor;
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p6
    .restart local p10
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result p8

    .line 511
    .local p8, count:I
    const/4 v10, 0x0

    .line 512
    .local v10, matchedTitle:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    move v0, v8

    move/from16 v1, p8

    if-ge v0, v1, :cond_11

    .line 515
    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 516
    const/4 v11, 0x5

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 517
    .local v11, oldTitle:Ljava/lang/String;
    if-eqz v11, :cond_d

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .end local v11           #oldTitle:Ljava/lang/String;
    if-eqz v11, :cond_d

    .line 520
    const-string v8, "position"

    .end local v8           #i:I
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .end local v10           #matchedTitle:Z
    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 521
    const-string v8, "created"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 523
    if-eqz p3, :cond_8

    .line 524
    const-string v8, "thumbnail"

    invoke-static/range {p3 .. p3}, Lcom/android/browser/api_v8/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 525
    :cond_8
    if-ltz p10, :cond_9

    .line 526
    const-string v8, "folder_id"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    :cond_9
    const-string v8, "history"

    const-string v10, "_id = ?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 529
    const/4 v8, 0x1

    .line 533
    .local v8, matchedTitle:Z
    :goto_4
    if-nez v8, :cond_5

    .line 537
    const-string v8, "title"

    .end local v8           #matchedTitle:Z
    move-object v0, v9

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v8, "url"

    invoke-virtual {v9, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v8, "created"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 540
    const-string v8, "position"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .end local v5           #creationTime:J
    invoke-virtual {v9, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 541
    const-string v5, "bookmark"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 542
    if-eqz p3, :cond_a

    .line 543
    const-string v5, "thumbnail"

    invoke-static/range {p3 .. p3}, Lcom/android/browser/api_v8/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p3

    .end local p3
    move-object v0, v9

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 544
    :cond_a
    if-ltz p10, :cond_b

    .line 545
    const-string p3, "folder_id"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p10

    .end local p10
    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 546
    :cond_b
    const-string p3, "favicon"

    invoke-static/range {p4 .. p4}, Lcom/android/browser/api_v8/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p4

    .end local p4
    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 548
    const-string p3, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 549
    if-lez p8, :cond_c

    .line 555
    const/16 p3, 0x2

    move-object v0, v7

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p5

    .line 560
    :cond_c
    if-nez p5, :cond_e

    .line 561
    const-string p3, "visits"

    add-int/lit8 p4, p5, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    :goto_5
    const-string p3, "searchable_url"

    invoke-static {p1}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getSearchable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string p3, "searchable_keywords"

    const/16 p4, 0x2

    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p4, v0

    const/16 p6, 0x0

    aput-object p1, p4, p6

    .end local p6
    const/16 p6, 0x1

    aput-object p2, p4, p6

    invoke-static/range {p4 .. p4}, Lcom/android/browser/model/MiRenUrlDataProvider;->getSearchableKeywords([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string p2, "history"

    const-string p3, "url"

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 572
    .end local p8           #count:I
    :catch_0
    move-exception p0

    move-object/from16 p2, p0

    move-object p0, v7

    .line 573
    .end local v7           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    .local p2, e:Ljava/lang/IllegalStateException;
    :goto_6
    :try_start_3
    const-string p3, "com.android.browser.Bookmarks"

    const-string p4, "addBookmark"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 575
    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 512
    .restart local v5       #creationTime:J
    .restart local v7       #cursor:Landroid/database/Cursor;
    .local v8, i:I
    .restart local v10       #matchedTitle:Z
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p2, name:Ljava/lang/String;
    .restart local p3
    .restart local p4
    .restart local p6
    .restart local p8       #count:I
    .restart local p10
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 564
    .end local v5           #creationTime:J
    .end local v8           #i:I
    .end local v10           #matchedTitle:Z
    .end local p3
    .end local p4
    .end local p10
    :cond_e
    :try_start_4
    const-string p3, "visits"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 575
    .end local p2           #name:Ljava/lang/String;
    .end local p6
    .end local p8           #count:I
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v7

    .end local v7           #cursor:Landroid/database/Cursor;
    .end local p1
    .local p0, cursor:Landroid/database/Cursor;
    :goto_7
    if-eqz p0, :cond_f

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_f
    throw p1

    .restart local v5       #creationTime:J
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1
    .restart local p2       #name:Ljava/lang/String;
    .restart local p3
    .restart local p4
    .restart local p6
    .local p8, cursor:Landroid/database/Cursor;
    .restart local p10
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object/from16 p0, p8

    .end local p8           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_7

    .end local v5           #creationTime:J
    .end local p3
    .end local p4
    .end local p6
    .end local p10
    .local p2, e:Ljava/lang/IllegalStateException;
    :catchall_2
    move-exception p1

    goto :goto_7

    .line 572
    .restart local v5       #creationTime:J
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p2, name:Ljava/lang/String;
    .restart local p3
    .restart local p4
    .restart local p6
    .restart local p8       #cursor:Landroid/database/Cursor;
    .restart local p10
    :catch_1
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p0, p8

    .end local p8           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_6

    .end local v5           #creationTime:J
    .end local p2           #name:Ljava/lang/String;
    .end local p3
    .end local p4
    .end local p6
    .end local p10
    .restart local v7       #cursor:Landroid/database/Cursor;
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_10
    move-object p0, v7

    .end local v7           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto/16 :goto_2

    .restart local v5       #creationTime:J
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #i:I
    .restart local v10       #matchedTitle:Z
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2       #name:Ljava/lang/String;
    .restart local p3
    .restart local p4
    .restart local p6
    .local p8, count:I
    .restart local p10
    :cond_11
    move v8, v10

    .end local v10           #matchedTitle:Z
    .local v8, matchedTitle:Z
    goto/16 :goto_4
.end method

.method public static importSystemDatabase(Landroid/content/ContentResolver;Landroid/app/Activity;Z)Ljava/util/Set;
    .locals 20
    .parameter "cr"
    .parameter "activity"
    .parameter "retainIcon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/app/Activity;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 611
    .local v19, hashsetBookmarkBlackList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v8, "visits DESC"

    .line 612
    .local v8, orderBy:Ljava/lang/String;
    const-string v6, "bookmark = 1"

    .line 613
    .local v6, whereClause:Ljava/lang/String;
    const/4 v9, 0x0

    .line 615
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .end local v9           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    move-object/from16 v3, p0

    .line 619
    .end local p0           #cursor:Landroid/database/Cursor;
    .local v3, cursor:Landroid/database/Cursor;
    :goto_0
    if-nez v3, :cond_0

    .line 620
    const/16 p0, 0x0

    .line 697
    .end local p1
    .end local p2
    :goto_1
    return-object p0

    .line 616
    .end local v3           #cursor:Landroid/database/Cursor;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1
    .restart local p2
    :catch_0
    move-exception p0

    .line 617
    .local p0, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "com.android.browser.Bookmarks"

    const-string v4, "database error"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v9

    .end local v9           #cursor:Landroid/database/Cursor;
    .restart local v3       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 623
    .end local p0           #e:Landroid/database/sqlite/SQLiteException;
    :cond_0
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result p0

    if-nez p0, :cond_4

    .line 625
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 628
    .local p0, am:Landroid/content/res/AssetManager;
    :try_start_1
    const-string v4, "bookmark_blacklist"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 629
    .local p0, is:Ljava/io/InputStream;
    if-nez p0, :cond_1

    .line 630
    const/16 p0, 0x0

    goto :goto_1

    .line 632
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/browser/common/Strings;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 633
    .local p0, urllist:Ljava/lang/String;
    if-eqz p0, :cond_2

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 634
    :cond_2
    const/16 p0, 0x0

    goto :goto_1

    .line 637
    :cond_3
    const-string v4, "\n"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, urls:[Ljava/lang/String;
    const/16 p0, 0x0

    .local p0, i:I
    :goto_2
    array-length v5, v4

    move/from16 v0, p0

    move v1, v5

    if-ge v0, v1, :cond_4

    .line 639
    aget-object v5, v4, p0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 638
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 642
    .end local v4           #urls:[Ljava/lang/String;
    .end local p0           #i:I
    :catch_1
    move-exception p0

    .line 643
    .local p0, e:Ljava/io/IOException;
    const-string v4, "com.android.browser.Bookmarks"

    invoke-virtual/range {p0 .. p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_4
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 648
    .local v4, ret:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance p0, Lcom/android/browser/model/BrowserDatabaseHelper;

    invoke-direct/range {p0 .. p1}, Lcom/android/browser/model/BrowserDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 649
    .local p0, dbHelper:Lcom/android/browser/model/BrowserDatabaseHelper;
    const/4 v9, 0x0

    .line 652
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/model/BrowserDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 653
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 654
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .end local p0           #dbHelper:Lcom/android/browser/model/BrowserDatabaseHelper;
    .end local p1
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p0

    if-nez p0, :cond_f

    .line 655
    const/16 p0, 0x1

    move-object v0, v3

    move/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 656
    .local v10, url:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {v10}, Lcom/android/browser/model/BrowserHistoryDataProvider;->isIllegalHistoryUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 654
    :cond_5
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 685
    .end local v10           #url:Ljava/lang/String;
    :catch_2
    move-exception p0

    .line 686
    .local p0, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string p1, "com.android.browser.Bookmarks"

    const-string p2, "error"

    .end local p2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 688
    if-eqz v9, :cond_8

    .line 689
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p0

    .end local p0           #e:Landroid/database/sqlite/SQLiteException;
    if-eqz p0, :cond_6

    .line 690
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 691
    :cond_6
    if-eqz v3, :cond_7

    .line 692
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 693
    :cond_7
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    :goto_5
    move-object/from16 p0, v4

    .line 697
    goto/16 :goto_1

    .line 659
    .restart local v10       #url:Ljava/lang/String;
    .restart local p2
    :cond_9
    const/16 p0, 0x5

    :try_start_4
    move-object v0, v3

    move/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 660
    .local v11, title:Ljava/lang/String;
    const/16 p0, 0x3

    move-object v0, v3

    move/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 661
    .local v15, date:J
    const/16 p0, 0x2

    move-object v0, v3

    move/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 663
    .local v14, visits:I
    const-string p0, "thumbnail"

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 664
    .local p1, thumbnailIndex:I
    const/4 v12, 0x0

    .line 665
    .local v12, thumbnail:Landroid/graphics/Bitmap;
    const/16 p0, 0x0

    .line 666
    .local p0, dataThumbnail:[B
    if-ltz p1, :cond_a

    .line 667
    move-object v0, v3

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    .line 668
    if-eqz p0, :cond_a

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 p1, v0

    .end local p1           #thumbnailIndex:I
    if-lez p1, :cond_a

    .line 669
    const/16 p1, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 673
    :cond_a
    const/16 p0, 0x6

    move-object v0, v3

    move/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    .end local p0           #dataThumbnail:[B
    move-result-object p0

    .line 674
    .local p0, dataFavicon:[B
    if-eqz p0, :cond_e

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 p1, v0

    if-lez p1, :cond_e

    .line 675
    const/16 p1, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 680
    .local v13, favicon:Landroid/graphics/Bitmap;
    :goto_6
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 681
    move-wide v0, v15

    long-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, p2

    invoke-static/range {v9 .. v18}, Lcom/android/browser/api_v8/Bookmarks;->importBookmark(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IJFZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_4

    .line 688
    .end local v10           #url:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #thumbnail:Landroid/graphics/Bitmap;
    .end local v13           #favicon:Landroid/graphics/Bitmap;
    .end local v14           #visits:I
    .end local v15           #date:J
    .end local p0           #dataFavicon:[B
    .end local p2
    :catchall_0
    move-exception p0

    if-eqz v9, :cond_d

    .line 689
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 690
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 691
    :cond_b
    if-eqz v3, :cond_c

    .line 692
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 693
    :cond_c
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_d
    throw p0

    .line 678
    .restart local v10       #url:Ljava/lang/String;
    .restart local v11       #title:Ljava/lang/String;
    .restart local v12       #thumbnail:Landroid/graphics/Bitmap;
    .restart local v14       #visits:I
    .restart local v15       #date:J
    .restart local p0       #dataFavicon:[B
    .restart local p2
    :cond_e
    const/4 v13, 0x0

    .restart local v13       #favicon:Landroid/graphics/Bitmap;
    goto :goto_6

    .line 684
    .end local v10           #url:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #thumbnail:Landroid/graphics/Bitmap;
    .end local v13           #favicon:Landroid/graphics/Bitmap;
    .end local v14           #visits:I
    .end local v15           #date:J
    .end local p0           #dataFavicon:[B
    :cond_f
    :try_start_5
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 688
    if-eqz v9, :cond_8

    .line 689
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 690
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 691
    :cond_10
    if-eqz v3, :cond_11

    .line 692
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 693
    :cond_11
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_5
.end method

.method public static isBookmarkByUrl(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "cr"
    .parameter "url"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 434
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 460
    :goto_0
    return v0

    .line 437
    :cond_0
    const/4 v6, 0x0

    .line 440
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "url = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 444
    if-nez v6, :cond_2

    .line 457
    if-eqz v6, :cond_1

    .line 458
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    goto :goto_0

    .line 446
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 447
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-ne v0, v9, :cond_4

    .line 457
    if-eqz v6, :cond_3

    .line 458
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v9

    goto :goto_0

    .line 457
    :cond_4
    if-eqz v6, :cond_5

    .line 458
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v8

    goto :goto_0

    .line 457
    :cond_6
    if-eqz v6, :cond_7

    .line 458
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_1
    move v0, v8

    .line 460
    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 454
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v0, "com.android.browser.Bookmarks"

    const-string v1, "Error while query History DB"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 457
    if-eqz v6, :cond_7

    .line 458
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 457
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    .line 458
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public static removeFromBookmarkBySimilarUrl(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "cr"
    .parameter "url"

    .prologue
    .line 427
    invoke-static {p0, p1, p2}, Lcom/android/browser/api_v8/Bookmarks;->getBookmarkIdFromUrl(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 428
    .local v0, id:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 429
    invoke-static {p0, p1, v0}, Lcom/android/browser/api_v8/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    .line 430
    :cond_0
    return-void
.end method

.method public static removeFromBookmarkByUrl(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "cr"
    .parameter "url"

    .prologue
    const/4 v7, 0x0

    .line 416
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "url = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v7

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 420
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/browser/api_v8/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    .line 422
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 423
    return-void
.end method

.method public static removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;I)V
    .locals 8
    .parameter "context"
    .parameter "cr"
    .parameter "id"

    .prologue
    .line 329
    const/4 v6, 0x0

    .line 331
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 336
    .end local v6           #cursor:Landroid/database/Cursor;
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 338
    .local v1, first:Z
    if-nez v1, :cond_1

    .line 339
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .end local p1
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #first:Z
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id is not in the database! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 366
    :catch_0
    move-exception p1

    move-object v7, p1

    move-object p1, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    move-object v0, v7

    .line 367
    .local v0, e:Ljava/lang/IllegalStateException;
    :goto_0
    :try_start_2
    const-string v1, "com.android.browser.Bookmarks"

    const-string v2, "removeFromBookmarks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 369
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 373
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_0
    :goto_1
    move p1, p2

    .line 374
    .local p1, newItemId:I
    new-instance p2, Lcom/android/browser/api_v8/Bookmarks$4;

    .end local p2
    invoke-direct {p2, p0, p1}, Lcom/android/browser/api_v8/Bookmarks$4;-><init>(Landroid/content/Context;I)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .end local p0
    invoke-virtual {p2, p0}, Lcom/android/browser/api_v8/Bookmarks$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 380
    return-void

    .line 342
    .local v0, cursor:Landroid/database/Cursor;
    .restart local v1       #first:Z
    .restart local p0
    .local p1, cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_1
    const/4 v1, 0x1

    :try_start_3
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v1           #first:Z
    move-result-object v1

    .line 343
    .local v1, url:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 344
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    .end local v1           #url:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 346
    .local v2, uri:Landroid/net/Uri;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 348
    .local v1, numVisits:I
    if-nez v1, :cond_3

    .line 349
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 362
    .end local v1           #numVisits:I
    .end local p1           #cr:Landroid/content/ContentResolver;
    :goto_2
    if-eqz p0, :cond_2

    .line 363
    const p1, 0x7f090021

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 369
    :cond_2
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object p1, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    goto :goto_1

    .line 353
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #numVisits:I
    .local p1, cr:Landroid/content/ContentResolver;
    :cond_3
    :try_start_4
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #numVisits:I
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 354
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "bookmark"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    const-string v4, "folder_id"

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 357
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 358
    :catch_1
    move-exception p1

    .line 359
    .local p1, e:Ljava/lang/IllegalStateException;
    :try_start_6
    const-string p1, "removeFromBookmarks"

    .end local p1           #e:Ljava/lang/IllegalStateException;
    const-string v1, "no database!"

    .end local v1           #values:Landroid/content/ContentValues;
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 369
    .end local v2           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    :goto_3
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1

    .restart local v6       #cursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .local p1, cr:Landroid/content/ContentResolver;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_3

    .local v0, e:Ljava/lang/IllegalStateException;
    .local p0, context:Landroid/content/Context;
    .local p1, cursor:Landroid/database/Cursor;
    :catchall_2
    move-exception p0

    move-object v7, p0

    move-object p0, p1

    .end local p1           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    move-object p1, v7

    goto :goto_3

    .line 366
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .local p1, cr:Landroid/content/ContentResolver;
    :catch_2
    move-exception p1

    move-object v0, p1

    move-object p1, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    goto/16 :goto_0

    .end local p1           #cursor:Landroid/database/Cursor;
    .local v0, cursor:Landroid/database/Cursor;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_5
    move-object p1, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    .restart local p1       #cursor:Landroid/database/Cursor;
    goto/16 :goto_1
.end method

.method public static updateBookmarkById(Landroid/content/Context;JLandroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "cr"
    .parameter "folderId"
    .parameter "title"
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    const-string v4, "folder_id"

    .line 290
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 291
    .local v0, map:Landroid/content/ContentValues;
    if-ltz p4, :cond_0

    .line 292
    const-string v3, "folder_id"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    :goto_0
    const-string v3, "title"

    invoke-virtual {v0, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v3, "url"

    invoke-virtual {v0, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 304
    .local v2, projection:[Ljava/lang/String;
    sget-object v3, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    const-string v4, "_id = ?"

    invoke-virtual {p3, v3, v0, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 308
    long-to-int v1, p1

    .line 309
    .local v1, newItemId:I
    new-instance v3, Lcom/android/browser/api_v8/Bookmarks$3;

    invoke-direct {v3, p0, v1}, Lcom/android/browser/api_v8/Bookmarks$3;-><init>(Landroid/content/Context;I)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/browser/api_v8/Bookmarks$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 315
    return-void

    .line 295
    .end local v1           #newItemId:I
    .end local v2           #projection:[Ljava/lang/String;
    :cond_0
    const-string v3, "folder_id"

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateFolderIdById(Landroid/content/Context;JLandroid/content/ContentResolver;I)V
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "cr"
    .parameter "folderId"

    .prologue
    const/4 v6, 0x0

    const-string v4, "folder_id"

    .line 264
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 265
    .local v0, map:Landroid/content/ContentValues;
    if-ltz p4, :cond_0

    .line 266
    const-string v3, "folder_id"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    :goto_0
    const-string v3, "position"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 272
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 275
    .local v2, projection:[Ljava/lang/String;
    sget-object v3, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    const-string v4, "_id = ?"

    invoke-virtual {p3, v3, v0, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 279
    long-to-int v1, p1

    .line 280
    .local v1, newItemId:I
    new-instance v3, Lcom/android/browser/api_v8/Bookmarks$2;

    invoke-direct {v3, p0, v1}, Lcom/android/browser/api_v8/Bookmarks$2;-><init>(Landroid/content/Context;I)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/browser/api_v8/Bookmarks$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 286
    return-void

    .line 269
    .end local v1           #newItemId:I
    .end local v2           #projection:[Ljava/lang/String;
    :cond_0
    const-string v3, "folder_id"

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updatePositionById(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentResolver;F)V
    .locals 6
    .parameter "db"
    .parameter "id"
    .parameter "cr"
    .parameter "position"

    .prologue
    .line 254
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 255
    .local v0, map:Landroid/content/ContentValues;
    const-string v1, "position"

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 256
    const-string v1, "history"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public static updateUrlAndTitleById(Landroid/content/Context;JLandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "id"
    .parameter "cr"
    .parameter "url"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, queryString:Ljava/lang/String;
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    move-object v0, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 232
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 250
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 238
    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v7, map:Landroid/content/ContentValues;
    invoke-static {p0, p5}, Lcom/android/browser/util/MiRenWebViewUtils;->isValidTitle(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    const-string v0, "title"

    invoke-virtual {v7, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_2
    const-string v0, "url"

    invoke-virtual {v7, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 243
    .local v8, projection:[Ljava/lang/String;
    sget-object v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    const-string v1, "_id = ?"

    invoke-virtual {p3, v0, v7, v1, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 249
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static urlHasAcceptableScheme(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 711
    if-nez p0, :cond_0

    move v1, v2

    .line 720
    :goto_0
    return v1

    .line 715
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/browser/api_v8/Bookmarks;->acceptableBookmarkSchemes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 716
    sget-object v1, Lcom/android/browser/api_v8/Bookmarks;->acceptableBookmarkSchemes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 717
    const/4 v1, 0x1

    goto :goto_0

    .line 715
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 720
    goto :goto_0
.end method
