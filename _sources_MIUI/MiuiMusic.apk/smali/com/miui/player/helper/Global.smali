.class public Lcom/miui/player/helper/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field public static IS_LPA_DECODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "persist.sys.lpa.decode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/player/helper/Global;->IS_LPA_DECODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .parameter "inputStream"
    .parameter "outputStream"

    .prologue
    .line 105
    const/16 v0, 0x4000

    .line 106
    .local v0, BUFFER_SIZE:I
    const/16 v4, 0x4000

    new-array v1, v4, [B

    .line 107
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 109
    .local v2, byteread:I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 110
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 114
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 112
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, inputStream:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 121
    .local v4, outputStream:Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 122
    .local v6, ret:Z
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v7, v6

    .line 147
    .end local v6           #ret:Z
    .local v7, ret:I
    :goto_0
    return v7

    .line 126
    .end local v7           #ret:I
    .restart local v6       #ret:Z
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v3, oldfile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 128
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    .end local v1           #inputStream:Ljava/io/InputStream;
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 130
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .local v5, outputStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {v2, v5}, Lcom/miui/player/helper/Global;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 131
    const/4 v6, 0x1

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 137
    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    :cond_1
    if-eqz v1, :cond_2

    .line 138
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 140
    :cond_2
    if-eqz v4, :cond_3

    .line 141
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v3           #oldfile:Ljava/io/File;
    :cond_3
    :goto_1
    move v7, v6

    .line 147
    .restart local v7       #ret:I
    goto :goto_0

    .line 143
    .end local v7           #ret:I
    .restart local v3       #oldfile:Ljava/io/File;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 144
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 133
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #oldfile:Ljava/io/File;
    :catch_1
    move-exception v8

    .line 137
    :goto_2
    if-eqz v1, :cond_4

    .line 138
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 140
    :cond_4
    if-eqz v4, :cond_3

    .line 141
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 143
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 144
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 136
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 137
    :goto_3
    if-eqz v1, :cond_5

    .line 138
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 140
    :cond_5
    if-eqz v4, :cond_6

    .line 141
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 145
    :cond_6
    :goto_4
    throw v8

    .line 143
    :catch_3
    move-exception v9

    move-object v0, v9

    .line 144
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 136
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v3       #oldfile:Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_3

    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v5       #outputStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_3

    .line 133
    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catch_4
    move-exception v8

    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_2

    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v5       #outputStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v8

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static getBitmapBottomAlpha(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "src"
    .parameter "alphaPercent"

    .prologue
    .line 76
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 101
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return-object p0

    .line 80
    .restart local p0
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 81
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 82
    .local v7, height:I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 83
    .local v1, argb:[I
    int-to-float v0, v7

    mul-float/2addr p1, v0

    float-to-int v9, p1

    .line 84
    .local v9, transLen:I
    sub-int v8, v7, v9

    .line 85
    .local v8, opaqueLen:I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 86
    .end local p1
    const/4 p1, 0x0

    .local p1, i:I
    move v0, p1

    .end local p1           #i:I
    .local v0, i:I
    :goto_1
    if-ge v0, v9, :cond_3

    .line 87
    add-int v4, v0, v8

    .line 88
    .local v4, row:I
    const/16 p1, 0xff

    mul-int/lit16 v2, v0, 0xff

    div-int/2addr v2, v9

    sub-int/2addr p1, v2

    .line 89
    .local p1, alpha:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 90
    mul-int v5, v4, v3

    add-int/2addr v5, v2

    shl-int/lit8 v6, p1, 0x18

    mul-int v10, v4, v3

    add-int/2addr v10, v2

    aget v10, v1, v10

    const v11, 0xffffff

    and-int/2addr v10, v11

    or-int/2addr v6, v10

    aput v6, v1, v5

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 86
    :cond_2
    add-int/lit8 p1, v0, 0x1

    .end local v0           #i:I
    .local p1, i:I
    move v0, p1

    .end local p1           #i:I
    .restart local v0       #i:I
    goto :goto_1

    .line 95
    .end local v2           #j:I
    .end local v4           #row:I
    :cond_3
    const/4 p1, 0x0

    .line 97
    .local p1, bm:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local p1           #bm:Landroid/graphics/Bitmap;
    invoke-static {v1, v3, v7, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .local p0, bm:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 98
    .local p0, src:Landroid/graphics/Bitmap;
    :catch_0
    move-exception p1

    .line 99
    .local p1, e:Ljava/lang/OutOfMemoryError;
    move-object p0, p0

    .local p0, bm:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getPathRelateToRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMIUIStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bitmap"
    .parameter "pixels"

    .prologue
    const/4 v10, 0x0

    .line 151
    if-nez p0, :cond_0

    .line 152
    const/4 v7, 0x0

    .line 172
    :goto_0
    return-object v7

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 157
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 159
    .local v1, color:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 160
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 161
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 162
    .local v5, rectF:Landroid/graphics/RectF;
    int-to-float v6, p1

    .line 164
    .local v6, roundPx:F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 166
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    invoke-virtual {v0, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 169
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 170
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v7, v2

    .line 172
    goto :goto_0
.end method

.method public static overridePendingTransition(Landroid/app/Activity;II)Z
    .locals 8
    .parameter "activity"
    .parameter "enterAnim"
    .parameter "exitAnim"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 44
    new-array v2, v7, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    .line 48
    .local v2, overridePendingTransitionSignature:[Ljava/lang/Class;
    const/4 v1, 0x0

    .line 50
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "overridePendingTransition"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 56
    :goto_0
    if-eqz v1, :cond_0

    .line 57
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    .line 61
    .local v0, args:[Ljava/lang/Object;
    :try_start_1
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move v3, v6

    .line 68
    .end local v0           #args:[Ljava/lang/Object;
    :goto_2
    return v3

    :cond_0
    move v3, v5

    goto :goto_2

    .line 62
    .restart local v0       #args:[Ljava/lang/Object;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 63
    :catch_1
    move-exception v3

    goto :goto_1

    .line 53
    .end local v0           #args:[Ljava/lang/Object;
    :catch_2
    move-exception v3

    goto :goto_0

    .line 52
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static translateToContentUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "baseUri"
    .parameter "idProject"
    .parameter "pathProject"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 197
    if-eqz p1, :cond_1

    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    aput-object p3, v2, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 200
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 202
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 204
    .local v7, id:J
    invoke-static {p2, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 207
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 212
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #id:J
    :goto_0
    return-object v0

    .line 207
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    move-object v0, v5

    .line 212
    goto :goto_0

    .line 207
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static translateToFileUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 177
    if-eqz p1, :cond_1

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 181
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 183
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 187
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 192
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    return-object p1

    .line 187
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
