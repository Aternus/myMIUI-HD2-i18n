.class Lcom/android/gallery/ui/CropImage$3$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/CropImage$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery/ui/CropImage$3;

.field final synthetic val$b:Landroid/graphics/Bitmap;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/CropImage$3;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/gallery/ui/CropImage$3$1;->this$1:Lcom/android/gallery/ui/CropImage$3;

    iput-object p2, p0, Lcom/android/gallery/ui/CropImage$3$1;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/gallery/ui/CropImage$3$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 223
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage$3$1;->val$b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/gallery/ui/CropImage$3$1;->this$1:Lcom/android/gallery/ui/CropImage$3;

    iget-object v1, v1, Lcom/android/gallery/ui/CropImage$3;->this$0:Lcom/android/gallery/ui/CropImage;

    #getter for: Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/gallery/ui/CropImage;->access$100(Lcom/android/gallery/ui/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery/ui/CropImage$3$1;->val$b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage$3$1;->this$1:Lcom/android/gallery/ui/CropImage$3;

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage$3;->this$0:Lcom/android/gallery/ui/CropImage;

    #getter for: Lcom/android/gallery/ui/CropImage;->mImageView:Lcom/android/gallery/view/CropImageView;
    invoke-static {v0}, Lcom/android/gallery/ui/CropImage;->access$200(Lcom/android/gallery/ui/CropImage;)Lcom/android/gallery/view/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery/ui/CropImage$3$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery/view/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 225
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage$3$1;->this$1:Lcom/android/gallery/ui/CropImage$3;

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage$3;->this$0:Lcom/android/gallery/ui/CropImage;

    #getter for: Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/gallery/ui/CropImage;->access$100(Lcom/android/gallery/ui/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage$3$1;->this$1:Lcom/android/gallery/ui/CropImage$3;

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage$3;->this$0:Lcom/android/gallery/ui/CropImage;

    iget-object v1, p0, Lcom/android/gallery/ui/CropImage$3$1;->val$b:Landroid/graphics/Bitmap;

    #setter for: Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/gallery/ui/CropImage;->access$102(Lcom/android/gallery/ui/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage$3$1;->this$1:Lcom/android/gallery/ui/CropImage$3;

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage$3;->this$0:Lcom/android/gallery/ui/CropImage;

    #getter for: Lcom/android/gallery/ui/CropImage;->mImageView:Lcom/android/gallery/view/CropImageView;
    invoke-static {v0}, Lcom/android/gallery/ui/CropImage;->access$200(Lcom/android/gallery/ui/CropImage;)Lcom/android/gallery/view/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery/view/CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/android/gallery/util/Utils;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage$3$1;->this$1:Lcom/android/gallery/ui/CropImage$3;

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage$3;->this$0:Lcom/android/gallery/ui/CropImage;

    #getter for: Lcom/android/gallery/ui/CropImage;->mImageView:Lcom/android/gallery/view/CropImageView;
    invoke-static {v0}, Lcom/android/gallery/ui/CropImage;->access$200(Lcom/android/gallery/ui/CropImage;)Lcom/android/gallery/view/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery/view/CropImageView;->center(ZZ)V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage$3$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 232
    return-void
.end method
