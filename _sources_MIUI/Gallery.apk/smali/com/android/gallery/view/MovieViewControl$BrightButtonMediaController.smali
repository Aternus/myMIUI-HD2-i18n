.class Lcom/android/gallery/view/MovieViewControl$BrightButtonMediaController;
.super Landroid/widget/MediaController;
.source "MovieViewControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/view/MovieViewControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrightButtonMediaController"
.end annotation


# instance fields
.field final mControlRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/gallery/view/MovieViewControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery/view/MovieViewControl;Landroid/content/Context;)V
    .locals 1
    .parameter "control"
    .parameter "context"

    .prologue
    .line 257
    invoke-direct {p0, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 258
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/gallery/view/MovieViewControl$BrightButtonMediaController;->mControlRef:Ljava/lang/ref/WeakReference;

    .line 259
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 273
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    .line 274
    iget-object v1, p0, Lcom/android/gallery/view/MovieViewControl$BrightButtonMediaController;->mControlRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery/view/MovieViewControl;

    .line 275
    .local v0, control:Lcom/android/gallery/view/MovieViewControl;
    if-eqz v0, :cond_0

    .line 276
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery/view/MovieViewControl;->onVisibleChanged(Z)V

    .line 278
    :cond_0
    return-void
.end method

.method public show(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/widget/MediaController;->show(I)V

    .line 265
    iget-object v1, p0, Lcom/android/gallery/view/MovieViewControl$BrightButtonMediaController;->mControlRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery/view/MovieViewControl;

    .line 266
    .local v0, control:Lcom/android/gallery/view/MovieViewControl;
    if-eqz v0, :cond_0

    .line 267
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery/view/MovieViewControl;->onVisibleChanged(Z)V

    .line 269
    :cond_0
    return-void
.end method
