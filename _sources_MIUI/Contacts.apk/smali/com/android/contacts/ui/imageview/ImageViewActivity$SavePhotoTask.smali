.class Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "ImageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/imageview/ImageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavePhotoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/ui/imageview/ImageViewActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/contacts/ui/imageview/ImageViewActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ui/imageview/ImageViewActivity;Lcom/android/contacts/ui/imageview/ImageViewActivity;)V
    .locals 2
    .parameter
    .parameter "target"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;->this$0:Lcom/android/contacts/ui/imageview/ImageViewActivity;

    .line 234
    invoke-direct {p0, p2}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;->dialog:Landroid/app/ProgressDialog;

    .line 235
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;->dialog:Landroid/app/ProgressDialog;

    .line 236
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;->dialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b018d

    invoke-virtual {p1, v1}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 238
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    check-cast p1, Lcom/android/contacts/ui/imageview/ImageViewActivity;

    .end local p1
    check-cast p2, [Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;->doInBackground(Lcom/android/contacts/ui/imageview/ImageViewActivity;[Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/android/contacts/ui/imageview/ImageViewActivity;[Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "target"
    .parameter "params"

    .prologue
    .line 242
    iget-object v2, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;->this$0:Lcom/android/contacts/ui/imageview/ImageViewActivity;

    #calls: Lcom/android/contacts/ui/imageview/ImageViewActivity;->savePhoto()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->access$100(Lcom/android/contacts/ui/imageview/ImageViewActivity;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, filePath:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;->this$0:Lcom/android/contacts/ui/imageview/ImageViewActivity;

    invoke-virtual {v2}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 244
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v2, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;->this$0:Lcom/android/contacts/ui/imageview/ImageViewActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 246
    iget-object v2, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;->this$0:Lcom/android/contacts/ui/imageview/ImageViewActivity;

    invoke-virtual {v2}, Lcom/android/contacts/ui/imageview/ImageViewActivity;->finish()V

    .line 247
    const/4 v2, 0x0

    return-object v2
.end method

.method protected onPostExecute(Lcom/android/contacts/ui/imageview/ImageViewActivity;Ljava/lang/Void;)V
    .locals 1
    .parameter "target"
    .parameter "result"

    .prologue
    .line 229
    invoke-super {p0, p1, p2}, Lcom/android/contacts/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 231
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    check-cast p1, Lcom/android/contacts/ui/imageview/ImageViewActivity;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;->onPostExecute(Lcom/android/contacts/ui/imageview/ImageViewActivity;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/contacts/ui/imageview/ImageViewActivity;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/android/contacts/util/WeakAsyncTask;->onPreExecute(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 225
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 218
    check-cast p1, Lcom/android/contacts/ui/imageview/ImageViewActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/imageview/ImageViewActivity$SavePhotoTask;->onPreExecute(Lcom/android/contacts/ui/imageview/ImageViewActivity;)V

    return-void
.end method
