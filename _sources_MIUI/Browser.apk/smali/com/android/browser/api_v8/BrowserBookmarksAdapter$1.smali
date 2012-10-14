.class final Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;
.super Landroid/os/AsyncTask;
.source "BrowserBookmarksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->updateBookmarkFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
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


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$favicon:Landroid/graphics/Bitmap;

.field final synthetic val$onlyBookmark:Z

.field final synthetic val$originalUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;ZLandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;->val$originalUrl:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;->val$onlyBookmark:Z

    iput-object p5, p0, Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;->val$favicon:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .parameter "unused"

    .prologue
    const/4 v9, 0x0

    .line 93
    const-string v5, "browser/api_v8/BrowserBookmarksAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateBookmarkFavicon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;->val$url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v5, p0, Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;->val$cr:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;->val$originalUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;->val$url:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;->val$onlyBookmark:Z

    invoke-static {v5, v6, v7, v8}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->queryBookmarksForUrl(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v1

    .line 95
    .local v1, c:Landroid/database/Cursor;
    if-nez v1, :cond_0

    move-object v5, v9

    .line 114
    :goto_0
    return-object v5

    .line 98
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v4, values:Landroid/content/ContentValues;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    iget-object v5, p0, Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;->val$favicon:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 102
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 103
    .local v0, blob:[B
    const-string v5, "favicon"

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 105
    :cond_1
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 106
    .local v2, oldBlob:[B
    #calls: Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->byteArrayEquals([B[B)Z
    invoke-static {v2, v0}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->access$000([B[B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 111
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 113
    .end local v0           #blob:[B
    .end local v2           #oldBlob:[B
    .end local v3           #os:Ljava/io/ByteArrayOutputStream;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v5, v9

    .line 114
    goto :goto_0

    .line 108
    .restart local v0       #blob:[B
    .restart local v2       #oldBlob:[B
    .restart local v3       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_3
    iget-object v5, p0, Lcom/android/browser/api_v8/BrowserBookmarksAdapter$1;->val$cr:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method
