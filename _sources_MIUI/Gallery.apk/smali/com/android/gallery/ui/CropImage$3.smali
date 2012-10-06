.class Lcom/android/gallery/ui/CropImage$3;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/CropImage;->startFaceDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/gallery/ui/CropImage$3;->this$0:Lcom/android/gallery/ui/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 219
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 220
    .local v2, latch:Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/android/gallery/ui/CropImage$3;->this$0:Lcom/android/gallery/ui/CropImage;

    #getter for: Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/gallery/ui/CropImage;->access$100(Lcom/android/gallery/ui/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/gallery/ui/CropImage$3;->this$0:Lcom/android/gallery/ui/CropImage;

    #getter for: Lcom/android/gallery/ui/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/gallery/ui/CropImage;->access$300(Lcom/android/gallery/ui/CropImage;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/gallery/ui/CropImage$3$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/gallery/ui/CropImage$3$1;-><init>(Lcom/android/gallery/ui/CropImage$3;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    iget-object v3, p0, Lcom/android/gallery/ui/CropImage$3;->this$0:Lcom/android/gallery/ui/CropImage;

    iget-object v3, v3, Lcom/android/gallery/ui/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 241
    return-void

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, e:Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
