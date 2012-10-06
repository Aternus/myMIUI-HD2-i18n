.class public Lcom/android/gallery/ui/PhotoFramePicker;
.super Landroid/app/Activity;
.source "PhotoFramePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/ui/PhotoFramePicker$1;,
        Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;,
        Lcom/android/gallery/ui/PhotoFramePicker$OnButtonClickListener;
    }
.end annotation


# instance fields
.field private mCallbackId:J

.field private mCallerCode:Ljava/lang/String;

.field private mCallerDownloadDir:Ljava/lang/String;

.field private mCallerPackageName:Ljava/lang/String;

.field private mCallerSourceFolders:[Ljava/lang/String;

.field private mCallerTypeParameter:Ljava/lang/String;

.field mCurrentLoadTask:Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;

.field private mCurrentUseZipPath:Ljava/lang/String;

.field private mFilterCode:I

.field mFilterEntryName:Ljava/lang/String;

.field mFrameEntryName:Ljava/lang/String;

.field mImageEntryName:Ljava/lang/String;

.field mImageUri:Landroid/net/Uri;

.field mImageView:Lcom/android/gallery/view/PhotoFrameView;

.field private mInitMatrixValues:[F

.field mInitRotateDegrees:I

.field mZipFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mFrameEntryName:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mFilterEntryName:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mInitRotateDegrees:I

    .line 67
    iput-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mInitMatrixValues:[F

    .line 77
    iput-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    .line 271
    iput-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;

    .line 273
    return-void
.end method

.method private parse(Ljava/lang/String;)Z
    .locals 12
    .parameter "config"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x9

    .line 325
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, json:Lorg/json/JSONObject;
    const-string v8, "image_uri"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, photo:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object v4, v8

    .line 328
    .local v4, photoUri:Landroid/net/Uri;
    :goto_0
    const-string v8, "zip_file"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 329
    .local v7, zipPath:Ljava/lang/String;
    const-string v8, "matrix"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 330
    .local v2, jsonArr:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 331
    .local v6, values:[F
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v8, v10, :cond_1

    .line 332
    const/16 v8, 0x9

    new-array v6, v8, [F

    .line 333
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v10, :cond_1

    .line 334
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v6, v0

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v2           #jsonArr:Lorg/json/JSONArray;
    .end local v4           #photoUri:Landroid/net/Uri;
    .end local v6           #values:[F
    .end local v7           #zipPath:Ljava/lang/String;
    :cond_0
    move-object v4, v11

    .line 327
    goto :goto_0

    .line 337
    .restart local v2       #jsonArr:Lorg/json/JSONArray;
    .restart local v4       #photoUri:Landroid/net/Uri;
    .restart local v6       #values:[F
    .restart local v7       #zipPath:Ljava/lang/String;
    :cond_1
    const-string v8, "rotate"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 339
    .local v5, rotate:I
    iput-object v4, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    .line 340
    iput-object v7, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    .line 341
    iput-object v6, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mInitMatrixValues:[F

    .line 342
    iput v5, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mInitRotateDegrees:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    const/4 v8, 0x1

    .line 347
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #jsonArr:Lorg/json/JSONArray;
    .end local v3           #photo:Ljava/lang/String;
    .end local v4           #photoUri:Landroid/net/Uri;
    .end local v5           #rotate:I
    .end local v6           #values:[F
    .end local v7           #zipPath:Ljava/lang/String;
    :goto_2
    return v8

    .line 344
    :catch_0
    move-exception v8

    .line 347
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private updateViews(Z)V
    .locals 8
    .parameter "keepValues"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 210
    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    invoke-virtual {v2}, Lcom/android/gallery/view/PhotoFrameView;->recyleAllBitmap()V

    .line 212
    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v2}, Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v2}, Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    .line 214
    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;->cancel(Z)Z

    .line 215
    iput-object v7, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    new-instance v3, Landroid/util/InputStreamLoader;

    iget-object v4, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mFrameEntryName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/util/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/gallery/util/ImageLoader;->getBitmap(Landroid/util/InputStreamLoader;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery/view/PhotoFrameView;->setFrameBitmap(Landroid/graphics/Bitmap;)V

    .line 219
    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    new-instance v3, Landroid/util/InputStreamLoader;

    iget-object v4, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mFilterEntryName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/util/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/gallery/util/ImageLoader;->getBitmap(Landroid/util/InputStreamLoader;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery/view/PhotoFrameView;->setFilterBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    new-instance v2, Landroid/util/InputStreamLoader;

    iget-object v3, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/util/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 224
    .local v1, streamLoader:Landroid/util/InputStreamLoader;
    :goto_0
    invoke-static {v1}, Lcom/android/gallery/util/ImageLoader;->getBitmapSize(Landroid/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 225
    .local v0, opt:Landroid/graphics/BitmapFactory$Options;
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v2, v3

    const/high16 v3, 0x10

    if-ge v2, v3, :cond_3

    .line 226
    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    invoke-static {v1}, Lcom/android/gallery/util/ImageLoader;->getBitmap(Landroid/util/InputStreamLoader;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery/view/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    if-eqz p1, :cond_2

    .line 228
    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    iget v3, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mInitRotateDegrees:I

    invoke-virtual {v2, v3, v6}, Lcom/android/gallery/view/PhotoFrameView;->setRotateDegrees(IZ)V

    .line 229
    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoFramePicker;->setMatrixValues()V

    .line 239
    :goto_1
    return-void

    .line 221
    .end local v0           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v1           #streamLoader:Landroid/util/InputStreamLoader;
    :cond_1
    new-instance v2, Landroid/util/InputStreamLoader;

    iget-object v3, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    invoke-direct {v2, p0, v3}, Landroid/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    move-object v1, v2

    goto :goto_0

    .line 231
    .restart local v0       #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #streamLoader:Landroid/util/InputStreamLoader;
    :cond_2
    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    invoke-virtual {v2, v6, v6}, Lcom/android/gallery/view/PhotoFrameView;->setRotateDegrees(IZ)V

    .line 232
    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    invoke-virtual {v2}, Lcom/android/gallery/view/PhotoFrameView;->resetMatrix()V

    goto :goto_1

    .line 235
    :cond_3
    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    invoke-virtual {v2, v7}, Lcom/android/gallery/view/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 236
    new-instance v2, Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-direct {v2, p0, p1}, Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;-><init>(Lcom/android/gallery/ui/PhotoFramePicker;Z)V

    iput-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;

    .line 237
    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method


# virtual methods
.method commit()V
    .locals 4

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v1}, Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v1}, Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    .line 206
    :goto_0
    return-void

    .line 200
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v0, data:Landroid/content/Intent;
    const-string v1, "callback_id"

    iget-wide v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallbackId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 202
    const-string v1, "config_as_json"

    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoFramePicker;->getConfigAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v1, "pick_result"

    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoFramePicker;->getPhotoFrameUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 204
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery/ui/PhotoFramePicker;->setResult(ILandroid/content/Intent;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoFramePicker;->finish()V

    goto :goto_0
.end method

.method protected getConfigAsString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x9

    .line 351
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 353
    .local v1, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "zip_file"

    iget-object v5, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    iget-object v4, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 355
    const-string v4, "image_uri"

    iget-object v5, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 359
    .local v2, jsonArr:Lorg/json/JSONArray;
    const/16 v4, 0x9

    new-array v3, v4, [F

    .line 360
    .local v3, values:[F
    iget-object v4, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    invoke-virtual {v4, v3}, Lcom/android/gallery/view/PhotoFrameView;->getMatrixValues([F)V

    .line 361
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 362
    aget v4, v3, v0

    float-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_1
    const-string v4, "matrix"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string v4, "rotate"

    iget-object v5, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    invoke-virtual {v5}, Lcom/android/gallery/view/PhotoFrameView;->getRotateDegrees()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 366
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 369
    .end local v0           #i:I
    .end local v2           #jsonArr:Lorg/json/JSONArray;
    .end local v3           #values:[F
    :goto_1
    return-object v4

    .line 367
    :catch_0
    move-exception v4

    .line 369
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getPhotoFrameUri()Landroid/net/Uri;
    .locals 10

    .prologue
    .line 376
    const/4 v3, 0x0

    .line 378
    .local v3, os:Ljava/io/OutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    invoke-virtual {v7}, Lcom/android/gallery/view/PhotoFrameView;->generatePhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 379
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 380
    const-string v7, "photo_frame"

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lcom/android/gallery/ui/PhotoFramePicker;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 381
    .local v1, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "photo_frame_result.tmp"

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 382
    .local v6, tmp:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v3           #os:Ljava/io/OutputStream;
    .local v4, os:Ljava/io/OutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 384
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 387
    const/16 v2, 0x1f9

    .line 388
    .local v2, extraPerms:I
    or-int/lit16 v5, v2, 0x1b0

    .line 389
    .local v5, perms:I
    or-int/lit8 v5, v5, 0x4

    .line 390
    or-int/lit8 v5, v5, 0x2

    .line 391
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v7, v5, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 393
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v7

    .line 397
    if-eqz v4, :cond_0

    .line 399
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v3, v4

    .line 404
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #dir:Ljava/io/File;
    .end local v2           #extraPerms:I
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v5           #perms:I
    .end local v6           #tmp:Ljava/io/File;
    .restart local v3       #os:Ljava/io/OutputStream;
    :goto_1
    return-object v7

    .line 397
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_1
    if-eqz v3, :cond_2

    .line 399
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 404
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_2
    :goto_2
    const/4 v7, 0x0

    goto :goto_1

    .line 395
    :catch_0
    move-exception v7

    .line 397
    :goto_3
    if-eqz v3, :cond_2

    .line 399
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 400
    :catch_1
    move-exception v7

    goto :goto_2

    .line 397
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_3

    .line 399
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 401
    :cond_3
    :goto_5
    throw v7

    .line 400
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v2       #extraPerms:I
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v5       #perms:I
    .restart local v6       #tmp:Ljava/io/File;
    :catch_2
    move-exception v8

    goto :goto_0

    .end local v1           #dir:Ljava/io/File;
    .end local v2           #extraPerms:I
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v5           #perms:I
    .end local v6           #tmp:Ljava/io/File;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catch_3
    move-exception v7

    goto :goto_2

    .end local v0           #bm:Landroid/graphics/Bitmap;
    :catch_4
    move-exception v8

    goto :goto_5

    .line 397
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v6       #tmp:Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_4

    .line 395
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catch_5
    move-exception v7

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 136
    packed-switch p1, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 153
    return-void

    .line 138
    :pswitch_0
    if-eqz p3, :cond_0

    .line 139
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery/ui/PhotoFramePicker;->updateViews(Z)V

    goto :goto_0

    .line 144
    :pswitch_1
    if-eqz p3, :cond_0

    .line 145
    const-string v0, "com.miui.android.resourcebrowser.PICKED_RESOURCE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    .line 146
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery/ui/PhotoFramePicker;->updateViews(Z)V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v2, 0x7f030013

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/PhotoFramePicker;->setContentView(I)V

    .line 83
    if-nez p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoFramePicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 86
    :cond_0
    if-eqz p1, :cond_3

    .line 87
    const-string v2, "callback_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallbackId:J

    .line 88
    const-string v2, "config_as_json"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, config:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/gallery/ui/PhotoFramePicker;->parse(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    :cond_1
    const-string v2, "zip_file"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    .line 92
    :cond_2
    const-string v2, "image_entry"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    .line 93
    const-string v2, "frame_entry"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mFrameEntryName:Ljava/lang/String;

    .line 94
    const-string v2, "filter_entry"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mFilterEntryName:Ljava/lang/String;

    .line 95
    const-string v2, "caller_type_parameter"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallerTypeParameter:Ljava/lang/String;

    .line 96
    const-string v2, "caller_filter"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mFilterCode:I

    .line 98
    const-string v2, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallerCode:Ljava/lang/String;

    .line 99
    const-string v2, "com.miui.android.resourcebrowser.DOWNLOAD_FOLDER"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallerDownloadDir:Ljava/lang/String;

    .line 100
    const-string v2, "com.miui.android.resourcebrowser.RESOURCE_SET_PACKAGE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallerPackageName:Ljava/lang/String;

    .line 101
    const-string v2, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallerSourceFolders:[Ljava/lang/String;

    .line 102
    const-string v2, "com.miui.android.resourcebrowser.CURRENT_USING_PATH"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCurrentUseZipPath:Ljava/lang/String;

    .line 105
    .end local v0           #config:Ljava/lang/String;
    :cond_3
    const v2, 0x7f0c004f

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery/view/PhotoFrameView;

    iput-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    .line 107
    new-instance v1, Lcom/android/gallery/ui/PhotoFramePicker$OnButtonClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery/ui/PhotoFramePicker$OnButtonClickListener;-><init>(Lcom/android/gallery/ui/PhotoFramePicker;Lcom/android/gallery/ui/PhotoFramePicker$1;)V

    .line 108
    .local v1, listener:Lcom/android/gallery/ui/PhotoFramePicker$OnButtonClickListener;
    const v2, 0x7f0c0050

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v2, 0x7f0c0051

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v2, 0x7f0c0052

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v2, 0x7f0c004e

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/gallery/ui/PhotoFramePicker;->updateViews(Z)V

    .line 114
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    invoke-virtual {v0}, Lcom/android/gallery/view/PhotoFrameView;->recyleAllBitmap()V

    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 159
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    const-string v0, "callback_id"

    iget-wide v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallbackId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 120
    const-string v0, "config_as_json"

    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoFramePicker;->getConfigAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "image_entry"

    iget-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "frame_entry"

    iget-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mFrameEntryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "filter_entry"

    iget-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mFilterEntryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "caller_type_parameter"

    iget-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallerTypeParameter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "caller_filter"

    iget v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mFilterCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string v0, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    iget-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallerCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "com.miui.android.resourcebrowser.DOWNLOAD_FOLDER"

    iget-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallerDownloadDir:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "com.miui.android.resourcebrowser.RESOURCE_SET_PACKAGE"

    iget-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    iget-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallerSourceFolders:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    const-string v0, "com.miui.android.resourcebrowser.CURRENT_USING_PATH"

    iget-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCurrentUseZipPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method selectFrame()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "android"

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    const-string v1, "android"

    const-class v1, Lcom/miui/android/resourcebrowser/ResourceTabActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "android.intent.action.PICK_RESOURCE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v1, "callback_id"

    iget-wide v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallbackId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 176
    const-string v1, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_PACKAGE"

    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_TYPE_PARAMETER"

    const-string v2, "%s&filter=%d"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallerTypeParameter:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mFilterCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_NAME"

    const v2, 0x7f090098

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/PhotoFramePicker;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallerCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "com.miui.android.resourcebrowser.DISPLAY_TYPE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    const-string v1, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallerSourceFolders:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "com.miui.android.resourcebrowser.DOWNLOAD_FOLDER"

    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCallerDownloadDir:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "com.miui.android.resourcebrowser.CACHE_LIST_FOLDER"

    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoFramePicker;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "com.miui.android.resourcebrowser.CURRENT_USING_PATH"

    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mCurrentUseZipPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_PACKAGE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_CLASS"

    const-class v2, Lcom/miui/android/resourcebrowser/ResourceFilterListActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_PACKAGE"

    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoFramePicker;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v1, "type"

    iget v2, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mFilterCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0, v7}, Lcom/android/gallery/ui/PhotoFramePicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 192
    return-void
.end method

.method selectPhoto()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery/ui/PhotoFramePicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 168
    return-void
.end method

.method setMatrixValues()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mInitMatrixValues:[F

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    iget-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker;->mInitMatrixValues:[F

    invoke-virtual {v0, v1}, Lcom/android/gallery/view/PhotoFrameView;->setMatrixValues([F)V

    goto :goto_0
.end method
