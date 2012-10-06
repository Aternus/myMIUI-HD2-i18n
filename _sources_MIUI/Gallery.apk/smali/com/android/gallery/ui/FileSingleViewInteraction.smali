.class public Lcom/android/gallery/ui/FileSingleViewInteraction;
.super Lcom/android/gallery/ui/ISingleViewInteraction;
.source "FileSingleViewInteraction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/ui/FileSingleViewInteraction$FileImageAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/gallery/ui/FileSingleViewInteraction$FileImageAdapter;

.field private mBucket:Lcom/android/gallery/data/FileBucket;

.field private mCurrentMediaPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery/ui/SingleViewActivity;Lcom/android/gallery/data/FileBucket;)V
    .locals 1
    .parameter "hostActivity"
    .parameter "bucket"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/gallery/ui/ISingleViewInteraction;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    .line 41
    iput-object p2, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mBucket:Lcom/android/gallery/data/FileBucket;

    .line 42
    invoke-virtual {p2}, Lcom/android/gallery/data/FileBucket;->getFileCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/gallery/data/FileBucket;->getFileMeta(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mCurrentMediaPath:Ljava/lang/String;

    .line 45
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery/ui/SingleViewActivity;Ljava/lang/String;)V
    .locals 1
    .parameter "hostActivity"
    .parameter "initFilePath"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/gallery/ui/ISingleViewInteraction;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    .line 35
    iput-object p2, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mCurrentMediaPath:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mCurrentMediaPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery/util/StorageUtils;->getFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery/data/FileBucket;->getBucket(Ljava/lang/String;)Lcom/android/gallery/data/FileBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mBucket:Lcom/android/gallery/data/FileBucket;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery/ui/FileSingleViewInteraction;)Lcom/android/gallery/data/FileBucket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mBucket:Lcom/android/gallery/data/FileBucket;

    return-object v0
.end method

.method private getSelectedMeta()Lcom/android/gallery/data/FileInfo;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mBucket:Lcom/android/gallery/data/FileBucket;

    iget-object v1, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v1}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery/data/FileBucket;->getFileMeta(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method private validMediaType(Lcom/android/gallery/data/BaseMeta;)Z
    .locals 4
    .parameter "meta"

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-boolean v1, p1, Lcom/android/gallery/data/BaseMeta;->mIsVideo:Z

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-virtual {v1}, Lcom/android/gallery/ui/SingleViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 223
    iget-object v1, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-virtual {v1}, Lcom/android/gallery/ui/SingleViewActivity;->dismissPopupWindow()V

    move v1, v3

    .line 226
    .end local v0           #text:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCurrentItemMIMEType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/gallery/ui/FileSingleViewInteraction;->getSelectedMeta()Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    .line 216
    .local v0, meta:Lcom/android/gallery/data/BaseMeta;
    iget-object v1, v0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaFile;->getMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentItemUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/gallery/ui/FileSingleViewInteraction;->getSelectedMeta()Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    .line 209
    .local v0, meta:Lcom/android/gallery/data/BaseMeta;
    invoke-virtual {v0}, Lcom/android/gallery/data/FileInfo;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 210
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentSelection()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 136
    iget-object v2, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v2}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v3}, Landroid/widget/Gallery;->getCount()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 138
    .local v0, index:I
    iget-object v2, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v2}, Lcom/android/gallery/data/FileBucket;->getFileCount()I

    move-result v2

    sub-int v0, v2, v4

    :goto_0
    if-lez v0, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v2, v0}, Lcom/android/gallery/data/FileBucket;->getFileMeta(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v1

    .line 140
    .local v1, meta:Lcom/android/gallery/data/BaseMeta;
    iget-object v2, v1, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mCurrentMediaPath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    .end local v1           #meta:Lcom/android/gallery/data/BaseMeta;
    :cond_0
    return v0

    .line 138
    .restart local v1       #meta:Lcom/android/gallery/data/BaseMeta;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final getSendIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter "context"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/gallery/ui/FileSingleViewInteraction;->getSelectedMeta()Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery/ui/FileSingleViewInteraction;->getSendIntent(Landroid/content/Context;Lcom/android/gallery/data/BaseMeta;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public hasValidMedia()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v0}, Lcom/android/gallery/data/FileBucket;->getFileCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v0}, Lcom/android/gallery/data/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery/util/StorageUtils;->isInternal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/gallery/util/StorageUtils;->hasStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCrop()V
    .locals 4

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/gallery/ui/FileSingleViewInteraction;->getSelectedMeta()Lcom/android/gallery/data/FileInfo;

    move-result-object v1

    .line 156
    .local v1, meta:Lcom/android/gallery/data/BaseMeta;
    invoke-direct {p0, v1}, Lcom/android/gallery/ui/FileSingleViewInteraction;->validMediaType(Lcom/android/gallery/data/BaseMeta;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/gallery/app/AppHelper;->createCropImageIntent(Lcom/android/gallery/data/BaseMeta;Z)Landroid/content/Intent;

    move-result-object v0

    .line 158
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    const/16 v3, 0x8

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery/ui/SingleViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 160
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onDeleteItem()V
    .locals 4

    .prologue
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery/data/FileInfo;>;"
    invoke-direct {p0}, Lcom/android/gallery/ui/FileSingleViewInteraction;->getSelectedMeta()Lcom/android/gallery/data/FileInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v1, Lcom/android/gallery/ui/FileSingleViewInteraction$1;

    invoke-direct {v1, p0}, Lcom/android/gallery/ui/FileSingleViewInteraction$1;-><init>(Lcom/android/gallery/ui/FileSingleViewInteraction;)V

    .line 173
    .local v1, refresh:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    iget-object v3, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-static {v2, v1, v3, v0}, Lcom/android/gallery/app/AppHelper;->delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/android/gallery/data/FileBucket;Ljava/util/ArrayList;)V

    .line 178
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    const/4 v6, 0x0

    .line 109
    iget-object v5, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v5, p3}, Lcom/android/gallery/data/FileBucket;->getFileMeta(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v3

    .line 110
    .local v3, meta:Lcom/android/gallery/data/BaseMeta;
    if-nez v3, :cond_1

    .line 133
    .end local p2
    :cond_0
    return-void

    .line 112
    .restart local p2
    :cond_1
    iget-object v5, v3, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mCurrentMediaPath:Ljava/lang/String;

    .line 113
    check-cast p2, Lcom/android/gallery/view/MultiTouchView;

    .end local p2
    const/4 v5, 0x0

    invoke-virtual {p2, v3, v6, v5}, Lcom/android/gallery/view/MultiTouchView;->setMeta(Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;Z)V

    .line 115
    const/4 v0, -0x5

    .line 116
    .local v0, i:I
    :goto_0
    const/16 v5, 0xa

    if-gt v0, v5, :cond_0

    .line 117
    add-int v1, p3, v0

    .line 118
    .local v1, index:I
    if-ltz v1, :cond_3

    if-eq v1, p3, :cond_3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 119
    const/4 v4, 0x1

    .line 120
    .local v4, type:I
    if-ltz v0, :cond_2

    const/4 v5, 0x2

    if-gt v0, v5, :cond_2

    .line 122
    const/4 v4, 0x0

    .line 124
    :cond_2
    iget-object v5, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v5, v1}, Lcom/android/gallery/data/FileBucket;->getFileMeta(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v2

    .line 125
    .local v2, info:Lcom/android/gallery/data/FileInfo;
    invoke-virtual {v2}, Lcom/android/gallery/data/FileInfo;->isModified()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 126
    invoke-static {v2, v6, v6}, Lcom/android/gallery/data/BaseMeta;->pushLoadAllDataTask(Lcom/android/gallery/data/BaseMeta;Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V

    .line 116
    .end local v2           #info:Lcom/android/gallery/data/FileInfo;
    .end local v4           #type:I
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .restart local v2       #info:Lcom/android/gallery/data/FileInfo;
    .restart local v4       #type:I
    :cond_4
    invoke-static {v2, v4}, Lcom/android/gallery/data/ThumbnailCacheManager;->fetchThumbnail(Lcom/android/gallery/data/BaseMeta;I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v0}, Lcom/android/gallery/data/FileBucket;->isModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v0}, Lcom/android/gallery/data/FileBucket;->loadAllMedias()V

    .line 56
    iget-object v0, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {p0}, Lcom/android/gallery/ui/FileSingleViewInteraction;->getCurrentSelection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    .line 57
    iget-object v0, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-virtual {v0}, Lcom/android/gallery/ui/SingleViewActivity;->refreshUI()V

    .line 59
    :cond_0
    return-void
.end method

.method public onRotate(I)V
    .locals 3
    .parameter "deltaDegree"

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/gallery/ui/FileSingleViewInteraction;->getSelectedMeta()Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    .line 193
    .local v0, meta:Lcom/android/gallery/data/FileInfo;
    invoke-direct {p0, v0}, Lcom/android/gallery/ui/FileSingleViewInteraction;->validMediaType(Lcom/android/gallery/data/BaseMeta;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget v1, v0, Lcom/android/gallery/data/BaseMeta;->mOrientation:I

    add-int/2addr v1, p1

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    iput v1, v0, Lcom/android/gallery/data/BaseMeta;->mOrientation:I

    .line 195
    iget-object v1, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v1}, Landroid/widget/Gallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 196
    new-instance v1, Lcom/android/gallery/ui/FileSingleViewInteraction$2;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery/ui/FileSingleViewInteraction$2;-><init>(Lcom/android/gallery/ui/FileSingleViewInteraction;Lcom/android/gallery/data/FileInfo;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/gallery/ui/FileSingleViewInteraction$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 204
    :cond_0
    return-void
.end method

.method public onShowItemInfo()V
    .locals 3

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/gallery/ui/FileSingleViewInteraction;->getSelectedMeta()Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    .line 188
    .local v0, meta:Lcom/android/gallery/data/BaseMeta;
    new-instance v1, Lcom/android/gallery/ui/InformationDialog;

    iget-object v2, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-direct {v1, v2, v0}, Lcom/android/gallery/ui/InformationDialog;-><init>(Landroid/content/Context;Lcom/android/gallery/data/BaseMeta;)V

    invoke-virtual {v1}, Lcom/android/gallery/ui/InformationDialog;->show()V

    .line 189
    return-void
.end method

.method public setAdapter(Landroid/widget/Gallery;)V
    .locals 2
    .parameter "gallery"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/gallery/ui/ISingleViewInteraction;->setAdapter(Landroid/widget/Gallery;)V

    .line 64
    new-instance v0, Lcom/android/gallery/ui/FileSingleViewInteraction$FileImageAdapter;

    iget-object v1, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-direct {v0, p0, v1}, Lcom/android/gallery/ui/FileSingleViewInteraction$FileImageAdapter;-><init>(Lcom/android/gallery/ui/FileSingleViewInteraction;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mAdapter:Lcom/android/gallery/ui/FileSingleViewInteraction$FileImageAdapter;

    .line 65
    iget-object v0, p0, Lcom/android/gallery/ui/FileSingleViewInteraction;->mAdapter:Lcom/android/gallery/ui/FileSingleViewInteraction$FileImageAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/gallery/ui/FileSingleViewInteraction;->getCurrentSelection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Gallery;->setSelection(I)V

    .line 67
    return-void
.end method
