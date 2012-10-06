.class public Lcom/android/browser/api_v8/BrowserBookmarksAdapter;
.super Ljava/lang/Object;
.source "BrowserBookmarksAdapter.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "browser/api_v8/BrowserBookmarksAdapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([B[B)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->byteArrayEquals([B[B)Z

    move-result v0

    return v0
.end method

.method private static byteArrayEquals([B[B)Z
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move v1, v4

    .line 130
    :goto_0
    return v1

    .line 123
    :cond_0
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v1, p0

    array-length v2, p1

    if-ne v1, v2, :cond_3

    .line 124
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 125
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_1

    move v1, v3

    .line 126
    goto :goto_0

    .line 124
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v4

    .line 128
    goto :goto_0

    .end local v0           #i:I
    :cond_3
    move v1, v3

    .line 130
    goto :goto_0
.end method

.method public static fixHistoryUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 370
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-object p0

    .line 375
    :cond_1
    const-string v2, "client=ms-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 376
    .local v1, index:I
    if-lez v1, :cond_0

    const-string v2, ".google."

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    const/16 v2, 0x26

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 378
    .local v0, end:I
    if-lez v0, :cond_2

    .line 379
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 383
    :cond_2
    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getSpecialUrlTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    const-string v3, "http://www.google.com/m?q="

    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 169
    :goto_0
    return-object v2

    .line 160
    :cond_0
    const-string v2, "http://www.google.com/m?q="

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    const-string v2, "http://www.google.com/m?q="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, encodedTitle:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Google"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 164
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 165
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "browser/api_v8/BrowserBookmarksAdapter"

    const-string v3, "error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #encodedTitle:Ljava/lang/String;
    :cond_1
    move-object v2, p0

    .line 169
    goto :goto_0
.end method

.method public static final importVisitedHistory(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8
    .parameter "db"
    .parameter "url"
    .parameter "title"
    .parameter "real"
    .parameter "mode"

    .prologue
    .line 174
    invoke-static {p1}, Lcom/android/browser/model/MiRenProtocolUrlMapper;->getMappedMiRenUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, mappedUrl:Ljava/lang/String;
    const-wide/16 v1, -0x1

    .line 176
    .local v1, id:J
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .end local v0           #mappedUrl:Ljava/lang/String;
    if-nez v0, :cond_0

    move-wide p0, v1

    .line 235
    .end local v1           #id:J
    .end local p1
    .end local p3
    .end local p4
    .local p0, id:J
    :goto_0
    return-void

    .line 179
    .restart local v1       #id:J
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1
    .restart local p3
    .restart local p4
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    :cond_1
    invoke-static {p1}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->getSpecialUrlTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 182
    :cond_2
    const-string v0, "browser/api_v8/BrowserBookmarksAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVisitedHistory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 184
    .local v4, now:J
    const/4 v0, 0x0

    .line 186
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/browser/api_v8/BrowserInternal;->getVisitedLike(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 188
    if-nez v0, :cond_4

    .line 233
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide p0, v1

    .end local v1           #id:J
    .end local p1
    .local p0, id:J
    goto :goto_0

    .line 190
    .restart local v1       #id:J
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1
    :cond_4
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 191
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .local v3, map:Landroid/content/ContentValues;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    .end local p1
    if-nez p1, :cond_5

    .line 193
    const-string p1, "title"

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_5
    if-eqz p3, :cond_6

    .line 195
    const-string p1, "visits"

    const-string p3, "visits"

    .end local p3
    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v0, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v3, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    :goto_1
    const-string p1, "date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v3, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 200
    const-string p1, "mode"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v3, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-interface {v0, p4}, Landroid/database/Cursor;->getInt(I)I

    .end local p4
    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p1, p3

    .line 203
    .local p1, projection:[Ljava/lang/String;
    const-string p1, "history"

    .end local p1           #projection:[Ljava/lang/String;
    const-string p3, "_id = ?"

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    .end local v4           #now:J
    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    invoke-virtual {p0, p1, v3, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 205
    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .end local p0           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result p0

    int-to-long p0, p0

    .end local v1           #id:J
    .local p0, id:J
    move-object p3, v3

    .line 233
    .end local v3           #map:Landroid/content/ContentValues;
    .local p3, map:Landroid/content/ContentValues;
    :goto_2
    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide p3, p0

    .end local p0           #id:J
    .local p3, id:J
    move-object p0, v0

    .end local v0           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_3
    move-wide p0, p3

    .line 235
    .end local p3           #id:J
    .local p0, id:J
    goto/16 :goto_0

    .line 197
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #id:J
    .restart local v3       #map:Landroid/content/ContentValues;
    .restart local v4       #now:J
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p3, real:Z
    .restart local p4
    :cond_6
    :try_start_2
    const-string p1, "user_entered"

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p3           #real:Z
    move-result-object p3

    invoke-virtual {v3, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 230
    .end local v3           #map:Landroid/content/ContentValues;
    .end local v4           #now:J
    .end local p0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local p4
    :catch_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 231
    .end local v0           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    .local p1, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string p3, "browser/api_v8/BrowserBookmarksAdapter"

    const-string p4, "updateVisitedHistory"

    invoke-static {p3, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 233
    if-eqz p0, :cond_b

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-wide p3, v1

    .end local v1           #id:J
    .local p3, id:J
    goto :goto_3

    .line 207
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #id:J
    .restart local v4       #now:J
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .local p1, url:Ljava/lang/String;
    .local p3, real:Z
    .restart local p4
    :cond_7
    :try_start_4
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .restart local v3       #map:Landroid/content/ContentValues;
    if-eqz p3, :cond_8

    .line 211
    const/4 v6, 0x1

    .line 212
    .local v6, visits:I
    const/4 p3, 0x0

    .line 217
    .local p3, user_entered:I
    :goto_4
    const-string v7, "url"

    invoke-virtual {v3, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v7, "visits"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .end local v6           #visits:I
    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string v6, "date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .end local v4           #now:J
    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 220
    const-string v4, "bookmark"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 222
    const-string p1, "title"

    .end local p1           #url:Ljava/lang/String;
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_5
    const-string p1, "created"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const-string p1, "user_entered"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .end local p3           #user_entered:I
    invoke-virtual {v3, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const-string p1, "mode"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v3, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    const-string p1, "history"

    const-string p3, "url"

    invoke-virtual {p0, p1, p3, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-object p3, v3

    .end local v3           #map:Landroid/content/ContentValues;
    .local p3, map:Landroid/content/ContentValues;
    move-wide p0, v1

    .end local v1           #id:J
    .local p0, id:J
    goto :goto_2

    .line 214
    .restart local v1       #id:J
    .restart local v3       #map:Landroid/content/ContentValues;
    .restart local v4       #now:J
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1       #url:Ljava/lang/String;
    .local p3, real:Z
    :cond_8
    const/4 v6, 0x0

    .line 215
    .restart local v6       #visits:I
    const/4 p3, 0x1

    .local p3, user_entered:I
    goto :goto_4

    .line 224
    .end local v4           #now:J
    .end local v6           #visits:I
    :cond_9
    const-string v4, "title"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 233
    .end local v3           #map:Landroid/content/ContentValues;
    .end local p0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local p1           #url:Ljava/lang/String;
    .end local p3           #user_entered:I
    .end local p4
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_6
    if-eqz p0, :cond_a

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_a
    throw p1

    .local p1, e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_b
    move-wide p3, v1

    .end local v1           #id:J
    .local p3, id:J
    goto/16 :goto_3

    .end local p1           #e:Ljava/lang/IllegalStateException;
    .restart local v0       #c:Landroid/database/Cursor;
    .local p0, id:J
    .local p3, map:Landroid/content/ContentValues;
    :cond_c
    move-wide p3, p0

    .end local p0           #id:J
    .local p3, id:J
    move-object p0, v0

    .end local v0           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_3
.end method

.method public static queryBookmarksForUrl(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 11
    .parameter "cr"
    .parameter "originalUrl"
    .parameter "url"
    .parameter "onlyBookmarks"

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x3f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 32
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v5

    .line 64
    :goto_0
    return-object v0

    .line 37
    :cond_1
    if-nez p1, :cond_2

    .line 38
    move-object p1, p2

    .line 43
    :cond_2
    invoke-static {p1}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->removeQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, originalUrlNoQuery:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->removeQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 45
    .local v7, urlNoQuery:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 53
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    aput-object v6, v4, v8

    aput-object v7, v4, v9

    aput-object p1, v4, v10

    const/4 v0, 0x3

    aput-object p2, v4, v0

    .line 55
    .local v4, selArgs:[Ljava/lang/String;
    const-string v3, "url == ? OR url == ? OR url LIKE ? || \'%\' OR url LIKE ? || \'%\'"

    .line 59
    .local v3, where:Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bookmark"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " == 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    :cond_3
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "favicon"

    aput-object v0, v2, v9

    .line 64
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method private static removeQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 135
    if-nez p0, :cond_0

    .line 136
    const/4 v2, 0x0

    .line 143
    :goto_0
    return-object v2

    .line 138
    :cond_0
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 139
    .local v1, query:I
    move-object v0, p0

    .line 140
    .local v0, noQuery:Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 141
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v2, v0

    .line 143
    goto :goto_0
.end method

.method public static updateBookmarkFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "cr"
    .parameter "originalUrl"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->updateBookmarkFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 78
    return-void
.end method

.method public static updateBookmarkFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 6
    .parameter "cr"
    .parameter "originalUrl"
    .parameter "url"
    .parameter "favicon"
    .parameter "onlyBookmark"

    .prologue
    .line 91
    new-instance v0, Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;ZLandroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    return-void
.end method

.method public static final updateVisitedHistory(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZI)J
    .locals 17
    .parameter "context"
    .parameter "cr"
    .parameter "url"
    .parameter "title"
    .parameter "real"
    .parameter "mode"

    .prologue
    .line 253
    invoke-static/range {p2 .. p2}, Lcom/android/browser/model/MiRenProtocolUrlMapper;->getMappedMiRenUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, mappedUrl:Ljava/lang/String;
    const-wide/16 v12, -0x1

    .line 255
    .local v12, id:J
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .end local v5           #mappedUrl:Ljava/lang/String;
    if-nez v5, :cond_0

    move-wide/from16 p0, v12

    .end local v12           #id:J
    .end local p1
    .local p0, id:J
    move-wide/from16 p4, v12

    .line 326
    .end local p0           #id:J
    .end local p2
    .end local p4
    .end local p5
    :goto_0
    return-wide p4

    .line 258
    .restart local v12       #id:J
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p2
    .restart local p4
    .restart local p5
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 259
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->getSpecialUrlTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 261
    :cond_2
    const-string v5, "browser/api_v8/BrowserBookmarksAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateVisitedHistory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 263
    .local v6, now:J
    const/4 v5, 0x0

    .line 265
    .local v5, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/android/browser/api_v8/BrowserInternal;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    .line 267
    .end local v5           #c:Landroid/database/Cursor;
    .local v11, c:Landroid/database/Cursor;
    if-nez v11, :cond_4

    .line 324
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide/from16 p0, v12

    .end local v12           #id:J
    .end local p1
    .local p0, id:J
    move-wide/from16 p4, v12

    .end local p0           #id:J
    .end local p5
    .local p4, id:J
    goto :goto_0

    .line 269
    .restart local v12       #id:J
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .local p4, real:Z
    .restart local p5
    :cond_4
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 270
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct/range {p2 .. p2}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local p2, map:Landroid/content/ContentValues;
    const-string v5, "title"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, oldtitle:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/browser/util/MiRenWebViewUtils;->isValidTitle(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    .end local p0           #context:Landroid/content/Context;
    if-eqz p0, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 273
    const-string p0, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_5
    if-eqz p4, :cond_6

    .line 275
    const-string p0, "visits"

    const-string p4, "visits"

    .end local p4           #real:Z
    move-object v0, v11

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    move-object v0, v11

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    :goto_1
    const-string p0, "date"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 280
    const-string p0, "mode"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    const/16 p0, 0x1

    move/from16 v0, p0

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p0, v0

    const/16 p4, 0x0

    const/16 p5, 0x0

    move-object v0, v11

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .end local p5
    move-result p5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p0, p4

    .line 283
    .local p0, projection:[Ljava/lang/String;
    sget-object p4, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    const-string p5, "_id = ?"

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 284
    const/16 p0, 0x0

    move-object v0, v11

    move/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local p0           #projection:[Ljava/lang/String;
    move-result p0

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide/from16 p0, v0

    .line 324
    .end local v5           #oldtitle:Ljava/lang/String;
    .end local v6           #now:J
    .end local v12           #id:J
    .end local p1
    .local p0, id:J
    :goto_2
    if-eqz v11, :cond_d

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-wide/from16 v15, p0

    .end local p0           #id:J
    .local v15, id:J
    move-wide/from16 p1, v15

    .end local v15           #id:J
    .end local p2           #map:Landroid/content/ContentValues;
    .local p1, id:J
    move-object/from16 p0, v11

    .end local v11           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_3
    move-wide/from16 p4, p1

    .end local p1           #id:J
    .local p4, id:J
    move-wide/from16 v15, p1

    .end local p4           #id:J
    .restart local v15       #id:J
    move-wide/from16 p0, v15

    .line 326
    .end local v15           #id:J
    .local p0, id:J
    goto/16 :goto_0

    .line 277
    .end local p0           #id:J
    .restart local v5       #oldtitle:Ljava/lang/String;
    .restart local v6       #now:J
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #id:J
    .local p1, cr:Landroid/content/ContentResolver;
    .restart local p2       #map:Landroid/content/ContentValues;
    .local p4, real:Z
    .restart local p5
    :cond_6
    :try_start_2
    const-string p0, "user_entered"

    const/16 p4, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p4           #real:Z
    move-result-object p4

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 319
    .end local v5           #oldtitle:Ljava/lang/String;
    .end local v6           #now:J
    .end local p2           #map:Landroid/content/ContentValues;
    .end local p5
    :catch_0
    move-exception p0

    move-object/from16 p1, p0

    move-wide/from16 p4, v12

    .end local v12           #id:J
    .local p4, id:J
    move-object/from16 p0, v11

    .line 320
    .end local v11           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    .local p1, e:Ljava/lang/IllegalStateException;
    :goto_4
    :try_start_3
    const-string p2, "browser/api_v8/BrowserBookmarksAdapter"

    const-string v5, "updateVisitedHistory"

    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 324
    if-eqz p0, :cond_c

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    move-wide/from16 p1, p4

    .end local p4           #id:J
    .local p1, id:J
    goto :goto_3

    .line 286
    .restart local v6       #now:J
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #id:J
    .local p0, context:Landroid/content/Context;
    .local p1, cr:Landroid/content/ContentResolver;
    .local p2, url:Ljava/lang/String;
    .local p4, real:Z
    .restart local p5
    :cond_7
    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/android/browser/model/BrowserHistoryDataProvider;->truncateHistory(Landroid/content/ContentResolver;)V

    .line 287
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v14, map:Landroid/content/ContentValues;
    if-eqz p4, :cond_9

    .line 291
    const/16 p4, 0x1

    .line 292
    .local p4, visits:I
    const/16 p0, 0x0

    .line 297
    .local p0, user_entered:I
    :goto_5
    const-string v5, "url"

    move-object v0, v14

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v5, "visits"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .end local p4           #visits:I
    move-object v0, v14

    move-object v1, v5

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    const-string p4, "date"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, v14

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    const-string p4, "bookmark"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v14

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_a

    .line 302
    const-string p2, "title"

    .end local p2           #url:Ljava/lang/String;
    move-object v0, v14

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :goto_6
    const-string p2, "created"

    const/16 p4, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    move-object v0, v14

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string p2, "user_entered"

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .end local p0           #user_entered:I
    move-object v0, v14

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const-string p0, "mode"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    sget-object p0, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 310
    .local v6, newRow:Landroid/net/Uri;
    if-eqz v6, :cond_f

    .line 311
    sget-object v7, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 312
    .local p2, newCursor:Landroid/database/Cursor;
    if-eqz p2, :cond_e

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 313
    const/16 p0, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    move-result p0

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide/from16 p0, v0

    .line 315
    .end local v12           #id:J
    .end local p1           #cr:Landroid/content/ContentResolver;
    .local p0, id:J
    :goto_7
    if-eqz p2, :cond_8

    :try_start_5
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->isClosed()Z

    move-result p4

    if-nez p4, :cond_8

    .line 316
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    move-object/from16 p2, v14

    .end local v14           #map:Landroid/content/ContentValues;
    .local p2, map:Landroid/content/ContentValues;
    goto/16 :goto_2

    .line 294
    .local v6, now:J
    .restart local v12       #id:J
    .restart local v14       #map:Landroid/content/ContentValues;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #cr:Landroid/content/ContentResolver;
    .local p2, url:Ljava/lang/String;
    .local p4, real:Z
    :cond_9
    const/16 p4, 0x0

    .line 295
    .local p4, visits:I
    const/16 p0, 0x1

    .local p0, user_entered:I
    goto/16 :goto_5

    .line 304
    .end local p4           #visits:I
    :cond_a
    :try_start_6
    const-string p4, "title"

    move-object v0, v14

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_6

    .line 321
    .end local v6           #now:J
    .end local v14           #map:Landroid/content/ContentValues;
    .end local p0           #user_entered:I
    .end local p2           #url:Ljava/lang/String;
    .end local p5
    :catch_1
    move-exception p0

    move-object/from16 p1, p0

    move-wide/from16 p4, v12

    .end local v12           #id:J
    .local p4, id:J
    move-object/from16 p0, v11

    .line 322
    .end local v11           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    .local p1, e:Landroid/database/sqlite/SQLiteException;
    :goto_8
    :try_start_7
    const-string p2, "browser/api_v8/BrowserBookmarksAdapter"

    const-string v5, "updateVisitedHistoryTitle"

    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 324
    if-eqz p0, :cond_c

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    move-wide/from16 p1, p4

    .end local p4           #id:J
    .local p1, id:J
    goto/16 :goto_3

    .local v5, c:Landroid/database/Cursor;
    .restart local v6       #now:J
    .restart local v12       #id:J
    .local p0, context:Landroid/content/Context;
    .local p1, cr:Landroid/content/ContentResolver;
    .restart local p2       #url:Ljava/lang/String;
    .local p4, real:Z
    .restart local p5
    :catchall_0
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v12

    .end local v12           #id:J
    .end local p2           #url:Ljava/lang/String;
    .local p1, id:J
    move-object/from16 p0, v5

    .end local v5           #c:Landroid/database/Cursor;
    .end local v6           #now:J
    .end local p3
    .end local p4           #real:Z
    .end local p5
    .local p0, c:Landroid/database/Cursor;
    :goto_9
    if-eqz p0, :cond_b

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_b
    throw p3

    .end local p0           #c:Landroid/database/Cursor;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #id:J
    .local p1, cr:Landroid/content/ContentResolver;
    .restart local p3
    :catchall_1
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v12

    .end local v12           #id:J
    .local p1, id:J
    move-object/from16 p0, v11

    .end local v11           #c:Landroid/database/Cursor;
    .restart local p0       #c:Landroid/database/Cursor;
    goto :goto_9

    .end local p1           #id:J
    .local v6, newRow:Landroid/net/Uri;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v14       #map:Landroid/content/ContentValues;
    .local p0, id:J
    .local p2, newCursor:Landroid/database/Cursor;
    .restart local p5
    :catchall_2
    move-exception p2

    move-object/from16 p3, p2

    move-wide/from16 v15, p0

    .end local p0           #id:J
    .restart local v15       #id:J
    move-wide/from16 p1, v15

    .end local v15           #id:J
    .end local p2           #newCursor:Landroid/database/Cursor;
    .restart local p1       #id:J
    move-object/from16 p0, v11

    .end local v11           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_9

    .end local v6           #newRow:Landroid/net/Uri;
    .end local v14           #map:Landroid/content/ContentValues;
    .end local p1           #id:J
    .end local p5
    .local p4, id:J
    :catchall_3
    move-exception p1

    move-object/from16 p3, p1

    move-wide/from16 p1, p4

    .end local p4           #id:J
    .restart local p1       #id:J
    goto :goto_9

    .line 321
    .restart local v5       #c:Landroid/database/Cursor;
    .local v6, now:J
    .restart local v12       #id:J
    .local p0, context:Landroid/content/Context;
    .local p1, cr:Landroid/content/ContentResolver;
    .local p2, url:Ljava/lang/String;
    .local p4, real:Z
    .restart local p5
    :catch_2
    move-exception p0

    move-object/from16 p1, p0

    move-wide/from16 p4, v12

    .end local v12           #id:J
    .end local p5
    .local p4, id:J
    move-object/from16 p0, v5

    .end local v5           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_8

    .end local p1           #cr:Landroid/content/ContentResolver;
    .end local p4           #id:J
    .local v6, newRow:Landroid/net/Uri;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v14       #map:Landroid/content/ContentValues;
    .local p0, id:J
    .local p2, newCursor:Landroid/database/Cursor;
    .restart local p5
    :catch_3
    move-exception p2

    move-wide/from16 p4, p0

    .end local p0           #id:J
    .end local p5
    .restart local p4       #id:J
    move-object/from16 p0, v11

    .end local v11           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    move-object/from16 p1, p2

    goto :goto_8

    .line 319
    .end local v14           #map:Landroid/content/ContentValues;
    .restart local v5       #c:Landroid/database/Cursor;
    .local v6, now:J
    .restart local v12       #id:J
    .local p0, context:Landroid/content/Context;
    .restart local p1       #cr:Landroid/content/ContentResolver;
    .local p2, url:Ljava/lang/String;
    .local p4, real:Z
    .restart local p5
    :catch_4
    move-exception p0

    move-object/from16 p1, p0

    move-wide/from16 p4, v12

    .end local v12           #id:J
    .end local p5
    .local p4, id:J
    move-object/from16 p0, v5

    .end local v5           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_4

    .end local p1           #cr:Landroid/content/ContentResolver;
    .end local p4           #id:J
    .local v6, newRow:Landroid/net/Uri;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v14       #map:Landroid/content/ContentValues;
    .local p0, id:J
    .local p2, newCursor:Landroid/database/Cursor;
    .restart local p5
    :catch_5
    move-exception p2

    move-wide/from16 p4, p0

    .end local p0           #id:J
    .end local p5
    .restart local p4       #id:J
    move-object/from16 p0, v11

    .end local v11           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    move-object/from16 p1, p2

    goto/16 :goto_4

    .end local v6           #newRow:Landroid/net/Uri;
    .end local v14           #map:Landroid/content/ContentValues;
    .end local p2           #newCursor:Landroid/database/Cursor;
    :cond_c
    move-wide/from16 p1, p4

    .end local p4           #id:J
    .local p1, id:J
    goto/16 :goto_3

    .end local p1           #id:J
    .restart local v11       #c:Landroid/database/Cursor;
    .local p0, id:J
    .local p2, map:Landroid/content/ContentValues;
    :cond_d
    move-wide/from16 v15, p0

    .end local p0           #id:J
    .restart local v15       #id:J
    move-wide/from16 p1, v15

    .end local v15           #id:J
    .end local p2           #map:Landroid/content/ContentValues;
    .restart local p1       #id:J
    move-object/from16 p0, v11

    .end local v11           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_3

    .end local p0           #c:Landroid/database/Cursor;
    .restart local v6       #newRow:Landroid/net/Uri;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #id:J
    .restart local v14       #map:Landroid/content/ContentValues;
    .local p1, cr:Landroid/content/ContentResolver;
    .local p2, newCursor:Landroid/database/Cursor;
    .restart local p5
    :cond_e
    move-wide/from16 p0, v12

    .end local v12           #id:J
    .end local p1           #cr:Landroid/content/ContentResolver;
    .local p0, id:J
    goto/16 :goto_7

    .end local p0           #id:J
    .end local p2           #newCursor:Landroid/database/Cursor;
    .restart local v12       #id:J
    .restart local p1       #cr:Landroid/content/ContentResolver;
    :cond_f
    move-object/from16 p2, v14

    .end local v14           #map:Landroid/content/ContentValues;
    .local p2, map:Landroid/content/ContentValues;
    move-wide/from16 p0, v12

    .end local v12           #id:J
    .end local p1           #cr:Landroid/content/ContentResolver;
    .restart local p0       #id:J
    goto/16 :goto_2
.end method

.method public static updateVisitedHistoryTitle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "cr"
    .parameter "url"
    .parameter "title"

    .prologue
    const-string v7, "updateVisitedHistoryTitle"

    const-string v7, "title"

    const-string v7, "browser/api_v8/BrowserBookmarksAdapter"

    .line 333
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-static {p1}, Lcom/android/browser/model/MiRenProtocolUrlMapper;->getMappedMiRenUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, mappedUrl:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 339
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 340
    :cond_2
    invoke-static {p1}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->getSpecialUrlTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 342
    :cond_3
    const/4 v0, 0x0

    .line 344
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/browser/api_v8/BrowserInternal;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 345
    if-nez v0, :cond_4

    .line 365
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 347
    :cond_4
    :try_start_1
    const-string v7, "browser/api_v8/BrowserBookmarksAdapter"

    const-string v8, "updateVisitedHistoryTitle: %s. Title: %s. Hit: %d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_5
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 350
    const-string v7, "title"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, oldtitle:Ljava/lang/String;
    const-string v7, "url"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 352
    .local v5, oldurl:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 353
    :cond_6
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 354
    .local v2, map:Landroid/content/ContentValues;
    const-string v7, "title"

    invoke-virtual {v2, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 356
    .local v6, projection:[Ljava/lang/String;
    sget-object v7, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    const-string v8, "_id = ?"

    invoke-virtual {p0, v7, v2, v8, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 359
    .end local v2           #map:Landroid/content/ContentValues;
    .end local v4           #oldtitle:Ljava/lang/String;
    .end local v5           #oldurl:Ljava/lang/String;
    .end local v6           #projection:[Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 360
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v7, "browser/api_v8/BrowserBookmarksAdapter"

    const-string v8, "updateVisitedHistoryTitle"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_7
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 361
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 362
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v7, "browser/api_v8/BrowserBookmarksAdapter"

    const-string v8, "updateVisitedHistoryTitle"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 365
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v7

    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v7
.end method
