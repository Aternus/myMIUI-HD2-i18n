.class public Lcom/android/browser/controller/BookmarkFolder;
.super Ljava/lang/Object;
.source "BookmarkFolder.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "com.android.browser.controller.BookmarkFolder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBookmarkFolder(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "cr"
    .parameter "title"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 23
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 24
    .local v10, map:Landroid/content/ContentValues;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 25
    .local v6, creationTime:J
    const/4 v8, 0x0

    .line 28
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->FOLDER_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_FOLDER_PROJECTION:[Ljava/lang/String;

    const-string v3, "title=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 31
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    const-string v0, "created"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    const-string v0, "date"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    const-string v0, "flags"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    const-string v0, "title"

    invoke-virtual {v10, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "position"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 39
    sget-object v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->FOLDER_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-eqz v8, :cond_0

    .line 52
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v12

    :goto_0
    return v0

    .line 51
    :cond_1
    if-eqz v8, :cond_2

    .line 52
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v11

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 47
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "com.android.browser.controller.BookmarkFolder"

    const-string v1, "add bookmark folder "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    if-eqz v8, :cond_3

    .line 52
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v11

    goto :goto_0

    .line 51
    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 52
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getFolderIdByTitle(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 9
    .parameter "cr"
    .parameter "title"

    .prologue
    const/4 v8, 0x0

    .line 59
    const/4 v7, -0x1

    .line 60
    .local v7, result:I
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->FOLDER_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_FOLDER_PROJECTION:[Ljava/lang/String;

    const-string v3, "title=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 63
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 65
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 66
    return v7
.end method

.method public static removeBookmarkFolder(Landroid/content/Context;Landroid/content/ContentResolver;I)V
    .locals 4
    .parameter "context"
    .parameter "cr"
    .parameter "folderId"

    .prologue
    .line 72
    :try_start_0
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->FOLDER_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    if-eqz p0, :cond_0

    .line 75
    const v1, 0x7f090037

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 80
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "com.android.browser.controller.BookmarkFolder"

    const-string v2, "remove bookmark folder"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static updatePositionById(Landroid/content/Context;JLandroid/content/ContentResolver;F)V
    .locals 4
    .parameter "context"
    .parameter "folderId"
    .parameter "cr"
    .parameter "position"

    .prologue
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, queryString:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v0, map:Landroid/content/ContentValues;
    const-string v2, "position"

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 89
    sget-object v2, Lcom/android/browser/model/BrowserHistoryDataProvider;->FOLDER_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v0, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public static updateTitleById(Landroid/content/Context;JLandroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "folderId"
    .parameter "cr"
    .parameter "title"

    .prologue
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, queryString:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v0, map:Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v2, Lcom/android/browser/model/BrowserHistoryDataProvider;->FOLDER_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v0, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    return-void
.end method
