.class public Lcom/android/browser/controller/ImageDownloadRunnable;
.super Ljava/lang/Object;
.source "ImageDownloadRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static LOGTAG:Ljava/lang/String;


# instance fields
.field mImageView:Lcom/android/browser/ui/MiRenImageView;

.field private mIsRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "com.android.browser.controller.ImageDownloadRunnable"

    sput-object v0, Lcom/android/browser/controller/ImageDownloadRunnable;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/controller/ImageDownloadRunnable;->mIsRunning:Z

    return-void
.end method

.method private downloadImage(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 20
    .parameter "url"
    .parameter "isRssIcon"

    .prologue
    .line 63
    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/android/browser/controller/ImageDownloadRunnable;->getMirenImageLocalCachePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 64
    .local v12, localPath:Ljava/lang/String;
    if-nez v12, :cond_0

    .line 65
    const/16 v17, 0x0

    .line 123
    .end local v12           #localPath:Ljava/lang/String;
    :goto_0
    return-object v17

    .line 68
    .restart local v12       #localPath:Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v17, v12

    .line 70
    goto :goto_0

    .line 73
    :cond_1
    const/4 v4, 0x0

    .line 74
    .local v4, bitmap:Landroid/graphics/Bitmap;
    new-instance v10, Ljava/net/URL;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    .local v10, imageUrl:Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 76
    .local v5, conn:Ljava/net/HttpURLConnection;
    const/16 v17, 0x1f40

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 77
    const/16 v17, 0x1f40

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 78
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 79
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 81
    .local v11, is:Ljava/io/InputStream;
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 82
    const/4 v13, 0x0

    .line 83
    .local v13, oldBitmap:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_3

    .line 84
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 85
    .local v9, height:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 86
    .local v16, width:I
    move v0, v9

    move/from16 v1, v16

    if-le v0, v1, :cond_4

    move v15, v9

    .line 87
    .local v15, size:I
    :goto_1
    const/16 v17, 0x96

    move v0, v15

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 88
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 89
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 90
    .local v14, output:Ljava/io/FileOutputStream;
    move-object v13, v4

    .line 91
    move v0, v15

    div-int/lit16 v0, v0, 0x96

    move/from16 v17, v0

    div-int v17, v16, v17

    move v0, v15

    div-int/lit16 v0, v0, 0x96

    move/from16 v18, v0

    div-int v18, v9, v18

    const/16 v19, 0x1

    move-object v0, v4

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 92
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move-object v0, v4

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 101
    .end local v14           #output:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_2

    .line 102
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 103
    :cond_2
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_3

    .line 104
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .end local v9           #height:I
    .end local v15           #size:I
    .end local v16           #width:I
    :cond_3
    move-object/from16 v17, v12

    .line 106
    goto/16 :goto_0

    .restart local v9       #height:I
    .restart local v16       #width:I
    :cond_4
    move/from16 v15, v16

    .line 86
    goto :goto_1

    .line 93
    .restart local v15       #size:I
    :cond_5
    const/16 v17, 0xa

    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 94
    const/4 v4, 0x0

    goto :goto_2

    .line 96
    :cond_6
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 97
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 98
    .restart local v14       #output:Ljava/io/FileOutputStream;
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move-object v0, v4

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_2

    .line 108
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #conn:Ljava/net/HttpURLConnection;
    .end local v8           #file:Ljava/io/File;
    .end local v9           #height:I
    .end local v10           #imageUrl:Ljava/net/URL;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v12           #localPath:Ljava/lang/String;
    .end local v13           #oldBitmap:Landroid/graphics/Bitmap;
    .end local v14           #output:Ljava/io/FileOutputStream;
    .end local v15           #size:I
    .end local v16           #width:I
    :catch_0
    move-exception v17

    move-object/from16 v7, v17

    .line 109
    .local v7, ex:Ljava/lang/StringIndexOutOfBoundsException;
    sget-object v17, Lcom/android/browser/controller/ImageDownloadRunnable;->LOGTAG:Ljava/lang/String;

    const-string v18, "Error while get input stream"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v7           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    :goto_3
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 110
    :catch_1
    move-exception v17

    move-object/from16 v7, v17

    .line 111
    .local v7, ex:Ljava/lang/SecurityException;
    sget-object v17, Lcom/android/browser/controller/ImageDownloadRunnable;->LOGTAG:Ljava/lang/String;

    const-string v18, "SecEx while make directory"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 112
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_2
    move-exception v17

    move-object/from16 v7, v17

    .line 113
    .local v7, ex:Ljava/net/MalformedURLException;
    sget-object v17, Lcom/android/browser/controller/ImageDownloadRunnable;->LOGTAG:Ljava/lang/String;

    const-string v18, "IOEx while image downloadImageSync"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 114
    .end local v7           #ex:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v17

    move-object/from16 v7, v17

    .line 115
    .local v7, ex:Ljava/net/SocketException;
    sget-object v17, Lcom/android/browser/controller/ImageDownloadRunnable;->LOGTAG:Ljava/lang/String;

    const-string v18, "IOEx while image downloadImageSync"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 116
    .end local v7           #ex:Ljava/net/SocketException;
    :catch_4
    move-exception v17

    move-object/from16 v7, v17

    .line 117
    .local v7, ex:Ljava/io/IOException;
    sget-object v17, Lcom/android/browser/controller/ImageDownloadRunnable;->LOGTAG:Ljava/lang/String;

    const-string v18, "IOEx while image downloadImageSync"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 118
    .end local v7           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v17

    move-object/from16 v6, v17

    .line 119
    .local v6, e:Ljava/lang/OutOfMemoryError;
    sget-object v17, Lcom/android/browser/controller/ImageDownloadRunnable;->LOGTAG:Ljava/lang/String;

    const-string v18, "OutOfMemoryError in downloadImageSync"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 120
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :catch_6
    move-exception v17

    move-object/from16 v6, v17

    .line 121
    .local v6, e:Ljava/lang/ClassCastException;
    sget-object v17, Lcom/android/browser/controller/ImageDownloadRunnable;->LOGTAG:Ljava/lang/String;

    const-string v18, "ClassCastException in downloadImageSync"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static getMirenImageLocalCachePath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter "isRssIcon"

    .prologue
    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    const/4 v4, 0x0

    .line 52
    :goto_0
    return-object v4

    .line 43
    :cond_0
    if-eqz p1, :cond_2

    sget-object v4, Lcom/android/browser/util/MirenConstants;->IMAGECACHE_RSSICON_PATH:Ljava/lang/String;

    move-object v0, v4

    .line 44
    .local v0, dirName:Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, folder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 49
    :cond_1
    invoke-static {p0}, Lcom/android/browser/common/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, imageUrlMD5:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, localPath:Ljava/lang/String;
    move-object v4, v3

    .line 52
    goto :goto_0

    .line 43
    .end local v0           #dirName:Ljava/lang/String;
    .end local v1           #folder:Ljava/io/File;
    .end local v2           #imageUrlMD5:Ljava/lang/String;
    .end local v3           #localPath:Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/android/browser/util/MirenConstants;->IMAGECACHE_PATH:Ljava/lang/String;

    move-object v0, v4

    goto :goto_1
.end method

.method private runDownloading(Lcom/android/browser/ui/MiRenImageView;)V
    .locals 5
    .parameter "imageView"

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/android/browser/ui/MiRenImageView;->getImageRemoteUrl()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, remoteUrl:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/browser/ui/MiRenImageView;->getIsRSSIcon()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/browser/controller/ImageDownloadRunnable;->downloadImage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, local:Ljava/lang/String;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 130
    .local v2, msg:Landroid/os/Message;
    sget v4, Lcom/android/browser/ui/MiRenImageView;->MESSAGE_IMAGE_LOAD_COMPLETE:I

    iput v4, v2, Landroid/os/Message;->what:I

    .line 131
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v1, map:Landroid/os/Bundle;
    sget-object v4, Lcom/android/browser/ui/MiRenImageView;->IMAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p1}, Lcom/android/browser/ui/MiRenImageView;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    return-void
.end method


# virtual methods
.method public isFree()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/browser/controller/ImageDownloadRunnable;->mIsRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/browser/controller/ImageDownloadRunnable;->mImageView:Lcom/android/browser/ui/MiRenImageView;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/browser/controller/ImageDownloadRunnable;->mImageView:Lcom/android/browser/ui/MiRenImageView;

    invoke-direct {p0, v1}, Lcom/android/browser/controller/ImageDownloadRunnable;->runDownloading(Lcom/android/browser/ui/MiRenImageView;)V

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 145
    .local v0, nextImageView:Lcom/android/browser/ui/MiRenImageView;
    invoke-static {}, Lcom/android/browser/ui/MiRenImageView;->popNextImageView()Lcom/android/browser/ui/MiRenImageView;

    move-result-object v0

    .line 146
    :goto_0
    if-eqz v0, :cond_1

    .line 147
    invoke-direct {p0, v0}, Lcom/android/browser/controller/ImageDownloadRunnable;->runDownloading(Lcom/android/browser/ui/MiRenImageView;)V

    .line 148
    invoke-static {}, Lcom/android/browser/ui/MiRenImageView;->popNextImageView()Lcom/android/browser/ui/MiRenImageView;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/controller/ImageDownloadRunnable;->mIsRunning:Z

    .line 151
    return-void
.end method

.method public setExecuting()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/controller/ImageDownloadRunnable;->mIsRunning:Z

    .line 155
    return-void
.end method

.method public setImageView(Lcom/android/browser/ui/MiRenImageView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/browser/controller/ImageDownloadRunnable;->mImageView:Lcom/android/browser/ui/MiRenImageView;

    .line 163
    return-void
.end method
