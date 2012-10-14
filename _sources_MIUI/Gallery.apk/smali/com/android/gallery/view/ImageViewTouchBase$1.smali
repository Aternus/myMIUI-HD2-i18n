.class Lcom/android/gallery/view/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/view/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/android/gallery/view/RotateBitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/view/ImageViewTouchBase;

.field final synthetic val$bitmap:Lcom/android/gallery/view/RotateBitmap;

.field final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/android/gallery/view/ImageViewTouchBase;Lcom/android/gallery/view/RotateBitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/gallery/view/ImageViewTouchBase$1;->this$0:Lcom/android/gallery/view/ImageViewTouchBase;

    iput-object p2, p0, Lcom/android/gallery/view/ImageViewTouchBase$1;->val$bitmap:Lcom/android/gallery/view/RotateBitmap;

    iput-boolean p3, p0, Lcom/android/gallery/view/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase$1;->this$0:Lcom/android/gallery/view/ImageViewTouchBase;

    iget-object v1, p0, Lcom/android/gallery/view/ImageViewTouchBase$1;->val$bitmap:Lcom/android/gallery/view/RotateBitmap;

    iget-boolean v2, p0, Lcom/android/gallery/view/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery/view/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/android/gallery/view/RotateBitmap;Z)V

    .line 132
    return-void
.end method
