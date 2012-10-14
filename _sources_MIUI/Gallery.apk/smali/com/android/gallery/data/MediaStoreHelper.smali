.class public final Lcom/android/gallery/data/MediaStoreHelper;
.super Ljava/lang/Object;
.source "MediaStoreHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JJLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .locals 9
    .parameter "cr"
    .parameter "title"
    .parameter "dateAdded"
    .parameter "dateTaken"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"
    .parameter "degree"

    .prologue
    .line 98
    const/4 v6, 0x0

    .line 99
    .local v6, outputStream:Ljava/io/OutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    move-object v0, v4

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v4, dir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 103
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 104
    :cond_0
    new-instance v4, Ljava/io/File;

    .end local v4           #dir:Ljava/io/File;
    move-object v0, v4

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v4, file:Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .local v7, outputStream:Ljava/io/OutputStream;
    if-eqz p10, :cond_3

    .line 107
    :try_start_1
    sget-object p11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local p11
    const/16 v4, 0x4b

    move-object/from16 v0, p10

    move-object/from16 v1, p11

    move v2, v4

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 111
    .end local v4           #file:Ljava/io/File;
    :goto_0
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    invoke-static {v7}, Lcom/android/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 118
    const/16 p10, 0x0

    aget p10, p12, p10

    .end local p10
    if-eqz p10, :cond_1

    .line 120
    const/16 p10, 0x0

    aget p10, p12, p10

    move-object v0, v5

    move/from16 v1, p10

    invoke-static {v0, v1}, Lcom/android/gallery/data/MediaStoreHelper;->updateExifOrientation(Ljava/lang/String;I)V

    .line 123
    :cond_1
    new-instance p10, Ljava/io/File;

    move-object/from16 v0, p10

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p10 .. p10}, Ljava/io/File;->length()J

    move-result-wide p10

    .line 125
    .local p10, size:J
    new-instance v4, Landroid/content/ContentValues;

    const/16 v6, 0xb

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 126
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "title"

    invoke-virtual {v4, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string p1, "_display_name"

    .end local p1
    move-object v0, v4

    move-object v1, p1

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string p1, "datetaken"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p9

    .end local p9
    move-object v0, v4

    move-object v1, p1

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    const-string p1, "date_modified"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    .end local p4
    invoke-virtual {v4, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    const-string p1, "date_added"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .end local p2
    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    const-string p1, "mime_type"

    const-string p2, "image/jpeg"

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string p1, "orientation"

    const/4 p2, 0x0

    aget p2, p12, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    const-string p1, "_data"

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string p1, "_size"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 140
    if-eqz p6, :cond_2

    if-eqz p7, :cond_2

    .line 141
    const-string p1, "latitude"

    invoke-virtual {p6}, Ljava/lang/Double;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 142
    const-string p1, "longitude"

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Double;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 145
    :cond_2
    invoke-static/range {p8 .. p8}, Lcom/android/gallery/util/StorageUtils;->isInternal(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_1
    invoke-virtual {p0, p1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .end local p0
    move-object p1, p0

    move-object p0, v7

    .end local v4           #values:Landroid/content/ContentValues;
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .end local p10           #size:J
    .local p0, outputStream:Ljava/io/OutputStream;
    :goto_2
    return-object p1

    .line 109
    .local v4, file:Ljava/io/File;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1
    .restart local p2
    .restart local p4
    .restart local p9
    .local p10, source:Landroid/graphics/Bitmap;
    .restart local p11
    :cond_3
    :try_start_2
    move-object v0, v7

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 113
    .end local v4           #file:Ljava/io/File;
    .end local p11
    :catch_0
    move-exception p0

    move-object p1, v7

    .line 114
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .local p0, ex:Ljava/lang/Exception;
    .local p1, outputStream:Ljava/io/OutputStream;
    :goto_3
    const/4 p0, 0x0

    .line 116
    .end local p0           #ex:Ljava/lang/Exception;
    invoke-static {p1}, Lcom/android/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v8, p1

    .end local p1           #outputStream:Ljava/io/OutputStream;
    .local v8, outputStream:Ljava/io/OutputStream;
    move-object p1, p0

    move-object p0, v8

    .end local v8           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_2

    .restart local v6       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, title:Ljava/lang/String;
    .restart local p11
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .end local p1           #title:Ljava/lang/String;
    .end local p11
    .local p0, outputStream:Ljava/io/OutputStream;
    :goto_4
    invoke-static {p0}, Lcom/android/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw p1

    .line 145
    .end local p2
    .end local p4
    .end local p9
    .local v4, values:Landroid/content/ContentValues;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p10, size:J
    :cond_4
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 116
    .end local v4           #values:Landroid/content/ContentValues;
    .restart local p1       #title:Ljava/lang/String;
    .restart local p2
    .restart local p4
    .restart local p9
    .local p10, source:Landroid/graphics/Bitmap;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_4

    .line 113
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p11
    :catch_1
    move-exception p0

    move-object p1, v6

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .local p1, outputStream:Ljava/io/OutputStream;
    goto :goto_3
.end method

.method public static getMediaMeta(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/gallery/data/FileInfo;
    .locals 3
    .parameter "context"
    .parameter "target"

    .prologue
    .line 30
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 41
    :goto_0
    return-object v1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    .local v0, result:Lcom/android/gallery/data/FileInfo;
    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    invoke-static {p0, p1}, Lcom/android/gallery/data/MediaStoreHelper;->loadMediaMeta(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 41
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {p1}, Lcom/android/gallery/app/AppHelper;->isFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery/data/FileInfo;->getFileInfo(Ljava/lang/String;)Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    goto :goto_1
.end method

.method public static getUri(IZ)Landroid/net/Uri;
    .locals 1
    .parameter "type"
    .parameter "internal"

    .prologue
    .line 45
    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getUri(IZJ)Landroid/net/Uri;
    .locals 1
    .parameter "type"
    .parameter "internal"
    .parameter "id"

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/android/gallery/data/MediaStoreHelper;->getUri(IZ)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static loadMediaMeta(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/gallery/data/FileInfo;
    .locals 14
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v1, 0x1

    .line 57
    const/4 v12, 0x0

    .line 58
    .local v12, meta:Lcom/android/gallery/data/FileInfo;
    const/4 v6, 0x0

    .line 60
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 61
    .local v9, id:J
    invoke-static {p1}, Lcom/android/gallery/app/AppHelper;->isInternalMedia(Landroid/net/Uri;)Z

    move-result v11

    .line 62
    .local v11, isInternal:Z
    invoke-static {p1}, Lcom/android/gallery/app/AppHelper;->isImageUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v13, v1

    .line 64
    .local v13, type:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v13, v11, v9, v10}, Lcom/android/gallery/data/MediaStoreHelper;->getUri(IZJ)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, data:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/gallery/util/StorageUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {v7}, Lcom/android/gallery/data/FileInfo;->getFileInfo(Ljava/lang/String;)Lcom/android/gallery/data/FileInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 80
    .end local v7           #data:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 83
    .end local v9           #id:J
    .end local v11           #isInternal:Z
    .end local v13           #type:I
    :cond_1
    :goto_1
    return-object v12

    .line 62
    .restart local v9       #id:J
    .restart local v11       #isInternal:Z
    :cond_2
    const/4 v0, 0x2

    move v13, v0

    goto :goto_0

    .line 77
    .end local v9           #id:J
    .end local v11           #isInternal:Z
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 78
    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static notifyFileSystemChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "path"

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, intent:Landroid/content/Intent;
    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 176
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.providers.media"

    const-string v3, "com.android.providers.media.MediaScannerReceiver"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static updateExifOrientation(Ljava/lang/String;I)V
    .locals 5
    .parameter "filePath"
    .parameter "degree"

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v2, exif:Landroid/media/ExifInterface;
    if-eqz v2, :cond_0

    .line 157
    :try_start_1
    const-string v3, "Orientation"

    invoke-static {p1}, Lcom/android/gallery/util/Utils;->degreesToExifOrientation(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v1, v2

    .line 165
    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 163
    .local v0, ex:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :catch_1
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    goto :goto_1
.end method
