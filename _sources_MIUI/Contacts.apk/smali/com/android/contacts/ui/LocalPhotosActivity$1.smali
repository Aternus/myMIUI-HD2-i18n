.class Lcom/android/contacts/ui/LocalPhotosActivity$1;
.super Ljava/lang/Object;
.source "LocalPhotosActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/LocalPhotosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/LocalPhotosActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/LocalPhotosActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/contacts/ui/LocalPhotosActivity$1;->this$0:Lcom/android/contacts/ui/LocalPhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/contacts/ui/LocalPhotosActivity$1;->this$0:Lcom/android/contacts/ui/LocalPhotosActivity;

    #getter for: Lcom/android/contacts/ui/LocalPhotosActivity;->mGridAdapter:Lcom/android/contacts/ui/ContactPhotoAdapter;
    invoke-static {v2}, Lcom/android/contacts/ui/LocalPhotosActivity;->access$000(Lcom/android/contacts/ui/LocalPhotosActivity;)Lcom/android/contacts/ui/ContactPhotoAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/contacts/ui/ContactPhotoAdapter;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/contacts/ui/LocalPhotosActivity$1;->this$0:Lcom/android/contacts/ui/LocalPhotosActivity;

    invoke-virtual {v2}, Lcom/android/contacts/ui/LocalPhotosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 92
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 93
    iget-object v2, p0, Lcom/android/contacts/ui/LocalPhotosActivity$1;->this$0:Lcom/android/contacts/ui/LocalPhotosActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/contacts/ui/LocalPhotosActivity;->setResult(ILandroid/content/Intent;)V

    .line 94
    iget-object v2, p0, Lcom/android/contacts/ui/LocalPhotosActivity$1;->this$0:Lcom/android/contacts/ui/LocalPhotosActivity;

    invoke-virtual {v2}, Lcom/android/contacts/ui/LocalPhotosActivity;->finish()V

    .line 95
    return-void
.end method
