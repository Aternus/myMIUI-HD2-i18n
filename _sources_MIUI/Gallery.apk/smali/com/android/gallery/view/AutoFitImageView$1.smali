.class Lcom/android/gallery/view/AutoFitImageView$1;
.super Ljava/lang/Object;
.source "AutoFitImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/view/AutoFitImageView;->onThumbnailReady(Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/view/AutoFitImageView;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$meta:Lcom/android/gallery/data/BaseMeta;


# direct methods
.method constructor <init>(Lcom/android/gallery/view/AutoFitImageView;Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/gallery/view/AutoFitImageView$1;->this$0:Lcom/android/gallery/view/AutoFitImageView;

    iput-object p2, p0, Lcom/android/gallery/view/AutoFitImageView$1;->val$meta:Lcom/android/gallery/data/BaseMeta;

    iput-object p3, p0, Lcom/android/gallery/view/AutoFitImageView$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/gallery/view/AutoFitImageView$1;->this$0:Lcom/android/gallery/view/AutoFitImageView;

    iget-object v0, v0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iget-object v1, p0, Lcom/android/gallery/view/AutoFitImageView$1;->val$meta:Lcom/android/gallery/data/BaseMeta;

    if-eq v0, v1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/gallery/view/AutoFitImageView$1;->this$0:Lcom/android/gallery/view/AutoFitImageView;

    iget-object v1, p0, Lcom/android/gallery/view/AutoFitImageView$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    #calls: Lcom/android/gallery/view/AutoFitImageView;->updateThumbnail(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, v1}, Lcom/android/gallery/view/AutoFitImageView;->access$000(Lcom/android/gallery/view/AutoFitImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
