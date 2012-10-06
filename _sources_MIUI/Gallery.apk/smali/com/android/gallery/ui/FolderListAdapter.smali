.class public Lcom/android/gallery/ui/FolderListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderListAdapter.java"

# interfaces
.implements Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMediaBuckets:Lcom/android/gallery/data/GlobalBucket;

.field private mPrefetchCount:I

.field private mShowFavoriteOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1
    .parameter "context"
    .parameter "prefetchCount"
    .parameter "sortOrder"
    .parameter "showFavoriteOnly"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/gallery/ui/FolderListAdapter;->mContext:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/FolderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    iput p2, p0, Lcom/android/gallery/ui/FolderListAdapter;->mPrefetchCount:I

    .line 32
    iput-boolean p4, p0, Lcom/android/gallery/ui/FolderListAdapter;->mShowFavoriteOnly:Z

    .line 34
    invoke-static {}, Lcom/android/gallery/data/GlobalBucket;->getInstance()Lcom/android/gallery/data/GlobalBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/FolderListAdapter;->mMediaBuckets:Lcom/android/gallery/data/GlobalBucket;

    .line 35
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListAdapter;->mMediaBuckets:Lcom/android/gallery/data/GlobalBucket;

    invoke-virtual {v0, p3}, Lcom/android/gallery/data/GlobalBucket;->setSortOrder(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListAdapter;->mMediaBuckets:Lcom/android/gallery/data/GlobalBucket;

    invoke-virtual {v0}, Lcom/android/gallery/data/GlobalBucket;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListAdapter;->mMediaBuckets:Lcom/android/gallery/data/GlobalBucket;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/GlobalBucket;->getItem(I)Lcom/android/gallery/data/DirInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 77
    if-nez p2, :cond_0

    .line 78
    iget-object v5, p0, Lcom/android/gallery/ui/FolderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03000e

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    const v5, 0x7f0c003f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 80
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 81
    .local v1, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/android/gallery/ui/FolderListAdapter;->mMediaBuckets:Lcom/android/gallery/data/GlobalBucket;

    invoke-virtual {v5, p1}, Lcom/android/gallery/data/GlobalBucket;->getItem(I)Lcom/android/gallery/data/DirInfo;

    move-result-object v2

    .line 86
    .local v2, bucket:Lcom/android/gallery/data/DirInfo;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v2}, Lcom/android/gallery/data/DirInfo;->isModified()Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v8

    .line 88
    .local v0, allDataLoaded:Z
    :goto_0
    invoke-virtual {p0, v2, p2}, Lcom/android/gallery/ui/FolderListAdapter;->onAllDataLoaded(Lcom/android/gallery/data/BaseMeta;Landroid/view/View;)V

    .line 89
    if-nez v0, :cond_1

    .line 90
    invoke-static {v2, p0, p2}, Lcom/android/gallery/data/BaseMeta;->pushLoadAllDataTask(Lcom/android/gallery/data/BaseMeta;Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V

    .line 93
    :cond_1
    iget v5, p0, Lcom/android/gallery/ui/FolderListAdapter;->mPrefetchCount:I

    add-int v3, p1, v5

    .line 94
    .local v3, nextPos:I
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 95
    iget-object v5, p0, Lcom/android/gallery/ui/FolderListAdapter;->mMediaBuckets:Lcom/android/gallery/data/GlobalBucket;

    invoke-virtual {v5, v3}, Lcom/android/gallery/data/GlobalBucket;->getItem(I)Lcom/android/gallery/data/DirInfo;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/android/gallery/data/DirInfo;->isModified()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 97
    invoke-static {v2, v7, v7}, Lcom/android/gallery/data/BaseMeta;->pushLoadAllDataTask(Lcom/android/gallery/data/BaseMeta;Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V

    .line 104
    :cond_2
    :goto_1
    return-object p2

    .line 87
    .end local v0           #allDataLoaded:Z
    .end local v3           #nextPos:I
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 100
    .restart local v0       #allDataLoaded:Z
    .restart local v3       #nextPos:I
    :cond_4
    invoke-static {v2, v8}, Lcom/android/gallery/data/ThumbnailCacheManager;->fetchThumbnail(Lcom/android/gallery/data/BaseMeta;I)V

    goto :goto_1
.end method

.method public onAllDataLoaded(Lcom/android/gallery/data/BaseMeta;Landroid/view/View;)V
    .locals 11
    .parameter "meta"
    .parameter "convertView"

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 110
    .local v6, position:I
    invoke-virtual {p0, v6}, Lcom/android/gallery/ui/FolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    if-eq p1, v8, :cond_0

    .line 142
    :goto_0
    return-void

    .line 112
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/gallery/data/DirInfo;

    move-object v2, v0

    .line 113
    .local v2, bucket:Lcom/android/gallery/data/DirInfo;
    invoke-virtual {v2}, Lcom/android/gallery/data/DirInfo;->isHidden()Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x64

    move v1, v8

    .line 116
    .local v1, alpha:I
    :goto_1
    const v8, 0x7f0c0040

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 117
    .local v5, indicator:Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/android/gallery/data/DirInfo;->isCamera()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 118
    const v8, 0x7f020012

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 126
    const v8, 0x7f0c0041

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 127
    .local v7, t:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/gallery/ui/FolderListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/android/gallery/data/DirInfo;->getTilte(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 131
    const v8, 0x7f0c0042

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #t:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 132
    .restart local v7       #t:Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/gallery/data/DirInfo;->mImageCount:I

    iget v10, v2, Lcom/android/gallery/data/DirInfo;->mVideoCount:I

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 135
    invoke-virtual {v2}, Lcom/android/gallery/data/DirInfo;->getCover()Lcom/android/gallery/data/BaseMeta;

    move-result-object v3

    .line 136
    .local v3, cover:Lcom/android/gallery/data/BaseMeta;
    const v8, 0x7f0c003f

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/gallery/view/AutoFitImageView;

    .line 137
    .local v4, i:Lcom/android/gallery/view/AutoFitImageView;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/gallery/data/BaseMeta;->isModified()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 138
    const/4 v3, 0x0

    .line 140
    :cond_1
    iget-object v8, p0, Lcom/android/gallery/ui/FolderListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02002b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v3, v8}, Lcom/android/gallery/view/AutoFitImageView;->setMeta(Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;)V

    .line 141
    invoke-virtual {v4, v1}, Lcom/android/gallery/view/AutoFitImageView;->setAlpha(I)V

    goto/16 :goto_0

    .line 113
    .end local v1           #alpha:I
    .end local v3           #cover:Lcom/android/gallery/data/BaseMeta;
    .end local v4           #i:Lcom/android/gallery/view/AutoFitImageView;
    .end local v5           #indicator:Landroid/widget/ImageView;
    .end local v7           #t:Landroid/widget/TextView;
    :cond_2
    const/16 v8, 0xff

    move v1, v8

    goto/16 :goto_1

    .line 120
    .restart local v1       #alpha:I
    .restart local v5       #indicator:Landroid/widget/ImageView;
    :cond_3
    iget-boolean v8, p0, Lcom/android/gallery/ui/FolderListAdapter;->mShowFavoriteOnly:Z

    if-nez v8, :cond_4

    invoke-virtual {v2}, Lcom/android/gallery/data/DirInfo;->isFavorite()Z

    move-result v8

    if-eqz v8, :cond_4

    const v8, 0x7f020020

    :goto_3
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_4
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListAdapter;->mMediaBuckets:Lcom/android/gallery/data/GlobalBucket;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/GlobalBucket;->removeItem(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListAdapter;->notifyDataSetChanged()V

    .line 58
    return-void
.end method

.method public resetData()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListAdapter;->mMediaBuckets:Lcom/android/gallery/data/GlobalBucket;

    iget-boolean v1, p0, Lcom/android/gallery/ui/FolderListAdapter;->mShowFavoriteOnly:Z

    invoke-virtual {v0, v1}, Lcom/android/gallery/data/GlobalBucket;->setFilterFavorite(Z)Z

    .line 40
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListAdapter;->mMediaBuckets:Lcom/android/gallery/data/GlobalBucket;

    sget-boolean v1, Lcom/android/gallery/util/PreferenceHelper;->sShowHiddenAlbum:Z

    invoke-virtual {v0, v1}, Lcom/android/gallery/data/GlobalBucket;->setFilterHidden(Z)Z

    .line 41
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListAdapter;->mMediaBuckets:Lcom/android/gallery/data/GlobalBucket;

    invoke-virtual {v0}, Lcom/android/gallery/data/GlobalBucket;->loadAllMedias()V

    .line 42
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListAdapter;->notifyDataSetChanged()V

    .line 43
    return-void
.end method

.method public setSortOrder(I)V
    .locals 1
    .parameter "sortOrder"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListAdapter;->mMediaBuckets:Lcom/android/gallery/data/GlobalBucket;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/GlobalBucket;->setSortOrder(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListAdapter;->notifyDataSetChanged()V

    .line 147
    return-void
.end method

.method public toggleFavorite(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListAdapter;->mMediaBuckets:Lcom/android/gallery/data/GlobalBucket;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/GlobalBucket;->toggleFavorite(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListAdapter;->notifyDataSetChanged()V

    .line 48
    return-void
.end method

.method public toggleHidden(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListAdapter;->mMediaBuckets:Lcom/android/gallery/data/GlobalBucket;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/GlobalBucket;->toggleHidden(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListAdapter;->notifyDataSetChanged()V

    .line 53
    return-void
.end method
