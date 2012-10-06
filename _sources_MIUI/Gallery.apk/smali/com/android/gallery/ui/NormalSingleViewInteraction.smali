.class public Lcom/android/gallery/ui/NormalSingleViewInteraction;
.super Lcom/android/gallery/ui/ISingleViewInteraction;
.source "NormalSingleViewInteraction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/ui/NormalSingleViewInteraction$SingleImageAdapter;
    }
.end annotation


# instance fields
.field private mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

.field private mInitUri:Landroid/net/Uri;

.field private mMeta:Lcom/android/gallery/data/UriMeta;

.field mOrientation:I

.field private mSavedPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery/ui/SingleViewActivity;Landroid/net/Uri;)V
    .locals 3
    .parameter "hostActivity"
    .parameter "initUri"

    .prologue
    const/16 v2, 0x8

    .line 43
    invoke-direct {p0}, Lcom/android/gallery/ui/ISingleViewInteraction;-><init>()V

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mOrientation:I

    .line 44
    iput-object p1, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    .line 45
    new-instance v0, Lcom/android/gallery/data/UriMeta;

    invoke-direct {v0, p1, p2}, Lcom/android/gallery/data/UriMeta;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mMeta:Lcom/android/gallery/data/UriMeta;

    .line 46
    iput-object p2, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mInitUri:Landroid/net/Uri;

    .line 47
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    const v1, 0x7f0c0061

    invoke-virtual {v0, v1}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery/ui/NormalSingleViewInteraction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/gallery/ui/NormalSingleViewInteraction;->savePic()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery/ui/NormalSingleViewInteraction;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mSavedPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery/ui/NormalSingleViewInteraction;)Lcom/android/gallery/ui/SingleViewActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery/ui/NormalSingleViewInteraction;)Lcom/android/gallery/data/UriMeta;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mMeta:Lcom/android/gallery/data/UriMeta;

    return-object v0
.end method

.method private getTempFile()Ljava/io/File;
    .locals 6

    .prologue
    .line 63
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/gallery/util/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-virtual {v3}, Lcom/android/gallery/ui/SingleViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090071

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 69
    :cond_0
    const-string v1, ".jpg"

    .line 70
    .local v1, suffix:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mMeta:Lcom/android/gallery/data/UriMeta;

    iget-boolean v3, v3, Lcom/android/gallery/data/BaseMeta;->mIsGif:Z

    if-eqz v3, :cond_1

    .line 72
    const-string v1, ".gif"

    .line 76
    :cond_1
    :try_start_0
    const-string v3, "gallery"

    invoke-static {v3, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, tempFile:Ljava/io/File;
    move-object v3, v2

    .line 81
    .end local v2           #tempFile:Ljava/io/File;
    :goto_0
    return-object v3

    .line 78
    :catch_0
    move-exception v3

    .line 81
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private savePic()V
    .locals 8

    .prologue
    .line 85
    iget-object v5, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mSavedPath:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 86
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mSavedPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mSavedPath:Ljava/lang/String;

    .line 90
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery/ui/NormalSingleViewInteraction;->getTempFile()Ljava/io/File;

    move-result-object v4

    .line 91
    .local v4, tempFile:Ljava/io/File;
    if-eqz v4, :cond_0

    .line 93
    new-instance v3, Landroid/util/InputStreamLoader;

    iget-object v5, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    iget-object v6, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mInitUri:Landroid/net/Uri;

    invoke-direct {v3, v5, v6}, Landroid/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 95
    .local v3, streamLoader:Landroid/util/InputStreamLoader;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 96
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v3}, Landroid/util/InputStreamLoader;->get()Ljava/io/InputStream;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-direct {v1, v5, v6, v7}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 97
    .local v1, inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 98
    .local v2, out:Ljava/io/BufferedOutputStream;
    invoke-virtual {v1, v2}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 99
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 101
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mSavedPath:Ljava/lang/String;

    .line 102
    iget-object v5, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    iget-object v6, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mSavedPath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/gallery/data/MediaStoreHelper;->notifyFileSystemChanged(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v2           #out:Ljava/io/BufferedOutputStream;
    :goto_1
    invoke-virtual {v3}, Landroid/util/InputStreamLoader;->close()V

    goto :goto_0

    .line 103
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 104
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getCurrentItemUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mInitUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasValidMedia()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mMeta:Lcom/android/gallery/data/UriMeta;

    iget-object v0, v0, Lcom/android/gallery/data/UriMeta;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleView()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-virtual {v0}, Lcom/android/gallery/ui/SingleViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public onCrop()V
    .locals 4

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/gallery/ui/NormalSingleViewInteraction;->getTempFile()Ljava/io/File;

    move-result-object v0

    .line 207
    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    const-string v1, "Open temporary file error"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 223
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mInitUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 215
    const-string v2, "noFaceDetection"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    const-string v2, "outputFormat"

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v2, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 220
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    const-class v2, Lcom/android/gallery/ui/CropImage;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 222
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery/ui/SingleViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0c007e

    if-ne v0, v2, :cond_1

    .line 114
    invoke-static {v6}, Lcom/android/gallery/util/StorageUtils;->hasStorage(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    const v1, 0x7f090047

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v6

    .line 158
    :goto_0
    return v0

    .line 123
    :cond_0
    new-instance v4, Lcom/android/gallery/ui/NormalSingleViewInteraction$1;

    invoke-direct {v4, p0}, Lcom/android/gallery/ui/NormalSingleViewInteraction$1;-><init>(Lcom/android/gallery/ui/NormalSingleViewInteraction;)V

    .line 129
    .local v4, save:Ljava/lang/Runnable;
    new-instance v5, Lcom/android/gallery/ui/NormalSingleViewInteraction$2;

    invoke-direct {v5, p0}, Lcom/android/gallery/ui/NormalSingleViewInteraction$2;-><init>(Lcom/android/gallery/ui/NormalSingleViewInteraction;)V

    .line 149
    .local v5, showResult:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    const v2, 0x7f090061

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/gallery/app/AppHelper;->startProgressDialogTask(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    move v0, v6

    .line 156
    goto :goto_0

    .end local v4           #save:Ljava/lang/Runnable;
    .end local v5           #showResult:Ljava/lang/Runnable;
    :cond_1
    move v0, v1

    .line 158
    goto :goto_0
.end method

.method public onRotate(I)V
    .locals 1
    .parameter "deltaDegree"

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/gallery/ui/NormalSingleViewInteraction;->hasValidMedia()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iget v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mOrientation:I

    add-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mOrientation:I

    .line 230
    iget-object v0, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/Gallery;)V
    .locals 2
    .parameter "gallery"

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/android/gallery/ui/ISingleViewInteraction;->setAdapter(Landroid/widget/Gallery;)V

    .line 164
    new-instance v0, Lcom/android/gallery/ui/NormalSingleViewInteraction$SingleImageAdapter;

    iget-object v1, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-direct {v0, p0, v1}, Lcom/android/gallery/ui/NormalSingleViewInteraction$SingleImageAdapter;-><init>(Lcom/android/gallery/ui/NormalSingleViewInteraction;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 165
    return-void
.end method
