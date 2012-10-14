.class Lcom/android/gallery/ui/FolderViewActivity$2;
.super Ljava/lang/Object;
.source "FolderViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/FolderViewActivity;->setupGrid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/FolderViewActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/FolderViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, -0x1

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 313
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery/data/BaseMeta;

    .line 315
    .local v2, meta:Lcom/android/gallery/data/BaseMeta;
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->is_get_content:Z
    invoke-static {v3}, Lcom/android/gallery/ui/FolderViewActivity;->access$400(Lcom/android/gallery/ui/FolderViewActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 316
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->mShouldCrop:Z
    invoke-static {v3}, Lcom/android/gallery/ui/FolderViewActivity;->access$500(Lcom/android/gallery/ui/FolderViewActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 317
    invoke-static {v2, v6}, Lcom/android/gallery/app/AppHelper;->createCropImageIntent(Lcom/android/gallery/data/BaseMeta;Z)Landroid/content/Intent;

    move-result-object v1

    .line 318
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    invoke-virtual {v3}, Lcom/android/gallery/ui/FolderViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 319
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 322
    :cond_0
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    invoke-virtual {v3, v1, v4}, Lcom/android/gallery/ui/FolderViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 347
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 324
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 325
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    invoke-static {v3, v2}, Lcom/android/gallery/util/Utils;->getContentUri(Landroid/content/Context;Lcom/android/gallery/data/BaseMeta;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 326
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    invoke-virtual {v3, v7, v1}, Lcom/android/gallery/ui/FolderViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 327
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    invoke-virtual {v3}, Lcom/android/gallery/ui/FolderViewActivity;->finish()V

    goto :goto_0

    .line 329
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->is_set_wallpaper:Z
    invoke-static {v3}, Lcom/android/gallery/ui/FolderViewActivity;->access$600(Lcom/android/gallery/ui/FolderViewActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 330
    invoke-static {v5, v2}, Lcom/android/gallery/app/AppHelper;->createWallpaperIntent(ZLcom/android/gallery/data/BaseMeta;)Landroid/content/Intent;

    move-result-object v1

    .line 331
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    invoke-virtual {v3, v1, v4}, Lcom/android/gallery/ui/FolderViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 332
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->is_set_lockscreen:Z
    invoke-static {v3}, Lcom/android/gallery/ui/FolderViewActivity;->access$700(Lcom/android/gallery/ui/FolderViewActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 333
    invoke-static {v6, v2}, Lcom/android/gallery/app/AppHelper;->createWallpaperIntent(ZLcom/android/gallery/data/BaseMeta;)Landroid/content/Intent;

    move-result-object v1

    .line 334
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    invoke-virtual {v3, v1, v4}, Lcom/android/gallery/ui/FolderViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 335
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->is_pick_content:Z
    invoke-static {v3}, Lcom/android/gallery/ui/FolderViewActivity;->access$800(Lcom/android/gallery/ui/FolderViewActivity;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 336
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 337
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/gallery/util/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 338
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    invoke-virtual {v3, v7, v1}, Lcom/android/gallery/ui/FolderViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 339
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    invoke-virtual {v3}, Lcom/android/gallery/ui/FolderViewActivity;->finish()V

    goto :goto_0

    .line 341
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->mIsEditMode:Z
    invoke-static {v3}, Lcom/android/gallery/ui/FolderViewActivity;->access$900(Lcom/android/gallery/ui/FolderViewActivity;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 342
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->mAdapter:Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;
    invoke-static {v3}, Lcom/android/gallery/ui/FolderViewActivity;->access$200(Lcom/android/gallery/ui/FolderViewActivity;)Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->mAdapter:Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;
    invoke-static {v4}, Lcom/android/gallery/ui/FolderViewActivity;->access$200(Lcom/android/gallery/ui/FolderViewActivity;)Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->isMark(I)Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v6

    :goto_1
    invoke-virtual {v3, p3, v4}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mark(IZ)V

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_1

    .line 344
    :cond_7
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$2;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #calls: Lcom/android/gallery/ui/FolderViewActivity;->gotoSingleImageShow(Lcom/android/gallery/data/BaseMeta;I)V
    invoke-static {v3, v2, v5}, Lcom/android/gallery/ui/FolderViewActivity;->access$1000(Lcom/android/gallery/ui/FolderViewActivity;Lcom/android/gallery/data/BaseMeta;I)V

    goto/16 :goto_0
.end method
