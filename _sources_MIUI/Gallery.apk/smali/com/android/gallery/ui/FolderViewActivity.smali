.class public Lcom/android/gallery/ui/FolderViewActivity;
.super Landroid/app/Activity;
.source "FolderViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;,
        Lcom/android/gallery/ui/FolderViewActivity$RefreshHandler;
    }
.end annotation


# instance fields
.field private is_get_content:Z

.field private is_pick_content:Z

.field private is_set_lockscreen:Z

.field private is_set_wallpaper:Z

.field private mAdapter:Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;

.field private mBucketExtData:Lcom/android/gallery/data/BucketExt$BucketExtData;

.field private mFolderPath:Ljava/lang/String;

.field private mGrid:Landroid/widget/GridView;

.field private mIsEditMode:Z

.field private mMediaBucket:Lcom/android/gallery/data/FileBucket;

.field protected mMediaCache:Lcom/android/gallery/data/MediaCache;

.field private mParameter:Lcom/android/gallery/data/NotificationParameter;

.field private mShouldCrop:Z

.field private selectedFileSize:J

.field private selectedMeta:Lcom/android/gallery/data/FileInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    invoke-static {}, Lcom/android/gallery/data/MediaCache;->getInstance()Lcom/android/gallery/data/MediaCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaCache:Lcom/android/gallery/data/MediaCache;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mShouldCrop:Z

    .line 506
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery/ui/FolderViewActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/gallery/ui/FolderViewActivity;->setEditMode(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery/ui/FolderViewActivity;Lcom/android/gallery/data/BaseMeta;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/gallery/ui/FolderViewActivity;->gotoSingleImageShow(Lcom/android/gallery/data/BaseMeta;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery/ui/FolderViewActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery/ui/FolderViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/gallery/ui/FolderViewActivity;->updateEditmodeHint()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/gallery/ui/FolderViewActivity;)Lcom/android/gallery/data/FileBucket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery/ui/FolderViewActivity;)Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mAdapter:Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery/ui/FolderViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/gallery/ui/FolderViewActivity;->refreshUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery/ui/FolderViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_get_content:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery/ui/FolderViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mShouldCrop:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery/ui/FolderViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_set_wallpaper:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery/ui/FolderViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_set_lockscreen:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery/ui/FolderViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_pick_content:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery/ui/FolderViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mIsEditMode:Z

    return v0
.end method

.method private getContentSummary(II)Ljava/lang/String;
    .locals 7
    .parameter "selectedImageCount"
    .parameter "selectedVideoCount"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 201
    const-string v0, ""

    .line 202
    .local v0, summary:Ljava/lang/String;
    if-lez p1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090041

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery/ui/FolderViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    if-lez p2, :cond_0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_0
    if-lez p2, :cond_1

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f09003f

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery/ui/FolderViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_1
    return-object v0
.end method

.method private getSelectedMetas()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery/data/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedFileSize:J

    .line 218
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v3, metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery/data/FileInfo;>;"
    iget-object v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v4}, Lcom/android/gallery/data/FileBucket;->getFileCount()I

    move-result v0

    .line 220
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 221
    iget-object v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v4, v1}, Lcom/android/gallery/data/FileBucket;->getFileMeta(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v2

    .line 222
    .local v2, meta:Lcom/android/gallery/data/FileInfo;
    iget-boolean v4, v2, Lcom/android/gallery/data/BaseMeta;->mIsSelected:Z

    if-eqz v4, :cond_0

    .line 223
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-wide v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedFileSize:J

    iget-wide v6, v2, Lcom/android/gallery/data/BaseMeta;->mSize:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedFileSize:J

    .line 220
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v2           #meta:Lcom/android/gallery/data/FileInfo;
    :cond_1
    return-object v3
.end method

.method private gotoSingleImageShow(Lcom/android/gallery/data/BaseMeta;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 253
    iget-object v1, p1, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery/util/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 254
    const-class v1, Lcom/android/gallery/ui/SingleViewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 255
    const-string v1, "initial_mode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/FolderViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 257
    return-void
.end method

.method private refreshUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 155
    const v3, 0x7f0c0039

    invoke-virtual {p0, v3}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 156
    .local v1, indicator:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v3}, Lcom/android/gallery/data/FileBucket;->isCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    const v3, 0x7f020012

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    :goto_0
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v3}, Lcom/android/gallery/data/FileBucket;->getFileCount()I

    move-result v0

    .line 163
    .local v0, count:I
    const v3, 0x7f0c003b

    invoke-virtual {p0, v3}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 164
    .local v2, t:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const v3, 0x7f0c003a

    invoke-virtual {p0, v3}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #t:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 167
    .restart local v2       #t:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v3, p0}, Lcom/android/gallery/data/FileBucket;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const v3, 0x7f0c002d

    invoke-virtual {p0, v3}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #t:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 170
    .restart local v2       #t:Landroid/widget/TextView;
    if-nez v0, :cond_2

    const v3, 0x7f09002e

    invoke-virtual {p0, v3}, Lcom/android/gallery/ui/FolderViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const v3, 0x7f0c003c

    invoke-virtual {p0, v3}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v0, :cond_3

    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 176
    return-void

    .line 159
    .end local v0           #count:I
    .end local v2           #t:Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v3}, Lcom/android/gallery/data/FileBucket;->isFavorite()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f020020

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_3

    .line 170
    .restart local v0       #count:I
    .restart local v2       #t:Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    iget v3, v3, Lcom/android/gallery/data/FileBucket;->mImageNum:I

    iget-object v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    iget v4, v4, Lcom/android/gallery/data/FileBucket;->mVideoNum:I

    invoke-direct {p0, v3, v4}, Lcom/android/gallery/ui/FolderViewActivity;->getContentSummary(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move v4, v5

    .line 174
    goto :goto_2
.end method

.method private setEditMode(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    const v7, 0x7f0c002e

    const v6, 0x7f0c002d

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 231
    iput-boolean p1, p0, Lcom/android/gallery/ui/FolderViewActivity;->mIsEditMode:Z

    .line 233
    const v2, 0x7f0c0029

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 234
    .local v0, headerViewSwitcher:Landroid/widget/ViewSwitcher;
    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {v0, v4}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 236
    invoke-virtual {p0, v6}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 237
    invoke-virtual {p0, v7}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->mAdapter:Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->markAll(Z)V

    .line 241
    const v2, 0x7f0c0026

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 242
    .local v1, v:Landroid/widget/Button;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 243
    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 249
    .end local v1           #v:Landroid/widget/Button;
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 246
    invoke-virtual {p0, v6}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    invoke-virtual {p0, v7}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupGrid()V
    .locals 2

    .prologue
    .line 306
    new-instance v0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;-><init>(Lcom/android/gallery/ui/FolderViewActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mAdapter:Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;

    .line 307
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mGrid:Landroid/widget/GridView;

    .line 308
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/gallery/ui/FolderViewActivity;->mAdapter:Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 309
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mGrid:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFastScrollEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/android/gallery/ui/FolderViewActivity$2;

    invoke-direct {v1, p0}, Lcom/android/gallery/ui/FolderViewActivity$2;-><init>(Lcom/android/gallery/ui/FolderViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 349
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/FolderViewActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 350
    return-void
.end method

.method private updateEditmodeHint()V
    .locals 5

    .prologue
    .line 193
    iget-object v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->mAdapter:Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;

    iget v2, v2, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mSelectedImageCount:I

    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity;->mAdapter:Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;

    iget v3, v3, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mSelectedVideoCount:I

    invoke-direct {p0, v2, v3}, Lcom/android/gallery/ui/FolderViewActivity;->getContentSummary(II)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, summary:Ljava/lang/String;
    const v2, 0x7f0c003d

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 195
    .local v1, t:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f090042

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/FolderViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    return-void

    .line 195
    :cond_0
    const v2, 0x7f09003e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery/ui/FolderViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 443
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 444
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 445
    invoke-virtual {p0, p2, p3}, Lcom/android/gallery/ui/FolderViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 446
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderViewActivity;->finish()V

    .line 449
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mIsEditMode:Z

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery/ui/FolderViewActivity;->setEditMode(Z)V

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 303
    .end local p1
    :goto_0
    return-void

    .line 263
    .restart local p1
    :sswitch_0
    invoke-direct {p0, v4}, Lcom/android/gallery/ui/FolderViewActivity;->setEditMode(Z)V

    goto :goto_0

    .line 267
    :sswitch_1
    invoke-direct {p0, v3}, Lcom/android/gallery/ui/FolderViewActivity;->setEditMode(Z)V

    goto :goto_0

    .line 272
    :sswitch_2
    new-instance v1, Lcom/android/gallery/ui/FolderViewActivity$1;

    invoke-direct {v1, p0}, Lcom/android/gallery/ui/FolderViewActivity$1;-><init>(Lcom/android/gallery/ui/FolderViewActivity;)V

    .line 280
    .local v1, refresh:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    invoke-direct {p0}, Lcom/android/gallery/ui/FolderViewActivity;->getSelectedMetas()Ljava/util/ArrayList;

    move-result-object v3

    const v4, 0x7f090033

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/gallery/app/AppHelper;->delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/android/gallery/data/FileBucket;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 289
    .end local v1           #refresh:Ljava/lang/Runnable;
    :sswitch_3
    invoke-direct {p0}, Lcom/android/gallery/ui/FolderViewActivity;->getSelectedMetas()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/gallery/app/AppHelper;->send(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 290
    invoke-direct {p0, v3}, Lcom/android/gallery/ui/FolderViewActivity;->setEditMode(Z)V

    goto :goto_0

    .line 294
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 295
    .local v0, isSelectAll:Z
    if-nez v0, :cond_0

    move v2, v4

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 296
    check-cast p1, Landroid/widget/Button;

    .end local p1
    if-eqz v0, :cond_1

    const v2, 0x7f090030

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 297
    iget-object v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->mAdapter:Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->markAll(Z)V

    goto :goto_0

    .restart local p1
    :cond_0
    move v2, v3

    .line 295
    goto :goto_1

    .line 296
    .end local p1
    :cond_1
    const v2, 0x7f09002f

    goto :goto_2

    .line 261
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0022 -> :sswitch_2
        0x7f0c0025 -> :sswitch_3
        0x7f0c0026 -> :sswitch_4
        0x7f0c003c -> :sswitch_0
        0x7f0c003e -> :sswitch_1
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 378
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedMeta:Lcom/android/gallery/data/FileInfo;

    if-nez v3, :cond_0

    move v3, v4

    .line 438
    :goto_0
    return v3

    .line 381
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 438
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    .line 383
    :pswitch_1
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedMeta:Lcom/android/gallery/data/FileInfo;

    invoke-static {v4, v3}, Lcom/android/gallery/app/AppHelper;->createWallpaperIntent(ZLcom/android/gallery/data/BaseMeta;)Landroid/content/Intent;

    move-result-object v0

    .line 384
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v6}, Lcom/android/gallery/ui/FolderViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v5

    .line 385
    goto :goto_0

    .line 388
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedMeta:Lcom/android/gallery/data/FileInfo;

    invoke-static {v5, v3}, Lcom/android/gallery/app/AppHelper;->createWallpaperIntent(ZLcom/android/gallery/data/BaseMeta;)Landroid/content/Intent;

    move-result-object v0

    .line 389
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v6}, Lcom/android/gallery/ui/FolderViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v5

    .line 390
    goto :goto_0

    .line 393
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v1, metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery/data/FileInfo;>;"
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedMeta:Lcom/android/gallery/data/FileInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-static {p0, v1}, Lcom/android/gallery/app/AppHelper;->send(Landroid/content/Context;Ljava/util/ArrayList;)V

    move v3, v5

    .line 396
    goto :goto_0

    .line 399
    .end local v1           #metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery/data/FileInfo;>;"
    :pswitch_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .restart local v1       #metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery/data/FileInfo;>;"
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedMeta:Lcom/android/gallery/data/FileInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v2, Lcom/android/gallery/ui/FolderViewActivity$3;

    invoke-direct {v2, p0}, Lcom/android/gallery/ui/FolderViewActivity$3;-><init>(Lcom/android/gallery/ui/FolderViewActivity;)V

    .line 409
    .local v2, refresh:Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    const v4, 0x7f090032

    invoke-static {p0, v2, v3, v1, v4}, Lcom/android/gallery/app/AppHelper;->delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/android/gallery/data/FileBucket;Ljava/util/ArrayList;I)V

    move v3, v5

    .line 415
    goto :goto_0

    .line 418
    .end local v1           #metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery/data/FileInfo;>;"
    .end local v2           #refresh:Ljava/lang/Runnable;
    :pswitch_5
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedMeta:Lcom/android/gallery/data/FileInfo;

    invoke-virtual {v3}, Lcom/android/gallery/data/FileInfo;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 419
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedMeta:Lcom/android/gallery/data/FileInfo;

    invoke-static {v3}, Lcom/android/gallery/app/AppHelper;->createVideoIntent(Lcom/android/gallery/data/BaseMeta;)Landroid/content/Intent;

    move-result-object v0

    .line 420
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/FolderViewActivity;->startActivity(Landroid/content/Intent;)V

    move v3, v5

    .line 421
    goto :goto_0

    .line 425
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_6
    new-instance v3, Lcom/android/gallery/ui/TextInputDialog;

    iget-object v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedMeta:Lcom/android/gallery/data/FileInfo;

    invoke-direct {v3, p0, v4}, Lcom/android/gallery/ui/TextInputDialog;-><init>(Landroid/content/Context;Lcom/android/gallery/data/BaseMeta;)V

    invoke-virtual {v3}, Lcom/android/gallery/ui/TextInputDialog;->show()V

    goto :goto_1

    .line 429
    :pswitch_7
    new-instance v3, Lcom/android/gallery/ui/InformationDialog;

    iget-object v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedMeta:Lcom/android/gallery/data/FileInfo;

    invoke-direct {v3, p0, v4}, Lcom/android/gallery/ui/InformationDialog;-><init>(Landroid/content/Context;Lcom/android/gallery/data/BaseMeta;)V

    invoke-virtual {v3}, Lcom/android/gallery/ui/InformationDialog;->show()V

    move v3, v5

    .line 430
    goto :goto_0

    .line 433
    :pswitch_8
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    iget-object v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedMeta:Lcom/android/gallery/data/FileInfo;

    invoke-virtual {v3, v4}, Lcom/android/gallery/data/FileBucket;->setCustomizedCover(Lcom/android/gallery/data/FileInfo;)V

    move v3, v5

    .line 434
    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0075
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f0c003c

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "folder_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->mFolderPath:Ljava/lang/String;

    .line 84
    const-string v2, "true"

    const-string v3, "crop"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->mShouldCrop:Z

    .line 86
    const v2, 0x7f03000a

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/FolderViewActivity;->setContentView(I)V

    .line 88
    invoke-static {v1}, Lcom/android/gallery/app/AppHelper;->isGetContent(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_get_content:Z

    .line 89
    invoke-static {v1}, Lcom/android/gallery/app/AppHelper;->isSetWallpaper(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_set_wallpaper:Z

    .line 90
    invoke-static {v1}, Lcom/android/gallery/app/AppHelper;->isSetLockScreen(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_set_lockscreen:Z

    .line 91
    invoke-static {v1}, Lcom/android/gallery/app/AppHelper;->isPick(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_pick_content:Z

    .line 93
    iget-object v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->mFolderPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/gallery/data/FileBucket;->getBucket(Ljava/lang/String;)Lcom/android/gallery/data/FileBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    .line 96
    const/4 v0, 0x4

    .line 97
    .local v0, filterFlags:I
    iget-boolean v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_set_wallpaper:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_set_lockscreen:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->mShouldCrop:Z

    if-eqz v2, :cond_1

    .line 98
    :cond_0
    or-int/lit8 v0, v0, 0x10

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v2, v0}, Lcom/android/gallery/data/FileBucket;->setFilterFlags(I)V

    .line 103
    new-instance v2, Lcom/android/gallery/data/NotificationParameter;

    new-instance v3, Lcom/android/gallery/ui/FolderViewActivity$RefreshHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery/ui/FolderViewActivity$RefreshHandler;-><init>(Lcom/android/gallery/ui/FolderViewActivity;Lcom/android/gallery/ui/FolderViewActivity$1;)V

    iget-object v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->mFolderPath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/android/gallery/data/NotificationParameter;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->mParameter:Lcom/android/gallery/data/NotificationParameter;

    .line 105
    iget-object v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->mFolderPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/gallery/data/BucketExt;->getBucketExtData(Ljava/lang/String;)Lcom/android/gallery/data/BucketExt$BucketExtData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->mBucketExtData:Lcom/android/gallery/data/BucketExt$BucketExtData;

    .line 106
    iget-object v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->mBucketExtData:Lcom/android/gallery/data/BucketExt$BucketExtData;

    invoke-virtual {v2}, Lcom/android/gallery/data/BucketExt$BucketExtData;->increaseUseFrequncy()V

    .line 108
    invoke-direct {p0}, Lcom/android/gallery/ui/FolderViewActivity;->setupGrid()V

    .line 110
    iget-boolean v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->mIsEditMode:Z

    invoke-direct {p0, v2}, Lcom/android/gallery/ui/FolderViewActivity;->setEditMode(Z)V

    .line 112
    iget-boolean v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_get_content:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_set_wallpaper:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_set_lockscreen:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_pick_content:Z

    if-eqz v2, :cond_3

    .line 113
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :cond_3
    const v2, 0x7f0c0022

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v2, 0x7f0c0025

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v2, 0x7f0c0026

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p0, v5}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v2, 0x7f0c003e

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/FolderViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 356
    iget-object v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v4}, Lcom/android/gallery/data/FileBucket;->getFileCount()I

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->mIsEditMode:Z

    if-eqz v4, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 360
    .local v1, inflater:Landroid/view/MenuInflater;
    const v4, 0x7f0b0003

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 362
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0

    .line 363
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Lcom/android/gallery/data/FileBucket;->getFileMeta(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedMeta:Lcom/android/gallery/data/FileInfo;

    .line 364
    iget-object v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedMeta:Lcom/android/gallery/data/FileInfo;

    if-eqz v4, :cond_0

    .line 365
    iget-object v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedMeta:Lcom/android/gallery/data/FileInfo;

    iget-object v4, v4, Lcom/android/gallery/data/BaseMeta;->mTitle:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 367
    iget-object v4, p0, Lcom/android/gallery/ui/FolderViewActivity;->selectedMeta:Lcom/android/gallery/data/FileInfo;

    iget-boolean v3, v4, Lcom/android/gallery/data/BaseMeta;->mIsImage:Z

    .line 368
    .local v3, isImage:Z
    const v4, 0x7f0c007c

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v3, :cond_2

    const v5, 0x7f09001d

    :goto_1
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 369
    const v4, 0x7f0c0075

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v3, :cond_3

    const/4 v5, 0x1

    :goto_2
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 370
    const v4, 0x7f0c0076

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 368
    :cond_2
    const v5, 0x7f09001e

    goto :goto_1

    .line 369
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 453
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 454
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 477
    invoke-static {p1}, Lcom/android/gallery/app/AppHelper;->handleSortOptionsItem(Landroid/view/MenuItem;)I

    move-result v0

    .line 478
    if-eqz v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v1, v0}, Lcom/android/gallery/data/FileBucket;->setSortOrder(I)V

    .line 480
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mAdapter:Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;

    invoke-virtual {v0}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->notifyDataSetChanged()V

    .line 481
    invoke-direct {p0}, Lcom/android/gallery/ui/FolderViewActivity;->refreshUI()V

    move v0, v2

    .line 503
    :goto_0
    return v0

    .line 485
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v3

    .line 503
    goto :goto_0

    .line 487
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    iget-object v1, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v1}, Lcom/android/gallery/data/FileBucket;->isFavorite()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/gallery/data/FileBucket;->setFavorite(Z)V

    .line 488
    invoke-direct {p0}, Lcom/android/gallery/ui/FolderViewActivity;->refreshUI()V

    move v0, v2

    .line 489
    goto :goto_0

    :cond_1
    move v1, v3

    .line 487
    goto :goto_1

    .line 492
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery/ui/GalleryPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/FolderViewActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 494
    goto :goto_0

    .line 497
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/android/gallery/ui/FolderViewActivity;->setEditMode(Z)V

    move v0, v2

    .line 498
    goto :goto_0

    .line 485
    :sswitch_data_0
    .sparse-switch
        0x7f0c0065 -> :sswitch_0
        0x7f0c0070 -> :sswitch_2
        0x7f0c0071 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 150
    invoke-static {}, Lcom/android/gallery/data/BucketExt;->commit()V

    .line 151
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaCache:Lcom/android/gallery/data/MediaCache;

    iget-object v1, p0, Lcom/android/gallery/ui/FolderViewActivity;->mParameter:Lcom/android/gallery/data/NotificationParameter;

    invoke-virtual {v0, v1}, Lcom/android/gallery/data/MediaCache;->unregisterChange(Lcom/android/gallery/data/NotificationParameter;)V

    .line 152
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 460
    iget-boolean v1, p0, Lcom/android/gallery/ui/FolderViewActivity;->mIsEditMode:Z

    if-eqz v1, :cond_0

    move v1, v3

    .line 472
    :goto_0
    return v1

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v1}, Lcom/android/gallery/data/FileBucket;->getSortOrder()I

    move-result v1

    invoke-static {p0, p1, v1}, Lcom/android/gallery/app/AppHelper;->prepareSortOptionsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    .line 464
    iget-object v1, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v1}, Lcom/android/gallery/data/FileBucket;->isFavorite()Z

    move-result v0

    .line 465
    .local v0, isFavorite:Z
    const v1, 0x7f0c0065

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_3

    const v2, 0x7f090028

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_4

    const v2, 0x7f02003e

    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 469
    iget-boolean v1, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_get_content:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_set_wallpaper:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_set_lockscreen:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/gallery/ui/FolderViewActivity;->is_pick_content:Z

    if-eqz v1, :cond_2

    .line 470
    :cond_1
    const v1, 0x7f0c0070

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 472
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 465
    :cond_3
    const v2, 0x7f090029

    goto :goto_1

    :cond_4
    const v2, 0x7f02003d

    goto :goto_2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/16 v0, 0x15

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 128
    invoke-static {v0}, Lcom/android/gallery/data/ThumbnailCacheManager;->setMaxTaskNum(I)V

    .line 129
    invoke-static {v0}, Lcom/android/gallery/data/BaseMeta;->setMaxTaskNum(I)V

    .line 131
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v0}, Lcom/android/gallery/data/FileBucket;->isModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v0}, Lcom/android/gallery/data/FileBucket;->loadAllMedias()V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mAdapter:Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;

    invoke-virtual {v0}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->notifyDataSetChanged()V

    .line 136
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v0}, Lcom/android/gallery/data/FileBucket;->getFileCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderViewActivity;->finish()V

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery/ui/FolderViewActivity;->refreshUI()V

    .line 144
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity;->mMediaCache:Lcom/android/gallery/data/MediaCache;

    iget-object v1, p0, Lcom/android/gallery/ui/FolderViewActivity;->mParameter:Lcom/android/gallery/data/NotificationParameter;

    invoke-virtual {v0, v1}, Lcom/android/gallery/data/MediaCache;->registerChange(Lcom/android/gallery/data/NotificationParameter;)V

    goto :goto_0
.end method
