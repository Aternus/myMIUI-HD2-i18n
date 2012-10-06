.class Lcom/android/gallery/ui/CropImage$8$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/CropImage$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery/ui/CropImage$8;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/CropImage$8;)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/gallery/ui/CropImage$8$1;->this$1:Lcom/android/gallery/ui/CropImage$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 632
    iget-object v2, p0, Lcom/android/gallery/ui/CropImage$8$1;->this$1:Lcom/android/gallery/ui/CropImage$8;

    iget-object v2, v2, Lcom/android/gallery/ui/CropImage$8;->this$0:Lcom/android/gallery/ui/CropImage;

    iget-object v3, p0, Lcom/android/gallery/ui/CropImage$8$1;->this$1:Lcom/android/gallery/ui/CropImage$8;

    iget v3, v3, Lcom/android/gallery/ui/CropImage$8;->mNumFaces:I

    if-le v3, v4, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/android/gallery/ui/CropImage;->mWaitingToPick:Z

    .line 633
    iget-object v2, p0, Lcom/android/gallery/ui/CropImage$8$1;->this$1:Lcom/android/gallery/ui/CropImage$8;

    iget v2, v2, Lcom/android/gallery/ui/CropImage$8;->mNumFaces:I

    if-lez v2, :cond_1

    .line 634
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/gallery/ui/CropImage$8$1;->this$1:Lcom/android/gallery/ui/CropImage$8;

    iget v2, v2, Lcom/android/gallery/ui/CropImage$8;->mNumFaces:I

    if-ge v0, v2, :cond_2

    .line 635
    iget-object v2, p0, Lcom/android/gallery/ui/CropImage$8$1;->this$1:Lcom/android/gallery/ui/CropImage$8;

    iget-object v3, p0, Lcom/android/gallery/ui/CropImage$8$1;->this$1:Lcom/android/gallery/ui/CropImage$8;

    iget-object v3, v3, Lcom/android/gallery/ui/CropImage$8;->mFaces:[Landroid/media/FaceDetector$Face;

    aget-object v3, v3, v0

    #calls: Lcom/android/gallery/ui/CropImage$8;->handleFace(Landroid/media/FaceDetector$Face;)V
    invoke-static {v2, v3}, Lcom/android/gallery/ui/CropImage$8;->access$1200(Lcom/android/gallery/ui/CropImage$8;Landroid/media/FaceDetector$Face;)V

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_0
    move v3, v5

    .line 632
    goto :goto_0

    .line 638
    :cond_1
    iget-object v2, p0, Lcom/android/gallery/ui/CropImage$8$1;->this$1:Lcom/android/gallery/ui/CropImage$8;

    #calls: Lcom/android/gallery/ui/CropImage$8;->makeDefault()V
    invoke-static {v2}, Lcom/android/gallery/ui/CropImage$8;->access$1300(Lcom/android/gallery/ui/CropImage$8;)V

    .line 640
    :cond_2
    iget-object v2, p0, Lcom/android/gallery/ui/CropImage$8$1;->this$1:Lcom/android/gallery/ui/CropImage$8;

    iget-object v2, v2, Lcom/android/gallery/ui/CropImage$8;->this$0:Lcom/android/gallery/ui/CropImage;

    #getter for: Lcom/android/gallery/ui/CropImage;->mImageView:Lcom/android/gallery/view/CropImageView;
    invoke-static {v2}, Lcom/android/gallery/ui/CropImage;->access$200(Lcom/android/gallery/ui/CropImage;)Lcom/android/gallery/view/CropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery/view/CropImageView;->invalidate()V

    .line 641
    iget-object v2, p0, Lcom/android/gallery/ui/CropImage$8$1;->this$1:Lcom/android/gallery/ui/CropImage$8;

    iget-object v2, v2, Lcom/android/gallery/ui/CropImage$8;->this$0:Lcom/android/gallery/ui/CropImage;

    #getter for: Lcom/android/gallery/ui/CropImage;->mImageView:Lcom/android/gallery/view/CropImageView;
    invoke-static {v2}, Lcom/android/gallery/ui/CropImage;->access$200(Lcom/android/gallery/ui/CropImage;)Lcom/android/gallery/view/CropImageView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 642
    iget-object v2, p0, Lcom/android/gallery/ui/CropImage$8$1;->this$1:Lcom/android/gallery/ui/CropImage$8;

    iget-object v3, v2, Lcom/android/gallery/ui/CropImage$8;->this$0:Lcom/android/gallery/ui/CropImage;

    iget-object v2, p0, Lcom/android/gallery/ui/CropImage$8$1;->this$1:Lcom/android/gallery/ui/CropImage$8;

    iget-object v2, v2, Lcom/android/gallery/ui/CropImage$8;->this$0:Lcom/android/gallery/ui/CropImage;

    #getter for: Lcom/android/gallery/ui/CropImage;->mImageView:Lcom/android/gallery/view/CropImageView;
    invoke-static {v2}, Lcom/android/gallery/ui/CropImage;->access$200(Lcom/android/gallery/ui/CropImage;)Lcom/android/gallery/view/CropImageView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery/view/HighlightView;

    iput-object v2, v3, Lcom/android/gallery/ui/CropImage;->mCrop:Lcom/android/gallery/view/HighlightView;

    .line 643
    iget-object v2, p0, Lcom/android/gallery/ui/CropImage$8$1;->this$1:Lcom/android/gallery/ui/CropImage$8;

    iget-object v2, v2, Lcom/android/gallery/ui/CropImage$8;->this$0:Lcom/android/gallery/ui/CropImage;

    iget-object v2, v2, Lcom/android/gallery/ui/CropImage;->mCrop:Lcom/android/gallery/view/HighlightView;

    invoke-virtual {v2, v4}, Lcom/android/gallery/view/HighlightView;->setFocus(Z)V

    .line 646
    :cond_3
    iget-object v2, p0, Lcom/android/gallery/ui/CropImage$8$1;->this$1:Lcom/android/gallery/ui/CropImage$8;

    iget v2, v2, Lcom/android/gallery/ui/CropImage$8;->mNumFaces:I

    if-le v2, v4, :cond_4

    .line 649
    iget-object v2, p0, Lcom/android/gallery/ui/CropImage$8$1;->this$1:Lcom/android/gallery/ui/CropImage$8;

    iget-object v2, v2, Lcom/android/gallery/ui/CropImage$8;->this$0:Lcom/android/gallery/ui/CropImage;

    const v3, 0x7f09006a

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 650
    .local v1, t:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 652
    .end local v1           #t:Landroid/widget/Toast;
    :cond_4
    return-void
.end method
