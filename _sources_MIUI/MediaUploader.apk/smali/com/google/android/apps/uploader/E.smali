.class public final Lcom/google/android/apps/uploader/E;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/util/Date;

.field private h:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/E;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/uploader/r;
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/E;->f()Landroid/graphics/Bitmap;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->h:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :cond_0
    new-instance v0, Lcom/google/android/apps/uploader/r;

    iget-object v1, p0, Lcom/google/android/apps/uploader/E;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/uploader/E;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/apps/uploader/E;->e:Ljava/lang/String;

    iget-wide v9, p0, Lcom/google/android/apps/uploader/E;->f:J

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v11}, Lcom/google/android/apps/uploader/r;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B)V

    return-object v0
.end method

.method public final a(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "_display_name"

    const-string v6, "MediaUploader"

    if-nez p1, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/uploader/E;->b:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/apps/uploader/E;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/apps/uploader/E;->h:Landroid/graphics/Bitmap;

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->a:Landroid/content/ContentResolver;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v8

    const-string v1, "_display_name"

    aput-object v7, v2, v9

    const/4 v1, 0x2

    const-string v4, "_size"

    aput-object v4, v2, v1

    const/4 v1, 0x3

    const-string v4, "mime_type"

    aput-object v4, v2, v1

    const/4 v1, 0x4

    const-string v4, "datetaken"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "_display_name"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "_size"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "mime_type"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "datetaken"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    if-ltz v1, :cond_1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/apps/uploader/E;->d:J

    :cond_1
    if-ltz v2, :cond_2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/E;->e:Ljava/lang/String;

    :cond_2
    if-ltz v3, :cond_3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/uploader/E;->f:J

    :cond_3
    if-ltz v4, :cond_4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/E;->c:Ljava/lang/String;

    :cond_4
    if-ltz v5, :cond_5

    new-instance v1, Ljava/util/Date;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/google/android/apps/uploader/E;->g:Ljava/util/Date;

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    :goto_1
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/uploader/E;->c:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/uploader/E;->c:Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/uploader/E;->e:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_9

    iget-object v2, p0, Lcom/google/android/apps/uploader/E;->e:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/apps/uploader/E;->c:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_a

    iget-object v4, p0, Lcom/google/android/apps/uploader/E;->c:Ljava/lang/String;

    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/E;->c:Ljava/lang/String;

    :cond_6
    if-nez v0, :cond_b

    move v0, v9

    goto/16 :goto_0

    :cond_7
    const-string v0, "MediaUploader"

    const-string v0, "Failed to retrieve file metadata."

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    goto :goto_1

    :cond_8
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->a:Landroid/content/ContentResolver;

    const-string v1, "r"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/E;->e:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/uploader/E;->f:J

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MediaUploader"

    const-string v1, "Failed to open/close file descriptor"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v9

    goto/16 :goto_1

    :cond_9
    const-string v1, ""

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lcom/google/android/apps/uploader/E;->c:Ljava/lang/String;

    goto :goto_3

    :cond_b
    move v0, v8

    goto/16 :goto_0

    :cond_c
    move v0, v8

    goto/16 :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/uploader/E;->f:J

    return-wide v0
.end method

.method public final e()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->g:Ljava/util/Date;

    return-object v0
.end method

.method public final f()Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iput-object v4, p0, Lcom/google/android/apps/uploader/E;->h:Landroid/graphics/Bitmap;

    iget-wide v0, p0, Lcom/google/android/apps/uploader/E;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->c:Ljava/lang/String;

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->a:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/apps/uploader/E;->d:J

    invoke-static {v0, v1, v2, v5, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/E;->h:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->h:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/apps/uploader/E;->h:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->h:Landroid/graphics/Bitmap;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->c:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/E;->a:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/apps/uploader/E;->d:J

    invoke-static {v0, v1, v2, v5, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/E;->h:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
