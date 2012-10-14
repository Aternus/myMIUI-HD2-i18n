.class public Lcom/android/gallery/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 274
    if-nez p0, :cond_1

    .line 275
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 277
    :goto_0
    return v0

    .line 275
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 277
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static degreesToExifOrientation(I)I
    .locals 1
    .parameter "degree"

    .prologue
    .line 35
    add-int/lit16 v0, p0, 0x168

    rem-int/lit16 v0, v0, 0x168

    sparse-switch v0, :sswitch_data_0

    .line 40
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 36
    :sswitch_0
    const/4 v0, 0x6

    goto :goto_0

    .line 37
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 38
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 35
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public static doubleEquals(DD)Z
    .locals 4
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 169
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e7ad7f29abcaf48L

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static exifOrientationToDegrees(I)F
    .locals 1
    .parameter "exifOrientation"

    .prologue
    .line 44
    packed-switch p0, :pswitch_data_0

    .line 49
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 45
    :pswitch_1
    const/high16 v0, 0x42b4

    goto :goto_0

    .line 46
    :pswitch_2
    const/high16 v0, 0x4334

    goto :goto_0

    .line 47
    :pswitch_3
    const/high16 v0, 0x4387

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static floatEquals(FF)Z
    .locals 2
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 165
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x33d6bf95

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContentUri(Landroid/content/Context;Lcom/android/gallery/data/BaseMeta;)Landroid/net/Uri;
    .locals 12
    .parameter "context"
    .parameter "meta"

    .prologue
    const/4 v1, 0x1

    .line 285
    const-wide/16 v7, -0x1

    .line 286
    .local v7, id:J
    iget-object v0, p1, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery/util/StorageUtils;->isInternal(Ljava/lang/String;)Z

    move-result v9

    .line 287
    .local v9, isInternal:Z
    invoke-virtual {p1}, Lcom/android/gallery/data/BaseMeta;->isVideo()Z

    move-result v0

    if-nez v0, :cond_2

    move v10, v1

    .line 289
    .local v10, type:I
    :goto_0
    const/4 v6, 0x0

    .line 291
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v10, v9}, Lcom/android/gallery/data/MediaStoreHelper;->getUri(IZ)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v11, p1, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 298
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 303
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_1
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_4

    invoke-static {v10, v9, v7, v8}, Lcom/android/gallery/data/MediaStoreHelper;->getUri(IZJ)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    return-object v0

    .line 287
    .end local v6           #c:Landroid/database/Cursor;
    .end local v10           #type:I
    :cond_2
    const/4 v0, 0x2

    move v10, v0

    goto :goto_0

    .line 301
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v10       #type:I
    :catch_0
    move-exception v0

    .line 303
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 306
    :cond_4
    iget-object v0, p1, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery/util/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2
.end method

.method public static getFormatedDuration(J)Ljava/lang/String;
    .locals 12
    .parameter "miliseconds"

    .prologue
    const-wide/16 v10, 0xe10

    const-wide/16 v8, 0x3c

    .line 260
    const-wide/16 v6, 0x3e8

    div-long v4, p0, v6

    .line 262
    .local v4, second:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    .line 263
    const-string v6, "0"

    .line 269
    :goto_0
    return-object v6

    .line 265
    :cond_0
    div-long v0, v4, v10

    .line 266
    .local v0, hour:J
    mul-long v6, v10, v0

    sub-long/2addr v4, v6

    .line 267
    div-long v2, v4, v8

    .line 268
    .local v2, minute:J
    mul-long v6, v8, v2

    sub-long/2addr v4, v6

    .line 269
    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static getFormatedSizeString(J)Ljava/lang/String;
    .locals 6
    .parameter "size"

    .prologue
    const/4 v5, 0x0

    .line 245
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_0

    .line 246
    :try_start_0
    const-string v1, "0 B"

    .line 255
    :goto_0
    return-object v1

    .line 248
    :cond_0
    const-wide/32 v1, 0x100000

    cmp-long v1, p0, v1

    if-gez v1, :cond_1

    .line 249
    const-string v1, "%1.1f K"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    long-to-float v4, p0

    add-float/2addr v4, v5

    const/high16 v5, 0x4480

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 251
    :cond_1
    const-string v1, "%1.1f M"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    long-to-float v4, p0

    add-float/2addr v4, v5

    const/high16 v5, 0x4980

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 254
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "Utils"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v1, "Unknown"

    goto :goto_0
.end method

.method public static getMd5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "input"

    .prologue
    .line 226
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 227
    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 228
    .local v3, messageDigest:[B
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 229
    .local v4, number:Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, md5:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-ge v5, v6, :cond_0

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 236
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v2           #md5:Ljava/lang/String;
    .end local v3           #messageDigest:[B
    .end local v4           #number:Ljava/math/BigInteger;
    :goto_1
    return-object v5

    .line 234
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 235
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "path"

    .prologue
    .line 281
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static openMaps(Landroid/content/Context;DD)V
    .locals 8
    .parameter "context"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const-string v4, "android.intent.action.VIEW"

    .line 206
    :try_start_0
    const-string v4, "http://maps.google.com/maps?f=q&q=(%s,%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, url:Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.google.android.apps.maps"

    const-string v5, "com.google.android.maps.MapsActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .local v0, compName:Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 211
    .local v2, mapsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v0           #compName:Landroid/content/ComponentName;
    .end local v2           #mapsIntent:Landroid/content/Intent;
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 215
    .local v1, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v4, "Utils"

    const-string v5, "GMM activity not found!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const-string v4, "geo:%s,%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .restart local v3       #url:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 218
    .restart local v2       #mapsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 219
    .end local v2           #mapsIntent:Landroid/content/Intent;
    .end local v3           #url:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 55
    rem-int/lit16 p1, p1, 0x168

    .line 57
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 58
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 59
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 61
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 62
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    move-object p0, v7

    .line 70
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 66
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static sign(J)I
    .locals 3
    .parameter "value"

    .prologue
    const-wide/16 v1, 0x0

    .line 182
    cmp-long v0, p0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, v1

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "scaleUp"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    .line 76
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    .line 77
    .local v1, deltaY:I
    if-nez p4, :cond_1

    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 84
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local p0
    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 85
    .local p0, b2:Landroid/graphics/Bitmap;
    new-instance p4, Landroid/graphics/Canvas;

    .end local p4
    invoke-direct {p4, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 87
    .local p4, c:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    div-int/lit8 v0, v0, 0x2

    .end local v0           #deltaX:I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 88
    .local v0, deltaXHalf:I
    const/4 v2, 0x0

    div-int/lit8 v1, v1, 0x2

    .end local v1           #deltaY:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 89
    .local v1, deltaYHalf:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 92
    .local v3, src:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .end local v0           #deltaXHalf:I
    sub-int v0, p2, v0

    div-int/lit8 v1, v0, 0x2

    .line 93
    .local v1, dstX:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v2, v0, 0x2

    .line 94
    .local v2, dstY:I
    new-instance v0, Landroid/graphics/Rect;

    sub-int/2addr p2, v1

    sub-int/2addr p3, v2

    invoke-direct {v0, v1, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 95
    .end local p2
    .end local p3
    .local v0, dst:Landroid/graphics/Rect;
    const/4 p2, 0x0

    invoke-virtual {p4, p1, v3, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 138
    .end local v0           #dst:Landroid/graphics/Rect;
    .end local v1           #dstX:I
    .end local v2           #dstY:I
    .end local v3           #src:Landroid/graphics/Rect;
    .end local p4           #c:Landroid/graphics/Canvas;
    :goto_0
    return-object p0

    .line 98
    .local v0, deltaX:I
    .local v1, deltaY:I
    .local p0, scaler:Landroid/graphics/Matrix;
    .restart local p2
    .restart local p3
    .local p4, scaleUp:Z
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    .end local p4           #scaleUp:Z
    int-to-float v1, p4

    .line 99
    .local v1, bitmapWidthF:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float v0, p4

    .line 101
    .local v0, bitmapHeightF:F
    div-float p4, v1, v0

    .line 102
    .local p4, bitmapAspect:F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    .line 104
    .local v2, viewAspect:F
    cmpl-float p4, p4, v2

    if-lez p4, :cond_5

    .line 105
    .end local p4           #bitmapAspect:F
    int-to-float p4, p3

    div-float/2addr p4, v0

    .line 106
    .local p4, scale:F
    const v0, 0x3f666666

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_2

    .end local v0           #bitmapHeightF:F
    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-lez v0, :cond_4

    .line 107
    :cond_2
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 121
    :goto_1
    if-eqz p0, :cond_8

    .line 123
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .end local v1           #bitmapWidthF:F
    .end local v2           #viewAspect:F
    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 129
    .local p0, b1:Landroid/graphics/Bitmap;
    :goto_2
    const/4 p4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .end local p4           #scale:F
    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 130
    .local p4, dx1:I
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 132
    .local v0, dy1:I
    div-int/lit8 p4, p4, 0x2

    .end local p4           #dx1:I
    div-int/lit8 v0, v0, 0x2

    .end local v0           #dy1:I
    invoke-static {p0, p4, v0, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 134
    .local p2, b2:Landroid/graphics/Bitmap;
    if-eq p0, p1, :cond_3

    .line 135
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object p0, p2

    .line 138
    .end local p2           #b2:Landroid/graphics/Bitmap;
    .local p0, b2:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 109
    .restart local v1       #bitmapWidthF:F
    .restart local v2       #viewAspect:F
    .local p0, scaler:Landroid/graphics/Matrix;
    .local p2, targetWidth:I
    .local p4, scale:F
    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    .line 112
    .end local p4           #scale:F
    .local v0, bitmapHeightF:F
    :cond_5
    int-to-float p4, p2

    div-float/2addr p4, v1

    .line 113
    .restart local p4       #scale:F
    const v0, 0x3f666666

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_6

    .end local v0           #bitmapHeightF:F
    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-lez v0, :cond_7

    .line 114
    :cond_6
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 116
    :cond_7
    const/4 p0, 0x0

    goto :goto_1

    .line 126
    :cond_8
    move-object p0, p1

    .local p0, b1:Landroid/graphics/Bitmap;
    goto :goto_2
.end method
