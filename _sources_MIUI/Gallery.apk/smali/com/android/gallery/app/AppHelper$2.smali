.class final Lcom/android/gallery/app/AppHelper$2;
.super Ljava/lang/Object;
.source "AppHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/app/AppHelper;->delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/android/gallery/data/FileBucket;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bucket:Lcom/android/gallery/data/FileBucket;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$metas:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/android/gallery/data/FileBucket;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/gallery/app/AppHelper$2;->val$metas:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/gallery/app/AppHelper$2;->val$bucket:Lcom/android/gallery/data/FileBucket;

    iput-object p3, p0, Lcom/android/gallery/app/AppHelper$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/gallery/app/AppHelper$2;->val$metas:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery/app/AppHelper$2;->val$metas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/gallery/app/AppHelper$2;->val$bucket:Lcom/android/gallery/data/FileBucket;

    iget-object v1, p0, Lcom/android/gallery/app/AppHelper$2;->val$metas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/gallery/data/FileBucket;->deleteMedias(Ljava/util/ArrayList;)V

    .line 266
    iget-object v0, p0, Lcom/android/gallery/app/AppHelper$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery/app/AppHelper$2;->val$metas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/gallery/app/AppHelper$2;->val$bucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v1}, Lcom/android/gallery/data/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v1

    .end local p0
    :goto_0
    invoke-static {v0, v1}, Lcom/android/gallery/data/MediaStoreHelper;->notifyFileSystemChanged(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    :goto_1
    return-void

    .line 266
    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/android/gallery/app/AppHelper$2;->val$metas:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery/data/FileInfo;

    iget-object v1, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    goto :goto_0

    .line 270
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/gallery/app/AppHelper$2;->val$bucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v0}, Lcom/android/gallery/data/FileBucket;->isModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/android/gallery/app/AppHelper$2;->val$bucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v0}, Lcom/android/gallery/data/FileBucket;->loadAllMedias()V

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/android/gallery/app/AppHelper$2;->val$bucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v0}, Lcom/android/gallery/data/FileBucket;->deleteAllMedia()V

    .line 274
    iget-object v0, p0, Lcom/android/gallery/app/AppHelper$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery/app/AppHelper$2;->val$bucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v1}, Lcom/android/gallery/data/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery/data/MediaStoreHelper;->notifyFileSystemChanged(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
