.class public Lcom/android/mms/ui/UriImage;
.super Ljava/lang/Object;
.source "UriImage.java"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mPath:Ljava/lang/String;

.field private mSrc:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 62
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 65
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 72
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 75
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 82
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    .line 87
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->decodeBoundsInfo()V

    .line 88
    return-void

    .line 68
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromFile(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private decodeBoundsInfo()V
    .locals 7

    .prologue
    const-string v6, "IOException caught while closing stream"

    const-string v5, "Mms/image"

    .line 144
    const/4 v1, 0x0

    .line 146
    .local v1, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 147
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 148
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 149
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 150
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 151
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    if-eqz v1, :cond_0

    .line 158
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-void

    .line 159
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 152
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 154
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while opening stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    if-eqz v1, :cond_0

    .line 158
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 159
    :catch_2
    move-exception v0

    .line 161
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 156
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 158
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 162
    :cond_1
    :goto_1
    throw v3

    .line 159
    :catch_3
    move-exception v0

    .line 161
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getGifImageData(III)[B
    .locals 10
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 203
    const/16 v0, 0x1000

    .line 205
    .local v0, BUFFERSIZE:I
    iget v6, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    if-gt v6, p1, :cond_3

    iget v6, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    if-gt v6, p2, :cond_3

    .line 206
    const/4 v3, 0x0

    .line 208
    .local v3, gifInput:Ljava/io/InputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 209
    const/4 v6, 0x3

    new-array v1, v6, [B

    .line 210
    .local v1, b:[B
    new-instance v5, Lorg/apache/http/util/ByteArrayBuffer;

    array-length v6, v1

    add-int/lit16 v6, v6, 0x1000

    invoke-direct {v5, v6}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 211
    .local v5, result:Lorg/apache/http/util/ByteArrayBuffer;
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 212
    .local v4, read:I
    if-ne v4, v8, :cond_5

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    const/16 v7, 0x47

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    const/16 v7, 0x49

    if-ne v6, v7, :cond_5

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    const/16 v7, 0x46

    if-ne v6, v7, :cond_5

    .line 213
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 214
    const/16 v6, 0x1000

    new-array v1, v6, [B

    .line 215
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_4

    .line 216
    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v6

    add-int/2addr v6, v4

    if-le v6, p3, :cond_2

    .line 228
    if-eqz v3, :cond_0

    .line 230
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    :goto_1
    move-object v6, v9

    .line 236
    .end local v1           #b:[B
    .end local v3           #gifInput:Ljava/io/InputStream;
    .end local v4           #read:I
    .end local v5           #result:Lorg/apache/http/util/ByteArrayBuffer;
    :cond_1
    :goto_2
    return-object v6

    .line 219
    .restart local v1       #b:[B
    .restart local v3       #gifInput:Ljava/io/InputStream;
    .restart local v4       #read:I
    .restart local v5       #result:Lorg/apache/http/util/ByteArrayBuffer;
    :cond_2
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v5, v1, v6, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 223
    .end local v1           #b:[B
    .end local v4           #read:I
    .end local v5           #result:Lorg/apache/http/util/ByteArrayBuffer;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 224
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    if-eqz v3, :cond_3

    .line 230
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v3           #gifInput:Ljava/io/InputStream;
    :cond_3
    :goto_3
    move-object v6, v9

    .line 236
    goto :goto_2

    .line 221
    .restart local v1       #b:[B
    .restart local v3       #gifInput:Ljava/io/InputStream;
    .restart local v4       #read:I
    .restart local v5       #result:Lorg/apache/http/util/ByteArrayBuffer;
    :cond_4
    :try_start_5
    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v6

    .line 228
    if-eqz v3, :cond_1

    .line 230
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 231
    :catch_1
    move-exception v7

    goto :goto_2

    .line 228
    :cond_5
    if-eqz v3, :cond_3

    .line 230
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 231
    :catch_2
    move-exception v6

    goto :goto_3

    .line 225
    .end local v1           #b:[B
    .end local v4           #read:I
    .end local v5           #result:Lorg/apache/http/util/ByteArrayBuffer;
    :catch_3
    move-exception v6

    move-object v2, v6

    .line 226
    .local v2, e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 228
    if-eqz v3, :cond_3

    .line 230
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    .line 231
    :catch_4
    move-exception v6

    goto :goto_3

    .line 228
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_6

    .line 230
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 232
    :cond_6
    :goto_4
    throw v6

    .line 231
    .restart local v1       #b:[B
    .restart local v4       #read:I
    .restart local v5       #result:Lorg/apache/http/util/ByteArrayBuffer;
    :catch_5
    move-exception v6

    goto :goto_1

    .end local v1           #b:[B
    .end local v4           #read:I
    .end local v5           #result:Lorg/apache/http/util/ByteArrayBuffer;
    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v6

    goto :goto_3

    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v7

    goto :goto_4
.end method

.method private getResizedImageData(III)[B
    .locals 23
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    .line 240
    invoke-direct/range {p0 .. p3}, Lcom/android/mms/ui/UriImage;->getGifImageData(III)[B

    move-result-object v7

    .line 241
    .local v7, gifData:[B
    if-eqz v7, :cond_1

    move-object/from16 v20, v7

    .line 346
    :cond_0
    :goto_0
    return-object v20

    .line 245
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move v14, v0

    .line 246
    .local v14, outWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    move v13, v0

    .line 248
    .local v13, outHeight:I
    const/16 v17, 0x1

    .line 249
    .local v17, scaleFactor:I
    :goto_1
    div-int v20, v14, v17

    move/from16 v0, v20

    move/from16 v1, p1

    if-gt v0, v1, :cond_2

    div-int v20, v13, v17

    move/from16 v0, v20

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    .line 250
    :cond_2
    mul-int/lit8 v17, v17, 0x2

    goto :goto_1

    .line 253
    :cond_3
    const-string v20, "Mms:app"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 254
    const-string v20, "Mms/image"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getResizedImageData: wlimit="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", hlimit="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", sizeLimit="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mWidth="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mHeight="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", initialScaleFactor="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_4
    const/4 v8, 0x0

    .line 262
    .local v8, input:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 263
    .local v11, os:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x1

    .local v4, attempts:I
    move-object v12, v11

    .line 266
    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .local v12, os:Ljava/io/ByteArrayOutputStream;
    :goto_2
    :try_start_0
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 267
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v8

    .line 269
    const/16 v15, 0x50

    .line 271
    .local v15, quality:I
    const/16 v20, 0x0

    :try_start_1
    move-object v0, v8

    move-object/from16 v1, v20

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a

    move-result-object v5

    .line 272
    .local v5, b:Landroid/graphics/Bitmap;
    if-nez v5, :cond_5

    .line 273
    const/16 v20, 0x0

    .line 341
    if-eqz v8, :cond_0

    .line 343
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 344
    :catch_0
    move-exception v6

    .line 345
    .local v6, e:Ljava/io/IOException;
    const-string v21, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 275
    .end local v6           #e:Ljava/io/IOException;
    :cond_5
    :try_start_3
    move-object v0, v10

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    if-gt v0, v1, :cond_6

    move-object v0, v10

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-le v0, v1, :cond_8

    .line 278
    :cond_6
    div-int v19, v14, v17

    .line 279
    .local v19, scaledWidth:I
    div-int v18, v13, v17

    .line 281
    .local v18, scaledHeight:I
    const-string v20, "Mms:app"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 282
    const-string v20, "Mms/image"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getResizedImageData: retry scaling using Bitmap.createScaledBitmap: w="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", h="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_7
    div-int v20, v14, v17

    div-int v21, v13, v17

    const/16 v22, 0x0

    move-object v0, v5

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a

    move-result-object v5

    .line 289
    if-nez v5, :cond_8

    .line 290
    const/16 v20, 0x0

    .line 341
    if-eqz v8, :cond_0

    .line 343
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 344
    :catch_1
    move-exception v6

    .line 345
    .restart local v6       #e:Ljava/io/IOException;
    const-string v21, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 299
    .end local v6           #e:Ljava/io/IOException;
    .end local v18           #scaledHeight:I
    .end local v19           #scaledWidth:I
    :cond_8
    :try_start_5
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_a

    .line 300
    .end local v12           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    :try_start_6
    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, v5

    move-object/from16 v1, v20

    move v2, v15

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 301
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    .line 302
    .local v9, jpgFileSize:I
    move v0, v9

    move/from16 v1, p3

    if-le v0, v1, :cond_a

    .line 303
    mul-int v20, v15, p3

    div-int v16, v20, v9

    .line 304
    .local v16, reducedQuality:I
    const/16 v20, 0x32

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_a

    .line 305
    move/from16 v15, v16

    .line 307
    const-string v20, "Mms:app"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 308
    const-string v20, "Mms/image"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getResizedImageData: compress(2) w/ quality="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_9
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    .line 312
    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #os:Ljava/io/ByteArrayOutputStream;
    :try_start_7
    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, v5

    move-object/from16 v1, v20

    move v2, v15

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_a

    move-object v11, v12

    .line 315
    .end local v12           #os:Ljava/io/ByteArrayOutputStream;
    .end local v16           #reducedQuality:I
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    :cond_a
    :try_start_8
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    .line 321
    .end local v5           #b:Landroid/graphics/Bitmap;
    .end local v9           #jpgFileSize:I
    :goto_3
    :try_start_9
    const-string v20, "Mms:app"

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 322
    const-string v20, "Mms/image"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "attempt="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " size="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-nez v11, :cond_e

    const/16 v22, 0x0

    :goto_4
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " width="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    div-int v22, v14, v17

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " height="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    div-int v22, v13, v17

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " scaleFactor="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " quality="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_b
    mul-int/lit8 v17, v17, 0x2

    .line 330
    add-int/lit8 v4, v4, 0x1

    .line 331
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_9

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p3

    if-le v0, v1, :cond_d

    :cond_c
    const/16 v20, 0x4

    move v0, v4

    move/from16 v1, v20

    if-lt v0, v1, :cond_11

    .line 333
    :cond_d
    if-nez v11, :cond_f

    const/16 v20, 0x0

    .line 341
    :goto_5
    if-eqz v8, :cond_0

    .line 343
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_0

    .line 344
    :catch_2
    move-exception v6

    .line 345
    .restart local v6       #e:Ljava/io/IOException;
    const-string v21, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 316
    .end local v6           #e:Ljava/io/IOException;
    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #os:Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v20

    move-object/from16 v6, v20

    move-object v11, v12

    .line 317
    .end local v12           #os:Ljava/io/ByteArrayOutputStream;
    .local v6, e:Ljava/lang/OutOfMemoryError;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    :goto_6
    :try_start_b
    const-string v20, "Mms/image"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getResizedImageData - image too big (OutOfMemoryError), will try  with smaller scale factor, cur scale factor: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_9

    goto/16 :goto_3

    .line 334
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v20

    move-object/from16 v6, v20

    .line 335
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v15           #quality:I
    .local v6, e:Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_c
    const-string v20, "Mms/image"

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 336
    const/16 v20, 0x0

    .line 341
    if-eqz v8, :cond_0

    .line 343
    :try_start_d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_0

    .line 344
    :catch_5
    move-exception v6

    .line 345
    .local v6, e:Ljava/io/IOException;
    const-string v21, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 322
    .end local v6           #e:Ljava/io/IOException;
    .restart local v10       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v15       #quality:I
    :cond_e
    :try_start_e
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v22

    goto/16 :goto_4

    .line 333
    :cond_f
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_9

    move-result-object v20

    goto :goto_5

    .line 337
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .end local v15           #quality:I
    .restart local v12       #os:Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v20

    move-object/from16 v6, v20

    move-object v11, v12

    .line 338
    .end local v12           #os:Ljava/io/ByteArrayOutputStream;
    .local v6, e:Ljava/lang/OutOfMemoryError;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    :goto_8
    :try_start_f
    const-string v20, "Mms/image"

    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 339
    const/16 v20, 0x0

    .line 341
    if-eqz v8, :cond_0

    .line 343
    :try_start_10
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_0

    .line 344
    :catch_7
    move-exception v6

    .line 345
    .local v6, e:Ljava/io/IOException;
    const-string v21, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 341
    .end local v6           #e:Ljava/io/IOException;
    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v20

    if-eqz v8, :cond_10

    .line 343
    :try_start_11
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    .line 346
    :cond_10
    :goto_9
    throw v20

    .line 344
    :catch_8
    move-exception v6

    .line 345
    .restart local v6       #e:Ljava/io/IOException;
    const-string v21, "Mms/image"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 337
    .end local v6           #e:Ljava/io/IOException;
    .restart local v10       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v15       #quality:I
    :catch_9
    move-exception v20

    move-object/from16 v6, v20

    goto :goto_8

    .line 334
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .end local v15           #quality:I
    .restart local v12       #os:Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v20

    move-object/from16 v6, v20

    move-object v11, v12

    .end local v12           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 316
    .restart local v5       #b:Landroid/graphics/Bitmap;
    .restart local v10       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v15       #quality:I
    :catch_b
    move-exception v20

    move-object/from16 v6, v20

    goto/16 :goto_6

    .end local v5           #b:Landroid/graphics/Bitmap;
    :cond_11
    move-object v12, v11

    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_2
.end method

.method private initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const-string v0, "_data"

    const-string v9, "Query on "

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 111
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns null result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 123
    :cond_2
    :try_start_1
    invoke-static {p2}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    const-string v0, "fn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, filePath:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 129
    :cond_3
    const-string v0, "ct"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 137
    :goto_0
    iput-object v8, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 141
    return-void

    .line 132
    .end local v8           #filePath:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 134
    .restart local v8       #filePath:Ljava/lang/String;
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private initFromFile(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 91
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 92
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 93
    .local v2, mimeTypeMap:Landroid/webkit/MimeTypeMap;
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, extension:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 98
    .local v0, dotPos:I
    if-ltz v0, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .end local v0           #dotPos:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    return v0
.end method

.method public getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    .locals 4
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    .line 184
    new-instance v1, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 186
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/UriImage;->getResizedImageData(III)[B

    move-result-object v0

    .line 187
    .local v0, data:[B
    if-nez v0, :cond_0

    .line 189
    const-string v2, "Mms/image"

    const-string v3, "Resize image failed."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v2, 0x0

    .line 197
    :goto_0
    return-object v2

    .line 194
    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 195
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    move-object v2, v1

    .line 197
    goto :goto_0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    return v0
.end method
