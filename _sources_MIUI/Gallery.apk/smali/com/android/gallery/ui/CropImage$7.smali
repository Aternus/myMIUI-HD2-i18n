.class Lcom/android/gallery/ui/CropImage$7;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/CropImage;->onSaveClicked()V
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
    .line 376
    iput-object p1, p0, Lcom/android/gallery/ui/CropImage$7;->this$0:Lcom/android/gallery/ui/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage$7;->this$0:Lcom/android/gallery/ui/CropImage;

    #getter for: Lcom/android/gallery/ui/CropImage;->mSaveResultPrompt:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery/ui/CropImage;->access$700(Lcom/android/gallery/ui/CropImage;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage$7;->this$0:Lcom/android/gallery/ui/CropImage;

    iget-object v1, p0, Lcom/android/gallery/ui/CropImage$7;->this$0:Lcom/android/gallery/ui/CropImage;

    #getter for: Lcom/android/gallery/ui/CropImage;->mSaveResultPrompt:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/gallery/ui/CropImage;->access$700(Lcom/android/gallery/ui/CropImage;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage$7;->this$0:Lcom/android/gallery/ui/CropImage;

    invoke-virtual {v0}, Lcom/android/gallery/ui/CropImage;->finish()V

    .line 383
    return-void
.end method
