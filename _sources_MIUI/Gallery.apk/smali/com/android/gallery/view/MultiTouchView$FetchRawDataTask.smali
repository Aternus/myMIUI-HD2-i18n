.class public Lcom/android/gallery/view/MultiTouchView$FetchRawDataTask;
.super Landroid/os/AsyncTask;
.source "MultiTouchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/view/MultiTouchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FetchRawDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private mMeta:Lcom/android/gallery/data/BaseMeta;

.field final synthetic this$0:Lcom/android/gallery/view/MultiTouchView;


# direct methods
.method protected constructor <init>(Lcom/android/gallery/view/MultiTouchView;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/gallery/view/MultiTouchView$FetchRawDataTask;->this$0:Lcom/android/gallery/view/MultiTouchView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "params"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/gallery/view/MultiTouchView$FetchRawDataTask;->mMeta:Lcom/android/gallery/data/BaseMeta;

    invoke-virtual {v0}, Lcom/android/gallery/data/BaseMeta;->getRawImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 335
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery/view/MultiTouchView$FetchRawDataTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 352
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 353
    if-eqz p1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/gallery/view/MultiTouchView$FetchRawDataTask;->this$0:Lcom/android/gallery/view/MultiTouchView;

    iget-object v1, p0, Lcom/android/gallery/view/MultiTouchView$FetchRawDataTask;->mMeta:Lcom/android/gallery/data/BaseMeta;

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery/view/MultiTouchView;->onThumbnailReady(Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;)V

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/gallery/view/MultiTouchView$FetchRawDataTask;->this$0:Lcom/android/gallery/view/MultiTouchView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/gallery/view/MultiTouchView;->mRawDataRequested:Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 335
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery/view/MultiTouchView$FetchRawDataTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 340
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 341
    iget-object v0, p0, Lcom/android/gallery/view/MultiTouchView$FetchRawDataTask;->this$0:Lcom/android/gallery/view/MultiTouchView;

    iget-object v0, v0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iput-object v0, p0, Lcom/android/gallery/view/MultiTouchView$FetchRawDataTask;->mMeta:Lcom/android/gallery/data/BaseMeta;

    .line 342
    iget-object v0, p0, Lcom/android/gallery/view/MultiTouchView$FetchRawDataTask;->this$0:Lcom/android/gallery/view/MultiTouchView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/gallery/view/MultiTouchView;->mRawDataRequested:Z

    .line 343
    return-void
.end method
