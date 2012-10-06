.class public Lcom/miui/player/helper/AlbumManager;
.super Ljava/lang/Object;
.source "AlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;,
        Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;,
        Lcom/miui/player/helper/AlbumManager$BitmapDecoder;,
        Lcom/miui/player/helper/AlbumManager$FastBitmapDrawable;
    }
.end annotation


# static fields
.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 59
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/miui/player/helper/AlbumManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 61
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/player/helper/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    .line 68
    sget-object v0, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 69
    sget-object v0, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 71
    sget-object v0, Lcom/miui/player/helper/AlbumManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 72
    sget-object v0, Lcom/miui/player/helper/AlbumManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$100(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lcom/miui/player/helper/AlbumManager;->getSampleOpt(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method public static getAlbumBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"
    .parameter "uri"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 496
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 497
    .local v2, res:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 498
    const/4 v1, 0x0

    .line 500
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v3, "r"

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 501
    new-instance v0, Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;-><init>(Ljava/io/FileDescriptor;)V

    .line 504
    .local v0, decoder:Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;
    invoke-static {v0, p2, p3}, Lcom/miui/player/helper/AlbumManager;->getCompressBitmap(Lcom/miui/player/helper/AlbumManager$BitmapDecoder;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 508
    if-eqz v1, :cond_0

    .line 509
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 515
    .end local v0           #decoder:Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-object v3

    .line 505
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v3

    .line 508
    if-eqz v1, :cond_1

    .line 509
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 515
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 507
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    .line 508
    if-eqz v1, :cond_2

    .line 509
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 512
    :cond_2
    :goto_2
    throw v3

    .line 511
    .restart local v0       #decoder:Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v0           #decoder:Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;
    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public static getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "song_id"
    .parameter "album_id"

    .prologue
    const/4 v7, 0x0

    .line 309
    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-gez v5, :cond_0

    move-object v5, v7

    .line 343
    :goto_0
    return-object v5

    .line 313
    :cond_0
    const/4 v0, 0x0

    .line 315
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 316
    .local v3, res:Landroid/content/ContentResolver;
    sget-object v5, Lcom/miui/player/helper/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 317
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_1

    .line 318
    const/4 v2, 0x0

    .line 320
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 321
    const/4 v5, 0x0

    sget-object v6, Lcom/miui/player/helper/AlbumManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 335
    if-eqz v2, :cond_1

    .line 336
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .end local v2           #in:Ljava/io/InputStream;
    :cond_1
    :goto_1
    move-object v5, v0

    .line 343
    goto :goto_0

    .line 322
    .restart local v2       #in:Ljava/io/InputStream;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 326
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/player/helper/AlbumManager;->getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-nez v5, :cond_2

    .line 328
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 335
    :cond_2
    if-eqz v2, :cond_1

    .line 336
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 338
    :catch_1
    move-exception v5

    goto :goto_1

    .line 331
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 335
    if-eqz v2, :cond_1

    .line 336
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 338
    :catch_3
    move-exception v5

    goto :goto_1

    .line 334
    :catchall_0
    move-exception v5

    .line 335
    if-eqz v2, :cond_3

    .line 336
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 339
    :cond_3
    :goto_2
    throw v5

    .line 338
    :catch_4
    move-exception v5

    goto :goto_1

    :catch_5
    move-exception v6

    goto :goto_2
.end method

.method private static getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "songid"
    .parameter "albumid"

    .prologue
    const-wide/16 v5, 0x0

    .line 470
    const/4 v0, 0x0

    .line 472
    .local v0, bm:Landroid/graphics/Bitmap;
    cmp-long v4, p3, v5

    if-gez v4, :cond_0

    cmp-long v4, p1, v5

    if-gez v4, :cond_0

    .line 473
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must specify an album or a song id"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 477
    :cond_0
    cmp-long v4, p3, v5

    if-ltz v4, :cond_1

    .line 478
    :try_start_0
    sget-object v4, Lcom/miui/player/helper/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v4, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 479
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 481
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 482
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 483
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 492
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-object v0

    .line 488
    :catch_0
    move-exception v4

    goto :goto_0

    .line 486
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private static getArtworkFromFileUri(Landroid/content/Context;JJ)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "songid"
    .parameter "albumid"

    .prologue
    const-wide/16 v6, 0x0

    .line 439
    const/4 v3, 0x0

    .line 440
    .local v3, ret:Landroid/net/Uri;
    cmp-long v5, p3, v6

    if-gez v5, :cond_0

    cmp-long v5, p1, v6

    if-gez v5, :cond_0

    .line 441
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Must specify an album or a song id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 445
    :cond_0
    cmp-long v5, p3, v6

    if-ltz v5, :cond_1

    .line 446
    :try_start_0
    sget-object v5, Lcom/miui/player/helper/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 447
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 449
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 450
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 451
    .local v1, fd:Ljava/io/FileDescriptor;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 452
    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 453
    const/4 v5, 0x0

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 454
    const/4 v5, 0x0

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 455
    const/4 v5, 0x0

    invoke-static {v1, v5, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 456
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v5, :cond_1

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v5, :cond_1

    .line 457
    move-object v3, v4

    .line 466
    .end local v0           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-object v3

    .line 462
    :catch_0
    move-exception v5

    goto :goto_0

    .line 461
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private static getArtworkQuick(Landroid/content/Context;JII)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 230
    .local v2, res:Landroid/content/ContentResolver;
    sget-object v4, Lcom/miui/player/helper/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 231
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 232
    const/4 v1, 0x0

    .line 234
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 235
    new-instance v0, Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;-><init>(Ljava/io/FileDescriptor;)V

    .line 238
    .local v0, decoder:Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;
    invoke-static {v0, p3, p4}, Lcom/miui/player/helper/AlbumManager;->getCompressBitmap(Lcom/miui/player/helper/AlbumManager$BitmapDecoder;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 242
    if-eqz v1, :cond_0

    .line 243
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    .end local v0           #decoder:Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-object v4

    .line 239
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v4

    .line 242
    if-eqz v1, :cond_1

    .line 243
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 249
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 241
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v4

    .line 242
    if-eqz v1, :cond_2

    .line 243
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 246
    :cond_2
    :goto_2
    throw v4

    .line 245
    .restart local v0       #decoder:Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v0           #decoder:Lcom/miui/player/helper/AlbumManager$FileDescriptorBitmapDecoder;
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method public static getArtworkStream(Landroid/content/Context;JJ)Ljava/io/InputStream;
    .locals 7
    .parameter "context"
    .parameter "song_id"
    .parameter "album_id"

    .prologue
    .line 351
    const/4 v2, 0x0

    .line 352
    .local v2, ret:Ljava/io/InputStream;
    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-gez v5, :cond_0

    move-object v3, v2

    .line 370
    .end local v2           #ret:Ljava/io/InputStream;
    .local v3, ret:Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 355
    .end local v3           #ret:Ljava/io/InputStream;
    .restart local v2       #ret:Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 356
    .local v1, res:Landroid/content/ContentResolver;
    sget-object v5, Lcom/miui/player/helper/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 357
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_1

    .line 359
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :cond_1
    :goto_1
    move-object v3, v2

    .line 370
    .end local v2           #ret:Ljava/io/InputStream;
    .restart local v3       #ret:Ljava/io/InputStream;
    goto :goto_0

    .line 360
    .end local v3           #ret:Ljava/io/InputStream;
    .restart local v2       #ret:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 364
    .local v0, ex:Ljava/io/FileNotFoundException;
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/player/helper/AlbumManager;->getArtworkStreamFromFileUri(Landroid/content/Context;JJ)Ljava/io/InputStream;

    move-result-object v2

    .line 368
    goto :goto_1

    .line 366
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private static getArtworkStreamFromFileUri(Landroid/content/Context;JJ)Ljava/io/InputStream;
    .locals 8
    .parameter "context"
    .parameter "songid"
    .parameter "albumid"

    .prologue
    const-wide/16 v6, 0x0

    .line 418
    const/4 v2, 0x0

    .line 419
    .local v2, ret:Ljava/io/InputStream;
    cmp-long v5, p3, v6

    if-gez v5, :cond_0

    cmp-long v5, p1, v6

    if-gez v5, :cond_0

    .line 420
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Must specify an album or a song id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 424
    :cond_0
    cmp-long v5, p3, v6

    if-ltz v5, :cond_1

    .line 425
    :try_start_0
    sget-object v5, Lcom/miui/player/helper/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v5, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 426
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 428
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 430
    .local v0, fd:Ljava/io/FileDescriptor;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #ret:Ljava/io/InputStream;
    .local v3, ret:Ljava/io/InputStream;
    move-object v2, v3

    .line 435
    .end local v0           #fd:Ljava/io/FileDescriptor;
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #ret:Ljava/io/InputStream;
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v2       #ret:Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v2

    .line 433
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static getArtworkUri(Landroid/content/Context;JJ)Landroid/net/Uri;
    .locals 9
    .parameter "context"
    .parameter "song_id"
    .parameter "album_id"

    .prologue
    const/4 v8, 0x0

    .line 378
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-gez v6, :cond_0

    move-object v6, v8

    .line 414
    :goto_0
    return-object v6

    .line 381
    :cond_0
    const/4 v4, 0x0

    .line 382
    .local v4, ret:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 383
    .local v3, res:Landroid/content/ContentResolver;
    sget-object v6, Lcom/miui/player/helper/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v6, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 384
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 385
    const/4 v2, 0x0

    .line 387
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 388
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 389
    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 390
    const/4 v6, 0x0

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 391
    const/4 v6, 0x0

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 392
    const/4 v6, 0x0

    invoke-static {v2, v6, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 393
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v6, :cond_1

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    if-lez v6, :cond_1

    .line 394
    move-object v4, v5

    .line 406
    :cond_1
    if-eqz v2, :cond_2

    .line 407
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .end local v0           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #in:Ljava/io/InputStream;
    :cond_2
    :goto_1
    move-object v6, v4

    .line 414
    goto :goto_0

    .line 396
    .restart local v2       #in:Ljava/io/InputStream;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 400
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/player/helper/AlbumManager;->getArtworkFromFileUri(Landroid/content/Context;JJ)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 406
    if-eqz v2, :cond_2

    .line 407
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 409
    :catch_1
    move-exception v6

    goto :goto_1

    .line 402
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v6

    .line 406
    if-eqz v2, :cond_2

    .line 407
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 409
    :catch_3
    move-exception v6

    goto :goto_1

    .line 405
    :catchall_0
    move-exception v6

    .line 406
    if-eqz v2, :cond_3

    .line 407
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 410
    :cond_3
    :goto_2
    throw v6

    .line 409
    .restart local v0       #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v6

    goto :goto_1

    .end local v0           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    :catch_5
    move-exception v7

    goto :goto_2
.end method

.method public static getCachedArtwork(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "artIndex"
    .parameter "album"
    .parameter "artist"
    .parameter "w"
    .parameter "h"
    .parameter "fromFile"

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 80
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz p7, :cond_1

    .line 81
    invoke-static {p3, p4, p5, p6}, Lcom/miui/player/helper/AlbumManager;->getXShareArtworkQuick(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    :goto_0
    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Lcom/miui/player/helper/AlbumManager$FastBitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Lcom/miui/player/helper/AlbumManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1

    .line 83
    :cond_1
    invoke-static {p0, p1, p2, p5, p6}, Lcom/miui/player/helper/AlbumManager;->getArtworkQuick(Landroid/content/Context;JII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCompressBitmap(Lcom/miui/player/helper/AlbumManager$BitmapDecoder;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "decoder"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-interface {p0, p1, p2}, Lcom/miui/player/helper/AlbumManager$BitmapDecoder;->decode(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-object v1

    .line 171
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 172
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 173
    .local v4, height:I
    int-to-float v1, v3

    int-to-float v2, v4

    div-float v9, v1, v2

    .line 174
    .local v9, radio:F
    int-to-float v1, p1

    int-to-float v2, p2

    div-float v10, v1, v2

    .line 175
    .local v10, scaleRadio:F
    const/4 v8, 0x0

    .line 176
    .local v8, isCut:Z
    sub-float v1, v9, v10

    const v2, 0x3c23d70a

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 177
    int-to-float v1, v4

    mul-float/2addr v1, v10

    float-to-int v3, v1

    .line 178
    const/4 v8, 0x1

    .line 186
    :cond_1
    :goto_1
    const/4 v11, 0x0

    .line 187
    .local v11, tmp:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_3

    .line 188
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 189
    if-eq v11, v0, :cond_2

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    :cond_2
    move-object v0, v11

    .line 194
    :cond_3
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 195
    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 198
    if-eq v11, v0, :cond_4

    .line 199
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_4
    move-object v0, v11

    :cond_5
    :goto_2
    move-object v1, v0

    .line 206
    goto :goto_0

    .line 179
    .end local v11           #tmp:Landroid/graphics/Bitmap;
    :cond_6
    sub-float v1, v9, v10

    const v2, -0x43dc28f6

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 180
    int-to-float v1, v3

    div-float/2addr v1, v10

    float-to-int v4, v1

    .line 181
    const/4 v8, 0x1

    goto :goto_1

    .line 203
    .restart local v11       #tmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 204
    .local v7, e:Ljava/lang/OutOfMemoryError;
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getCompressDrawable(Lcom/miui/player/helper/AlbumManager$BitmapDecoder;II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "decoder"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 158
    invoke-static {p0, p1, p2}, Lcom/miui/player/helper/AlbumManager;->getCompressBitmap(Lcom/miui/player/helper/AlbumManager$BitmapDecoder;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 160
    new-instance v1, Lcom/miui/player/helper/AlbumManager$FastBitmapDrawable;

    invoke-direct {v1, v0}, Lcom/miui/player/helper/AlbumManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getSampleOpt(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .parameter "opt"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 99
    const/4 v2, 0x1

    .line 100
    .local v2, sampleSize:I
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 101
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v1, v3, 0x1

    .line 102
    .local v1, nextWidth:I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v0, v3, 0x1

    .line 103
    .local v0, nextHeight:I
    :goto_0
    if-le v1, p1, :cond_0

    if-le v0, p2, :cond_0

    .line 104
    shl-int/lit8 v2, v2, 0x1

    .line 105
    shr-int/lit8 v1, v1, 0x1

    .line 106
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0           #nextHeight:I
    .end local v1           #nextWidth:I
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 110
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 111
    return-object p0
.end method

.method public static getXShareArtwork(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 288
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    const/4 v2, 0x0

    .line 300
    :goto_0
    return-object v2

    .line 292
    :cond_0
    const-string v2, "music/album"

    invoke-static {p0, p1, v2}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, filePath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 296
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v2, Lcom/miui/player/helper/AlbumManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 300
    goto :goto_0

    .line 297
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static getXShareArtworkQuick(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "file"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 215
    if-eqz p0, :cond_0

    .line 216
    new-instance v0, Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, decoder:Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;
    invoke-static {v0, p1, p2}, Lcom/miui/player/helper/AlbumManager;->getCompressBitmap(Lcom/miui/player/helper/AlbumManager$BitmapDecoder;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 220
    .end local v0           #decoder:Lcom/miui/player/helper/AlbumManager$FileBitmapDecoder;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getXShareArtworkQuick(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "album"
    .parameter "artist"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 210
    const-string v1, "music/album"

    invoke-static {p0, p1, v1}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 211
    .local v0, file:Ljava/io/File;
    invoke-static {v0, p2, p3}, Lcom/miui/player/helper/AlbumManager;->getXShareArtworkQuick(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static isArtworkQuickExist(Landroid/content/Context;J)Z
    .locals 8
    .parameter "context"
    .parameter "album_id"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 255
    .local v1, res:Landroid/content/ContentResolver;
    sget-object v3, Lcom/miui/player/helper/AlbumManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 256
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 260
    sget-object v3, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 261
    sget-object v3, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 262
    sget-object v3, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 263
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 265
    sget-object v3, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_1

    sget-object v3, Lcom/miui/player/helper/AlbumManager;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    if-lez v3, :cond_1

    .line 274
    if-eqz v0, :cond_0

    .line 275
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    :goto_0
    move v3, v7

    .line 281
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :goto_1
    return v3

    .line 274
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    if-eqz v0, :cond_2

    .line 275
    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_2
    :goto_2
    move v3, v6

    .line 281
    goto :goto_1

    .line 269
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v3

    .line 274
    if-eqz v0, :cond_2

    .line 275
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 277
    :catch_1
    move-exception v3

    goto :goto_2

    .line 270
    :catch_2
    move-exception v3

    .line 274
    if-eqz v0, :cond_2

    .line 275
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 277
    :catch_3
    move-exception v3

    goto :goto_2

    .line 273
    :catchall_0
    move-exception v3

    .line 274
    if-eqz v0, :cond_3

    .line 275
    :try_start_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 278
    :cond_3
    :goto_3
    throw v3

    .line 277
    :catch_4
    move-exception v3

    goto :goto_0

    :catch_5
    move-exception v3

    goto :goto_2

    :catch_6
    move-exception v4

    goto :goto_3
.end method
