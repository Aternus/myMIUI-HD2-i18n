.class public Lcom/android/contacts/ui/PhotoDetailActivity;
.super Lcom/miui/android/resourcebrowser/ResourceDetailActivity;
.source "PhotoDetailActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/miui/android/resourcebrowser/ResourceDetailActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected apply()V
    .locals 3

    .prologue
    .line 21
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/contacts/ContactPickerActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    const-string v0, "com.android.contacts.action.PICK_CONTACTS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    iget-object v0, p0, Lcom/android/contacts/ui/PhotoDetailActivity;->mResourceSet:Lcom/miui/android/resourcebrowser/ResourceSet;

    iget v2, p0, Lcom/android/contacts/ui/PhotoDetailActivity;->mResourceIndex:I

    invoke-virtual {v0, v2}, Lcom/miui/android/resourcebrowser/ResourceSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/android/resourcebrowser/Resource;

    .line 24
    invoke-virtual {v0}, Lcom/miui/android/resourcebrowser/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 25
    const-string v2, "extra_color"

    invoke-static {v0}, Lcom/android/contacts/ui/LocalPhotosActivity;->tryParseColor(Lcom/miui/android/resourcebrowser/Resource;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/contacts/ui/PhotoDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 27
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 31
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/ui/PhotoDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/contacts/ui/PhotoDetailActivity;->finish()V

    .line 33
    return-void
.end method

.method protected pick()V
    .locals 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/android/contacts/ui/PhotoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 15
    const-class v1, Lcom/android/contacts/ui/LocalPhotosActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 16
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ui/PhotoDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 17
    return-void
.end method
