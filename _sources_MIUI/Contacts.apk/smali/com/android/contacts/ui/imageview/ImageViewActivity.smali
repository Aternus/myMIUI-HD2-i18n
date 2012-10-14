.class public Lcom/android/contacts/ui/imageview/ImageViewActivity;
.super Landroid/app/Activity;
.source "ImageViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;,
        Lcom/android/contacts/ui/imageview/ImageViewActivity$FullImageAdapter;
    }
.end annotation


# static fields
.field private static final INCOMING_CALL_PHOTO_DIR:Ljava/io/File;

.field private static mScreenHeight:I

.field private static mScreenWidth:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFilePath:Ljava/lang/String;

.field private mFullImageGallery:Lcom/android/contacts/ui/imageview/ImageNavigatorView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/MIUI/call_incoming_photo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->INCOMING_CALL_PHOTO_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->orientation:I

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ui/imageview/ImageViewActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/ui/imageview/ImageViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->savePhoto()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 153
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mFilePath:Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mFilePath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/contacts/ui/imageview/ImageLoader;->getBitmapFromFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 156
    iget-object v1, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 158
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 156
    goto :goto_0

    :cond_1
    move v1, v3

    .line 158
    goto :goto_0
.end method

.method private savePhoto()Ljava/lang/String;
    .locals 9

    .prologue
    const-string v8, "MIUI"

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, bmp:Landroid/graphics/Bitmap;
    sget v5, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mScreenWidth:I

    sget v6, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mScreenHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    iget-object v5, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mFullImageGallery:Lcom/android/contacts/ui/imageview/ImageNavigatorView;

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->draw(Landroid/graphics/Canvas;)V

    .line 112
    sget-object v5, Lcom/android/contacts/ui/imageview/ImageViewActivity;->INCOMING_CALL_PHOTO_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 113
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/contacts/ui/imageview/ImageViewActivity;->INCOMING_CALL_PHOTO_DIR:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v4, mIncomeCallPhotoFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    const/4 v2, 0x0

    .line 122
    .local v2, fOut:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .local v3, fOut:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 127
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {v0, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 129
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 135
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 140
    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 117
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 118
    .local v1, e:Ljava/io/IOException;
    const-string v5, "MIUI"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 124
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v5, "MIUI"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 131
    .local v1, e:Ljava/io/IOException;
    const-string v5, "MIUI"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 136
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 137
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "MIUI"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setupFullImageGallery()V
    .locals 2

    .prologue
    .line 144
    const v0, 0x7f0700f5

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mFullImageGallery:Lcom/android/contacts/ui/imageview/ImageNavigatorView;

    .line 145
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mFullImageGallery:Lcom/android/contacts/ui/imageview/ImageNavigatorView;

    new-instance v1, Lcom/android/contacts/ui/imageview/ImageViewActivity$FullImageAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/contacts/ui/imageview/ImageViewActivity$FullImageAdapter;-><init>(Lcom/android/contacts/ui/imageview/ImageViewActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 146
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mFullImageGallery:Lcom/android/contacts/ui/imageview/ImageNavigatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->setSelection(I)V

    .line 148
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mFullImageGallery:Lcom/android/contacts/ui/imageview/ImageNavigatorView;

    invoke-virtual {v0, p0}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->setHostActivity(Lcom/android/contacts/ui/imageview/ImageViewActivity;)V

    .line 149
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 79
    :sswitch_0
    new-instance v0, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;

    invoke-direct {v0, p0, p0}, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;-><init>(Lcom/android/contacts/ui/imageview/ImageViewActivity;Lcom/android/contacts/ui/imageview/ImageViewActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 82
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->finish()V

    goto :goto_0

    .line 86
    :sswitch_2
    iget v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->orientation:I

    const/16 v1, -0x168

    if-le v0, v1, :cond_0

    .line 87
    iget v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->orientation:I

    const/16 v1, 0x5a

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->orientation:I

    .line 91
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mFullImageGallery:Lcom/android/contacts/ui/imageview/ImageNavigatorView;

    iget v1, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->refreshOrientation(I)V

    goto :goto_0

    .line 89
    :cond_0
    iput v2, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->orientation:I

    goto :goto_1

    .line 94
    :sswitch_3
    iget v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->orientation:I

    const/16 v1, 0x168

    if-ge v0, v1, :cond_1

    .line 95
    iget v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->orientation:I

    add-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->orientation:I

    .line 99
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mFullImageGallery:Lcom/android/contacts/ui/imageview/ImageNavigatorView;

    iget v1, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->refreshOrientation(I)V

    goto :goto_0

    .line 97
    :cond_1
    iput v2, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->orientation:I

    goto :goto_2

    .line 77
    :sswitch_data_0
    .sparse-switch
        0x7f07004e -> :sswitch_1
        0x7f0700f6 -> :sswitch_2
        0x7f0700f7 -> :sswitch_3
        0x7f0700f8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->requestWindowFeature(I)Z

    .line 54
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->setContentView(I)V

    .line 56
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mWindowManager:Landroid/view/WindowManager;

    .line 57
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mScreenWidth:I

    .line 58
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mScreenHeight:I

    .line 60
    invoke-direct {p0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->init()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->finish()V

    .line 72
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->setupFullImageGallery()V

    .line 66
    const v0, 0x7f0700f8

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f0700f6

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f0700f7

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mFullImageGallery:Lcom/android/contacts/ui/imageview/ImageNavigatorView;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mFullImageGallery:Lcom/android/contacts/ui/imageview/ImageNavigatorView;

    invoke-virtual {v0}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->recycle()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 216
    return-void
.end method
