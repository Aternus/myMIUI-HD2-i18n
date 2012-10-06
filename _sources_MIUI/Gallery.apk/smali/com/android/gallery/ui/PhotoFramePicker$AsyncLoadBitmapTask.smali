.class Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;
.super Landroid/os/AsyncTask;
.source "PhotoFramePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/ui/PhotoFramePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncLoadBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mKeepValues:Z

.field private final mPickerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/gallery/ui/PhotoFramePicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery/ui/PhotoFramePicker;Z)V
    .locals 1
    .parameter "picker"
    .parameter "keepValues"

    .prologue
    .line 277
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 278
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;->mPickerRef:Ljava/lang/ref/WeakReference;

    .line 279
    iput-boolean p2, p0, Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;->mKeepValues:Z

    .line 280
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "params"

    .prologue
    .line 284
    iget-object v2, p0, Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;->mPickerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery/ui/PhotoFramePicker;

    .line 285
    .local v0, picker:Lcom/android/gallery/ui/PhotoFramePicker;
    if-eqz v0, :cond_1

    .line 286
    iget-object v2, v0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/InputStreamLoader;

    iget-object v3, v0, Lcom/android/gallery/ui/PhotoFramePicker;->mZipFilePath:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/util/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 289
    .local v1, streamLoader:Landroid/util/InputStreamLoader;
    :goto_0
    invoke-static {v1}, Lcom/android/gallery/util/ImageLoader;->getBitmap(Landroid/util/InputStreamLoader;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 291
    .end local v1           #streamLoader:Landroid/util/InputStreamLoader;
    :goto_1
    return-object v2

    .line 286
    :cond_0
    new-instance v2, Landroid/util/InputStreamLoader;

    iget-object v3, v0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    invoke-direct {v2, v0, v3}, Landroid/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    move-object v1, v2

    goto :goto_0

    .line 291
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 296
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;->mPickerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery/ui/PhotoFramePicker;

    .line 299
    .local v0, picker:Lcom/android/gallery/ui/PhotoFramePicker;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery/ui/PhotoFramePicker;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    if-nez p1, :cond_0

    .line 301
    const v1, 0x7f09009a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 303
    :cond_0
    iget-object v1, v0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    invoke-virtual {v1, p1}, Lcom/android/gallery/view/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 304
    iget-boolean v1, p0, Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;->mKeepValues:Z

    if-eqz v1, :cond_3

    .line 305
    iget-object v1, v0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    iget v2, v0, Lcom/android/gallery/ui/PhotoFramePicker;->mInitRotateDegrees:I

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery/view/PhotoFrameView;->setRotateDegrees(IZ)V

    .line 306
    invoke-virtual {v0}, Lcom/android/gallery/ui/PhotoFramePicker;->setMatrixValues()V

    .line 313
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/gallery/ui/PhotoFramePicker;->mCurrentLoadTask:Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;

    .line 315
    .end local v0           #picker:Lcom/android/gallery/ui/PhotoFramePicker;
    :cond_2
    return-void

    .line 308
    .restart local v0       #picker:Lcom/android/gallery/ui/PhotoFramePicker;
    :cond_3
    iget-object v1, v0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    invoke-virtual {v1, v3, v3}, Lcom/android/gallery/view/PhotoFrameView;->setRotateDegrees(IZ)V

    .line 309
    iget-object v1, v0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    invoke-virtual {v1}, Lcom/android/gallery/view/PhotoFrameView;->resetMatrix()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 273
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery/ui/PhotoFramePicker$AsyncLoadBitmapTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
