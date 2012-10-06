.class public Lcom/android/mms/ui/SimplePduPart;
.super Lcom/google/android/mms/pdu/PduPart;
.source "SimplePduPart.java"


# instance fields
.field private mAttachmentType:I

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SimplePduPart;->mAttachmentType:I

    .line 26
    iput-object p1, p0, Lcom/android/mms/ui/SimplePduPart;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private extractImageFromData(II)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "widthLimit"
    .parameter "heightLimit"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->loadData()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->getData()[B

    move-result-object v2

    .line 63
    .local v2, data:[B
    new-instance v1, Landroid/graphics/drawable/GifAnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GifAnimationDrawable;-><init>()V

    .line 64
    .local v1, d:Landroid/graphics/drawable/GifAnimationDrawable;
    iget-object v6, p0, Lcom/android/mms/ui/SimplePduPart;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Landroid/graphics/drawable/GifAnimationDrawable;->load(Landroid/content/res/Resources;[B)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    .line 88
    .end local v1           #d:Landroid/graphics/drawable/GifAnimationDrawable;
    .end local v2           #data:[B
    :goto_0
    return-object v6

    .line 67
    .restart local v1       #d:Landroid/graphics/drawable/GifAnimationDrawable;
    .restart local v2       #data:[B
    :cond_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 68
    .local v4, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 69
    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 70
    const/4 v5, 0x1

    .line 71
    .local v5, sampleSize:I
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v6, p2, :cond_1

    .line 72
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v5, v6, p2

    .line 74
    :cond_1
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v6, p1, :cond_2

    .line 75
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v6, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 77
    :cond_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    .end local v4           #o:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 78
    .restart local v4       #o:Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 79
    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/mms/ui/SimplePduPart;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #d:Landroid/graphics/drawable/GifAnimationDrawable;
    .end local v2           #data:[B
    .end local v4           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #sampleSize:I
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 83
    .local v3, ex:Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    .line 84
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v3           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v6

    throw v6

    .line 88
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private extractTextFromData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->loadData()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->getData()[B

    move-result-object v0

    .line 94
    .local v0, data:[B
    if-eqz v0, :cond_1

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->getCharset()I

    move-result v3

    if-nez v3, :cond_0

    .line 97
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 107
    .end local v0           #data:[B
    :goto_0
    return-object v3

    .line 99
    .restart local v0       #data:[B
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->getCharset()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, name:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v2           #name:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 103
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 107
    .end local v0           #data:[B
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public getAttachmentType()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/android/mms/ui/SimplePduPart;->mAttachmentType:I

    return v0
.end method

.method public getImage(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "widthLimit"
    .parameter "heightLimit"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduPart;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SimplePduPart;->extractImageFromData(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SimplePduPart;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduPart;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageNoCache(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "widthLimit"
    .parameter "heightLimit"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SimplePduPart;->extractImageFromData(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->getContentType()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/mms/ui/SimplePduPart;->extractTextFromData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method loadData()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->getData()[B

    move-result-object v5

    if-eqz v5, :cond_0

    move v5, v8

    .line 138
    :goto_0
    return v5

    .line 114
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 117
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/SimplePduPart;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 118
    if-nez v3, :cond_2

    .line 130
    if-eqz v3, :cond_1

    .line 132
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    move v5, v7

    .line 134
    goto :goto_0

    .line 121
    :cond_2
    const/16 v5, 0x100

    :try_start_2
    new-array v1, v5, [B

    .line 122
    .local v1, buffer:[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 123
    .local v4, len:I
    :goto_2
    if-ltz v4, :cond_3

    .line 124
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 125
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    goto :goto_2

    .line 130
    :cond_3
    if-eqz v3, :cond_4

    .line 132
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 137
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SimplePduPart;->setData([B)V

    move v5, v8

    .line 138
    goto :goto_0

    .line 127
    .end local v1           #buffer:[B
    .end local v4           #len:I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 130
    .local v2, e:Ljava/io/IOException;
    if-eqz v3, :cond_5

    .line 132
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_4
    move v5, v7

    .line 134
    goto :goto_0

    .line 130
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_6

    .line 132
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 134
    :cond_6
    :goto_5
    throw v5

    .line 133
    :catch_1
    move-exception v5

    goto :goto_1

    .restart local v1       #buffer:[B
    .restart local v4       #len:I
    :catch_2
    move-exception v5

    goto :goto_3

    .end local v1           #buffer:[B
    .end local v4           #len:I
    .restart local v2       #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    goto :goto_4

    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    goto :goto_5
.end method

.method public setAttachmentType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/mms/ui/SimplePduPart;->mAttachmentType:I

    .line 35
    return-void
.end method
