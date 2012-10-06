.class public final Lcom/android/contacts/ui/imageview/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/android/contacts/ui/imageview/ImageLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ui/imageview/ImageLoader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapFromFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "path"
    .parameter "opt"

    .prologue
    const/4 v7, 0x0

    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, retry:I
    move-object v2, p1

    .line 16
    .end local p1
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x4

    if-ge v3, v4, :cond_3

    .line 18
    if-eqz v2, :cond_0

    .line 19
    :try_start_0
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    move-object v4, v0

    .line 50
    :goto_2
    return-object v4

    .line 21
    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_1

    .line 24
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 25
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    :try_start_1
    sget-object v4, Lcom/android/contacts/ui/imageview/ImageLoader;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 27
    sget-object v4, Lcom/android/contacts/ui/imageview/ImageLoader;->LOG_TAG:Ljava/lang/String;

    const-string v5, "out of memory, try to GC"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    if-nez v2, :cond_1

    .line 29
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local p1
    const/4 v4, 0x2

    :try_start_2
    iput v4, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 31
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 32
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 39
    :goto_3
    sget-object v4, Lcom/android/contacts/ui/imageview/ImageLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "try to increase sample size to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, p1

    .line 45
    .end local p1
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    goto :goto_0

    .line 34
    :cond_1
    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 35
    :try_start_3
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    move-object p1, v2

    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local p1
    goto :goto_3

    .line 41
    .end local v1           #ex:Ljava/lang/OutOfMemoryError;
    .end local p1
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 43
    .local v1, ex:Ljava/lang/Exception;
    sget-object v4, Lcom/android/contacts/ui/imageview/ImageLoader;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v7

    .line 44
    goto :goto_2

    .line 45
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    move-object p1, v2

    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local p1
    :goto_4
    throw v4

    .line 49
    .end local p1
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    sget-object v4, Lcom/android/contacts/ui/imageview/ImageLoader;->LOG_TAG:Ljava/lang/String;

    const-string v5, "memory exhausted, unable to get the image from file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 50
    goto :goto_2

    .line 45
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    .restart local p1
    :catchall_1
    move-exception v4

    goto :goto_4
.end method
