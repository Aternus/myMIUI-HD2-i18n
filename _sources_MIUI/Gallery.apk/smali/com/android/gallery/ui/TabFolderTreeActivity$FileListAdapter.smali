.class public Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TabFolderTreeActivity.java"

# interfaces
.implements Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/ui/TabFolderTreeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileListAdapter"
.end annotation


# instance fields
.field private mFolderIcon:Landroid/graphics/drawable/Drawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/TabFolderTreeActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 702
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 706
    invoke-virtual {p1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->mFolderIcon:Landroid/graphics/drawable/Drawable;

    .line 707
    return-void
.end method

.method private getBriefText(Lcom/android/gallery/data/DirInfo;)Ljava/lang/String;
    .locals 8
    .parameter "info"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, ", "

    .line 830
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 832
    .local v0, result:Ljava/lang/StringBuffer;
    iget v1, p1, Lcom/android/gallery/data/DirInfo;->mFolderCount:I

    if-lez v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    const v2, 0x7f090040

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p1, Lcom/android/gallery/data/DirInfo;->mFolderCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 836
    :cond_0
    iget v1, p1, Lcom/android/gallery/data/DirInfo;->mImageCount:I

    if-lez v1, :cond_2

    .line 837
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 838
    const-string v1, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 840
    :cond_1
    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    const v2, 0x7f090041

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p1, Lcom/android/gallery/data/DirInfo;->mImageCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 843
    :cond_2
    iget v1, p1, Lcom/android/gallery/data/DirInfo;->mVideoCount:I

    if-lez v1, :cond_4

    .line 844
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 845
    const-string v1, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 847
    :cond_3
    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    const v2, 0x7f09003f

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p1, Lcom/android/gallery/data/DirInfo;->mVideoCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 850
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    #getter for: Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;
    invoke-static {v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->access$400(Lcom/android/gallery/ui/TabFolderTreeActivity;)Lcom/android/gallery/data/FileBucket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery/data/FileBucket;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/gallery/data/FileInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    #getter for: Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;
    invoke-static {v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->access$400(Lcom/android/gallery/ui/TabFolderTreeActivity;)Lcom/android/gallery/data/FileBucket;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/FileBucket;->getMeta(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 699
    invoke-virtual {p0, p1}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->getItem(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 721
    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    #getter for: Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;
    invoke-static {v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->access$400(Lcom/android/gallery/ui/TabFolderTreeActivity;)Lcom/android/gallery/data/FileBucket;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery/data/FileBucket;->getMeta(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    .line 722
    .local v0, object:Lcom/android/gallery/data/FileInfo;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 732
    if-nez p2, :cond_0

    .line 733
    iget-object v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030006

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 735
    const v4, 0x7f0c0010

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 736
    .local v3, previewRegion:Landroid/widget/FrameLayout;
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->mFolderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 737
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->mFolderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 740
    .end local v3           #previewRegion:Landroid/widget/FrameLayout;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 741
    iget-object v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    #getter for: Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;
    invoke-static {v4}, Lcom/android/gallery/ui/TabFolderTreeActivity;->access$400(Lcom/android/gallery/ui/TabFolderTreeActivity;)Lcom/android/gallery/data/FileBucket;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/gallery/data/FileBucket;->getMeta(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v1

    .line 742
    .local v1, fileInfo:Lcom/android/gallery/data/FileInfo;
    invoke-virtual {v1}, Lcom/android/gallery/data/FileInfo;->isModified()Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v7

    .line 743
    .local v0, allDataLoaded:Z
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->onAllDataLoaded(Lcom/android/gallery/data/BaseMeta;Landroid/view/View;)V

    .line 744
    if-nez v0, :cond_1

    .line 745
    invoke-static {v1, p0, p2}, Lcom/android/gallery/data/BaseMeta;->pushLoadAllDataTask(Lcom/android/gallery/data/BaseMeta;Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V

    .line 748
    :cond_1
    add-int/lit8 v2, p1, 0x7

    .line 749
    .local v2, nextPos:I
    invoke-virtual {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 750
    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->getItem(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v1

    .line 751
    invoke-virtual {v1}, Lcom/android/gallery/data/FileInfo;->isModified()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 752
    invoke-static {v1, v8, v8}, Lcom/android/gallery/data/BaseMeta;->pushLoadAllDataTask(Lcom/android/gallery/data/BaseMeta;Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V

    .line 759
    :cond_2
    :goto_1
    return-object p2

    .end local v0           #allDataLoaded:Z
    .end local v2           #nextPos:I
    :cond_3
    move v0, v6

    .line 742
    goto :goto_0

    .line 755
    .restart local v0       #allDataLoaded:Z
    .restart local v2       #nextPos:I
    :cond_4
    invoke-static {v1, v7}, Lcom/android/gallery/data/ThumbnailCacheManager;->fetchThumbnail(Lcom/android/gallery/data/BaseMeta;I)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x1

    return v0
.end method

.method public onAllDataLoaded(Lcom/android/gallery/data/BaseMeta;Landroid/view/View;)V
    .locals 17
    .parameter "meta"
    .parameter "convertView"

    .prologue
    .line 764
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 765
    .local v9, position:I
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->getItem(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v14

    move-object/from16 v0, p1

    move-object v1, v14

    if-eq v0, v1, :cond_0

    .line 827
    :goto_0
    return-void

    .line 767
    :cond_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/gallery/data/FileInfo;

    move-object v6, v0

    .line 768
    .local v6, fileInfo:Lcom/android/gallery/data/FileInfo;
    const v14, 0x7f0c0013

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 769
    .local v8, name:Landroid/widget/TextView;
    iget-object v14, v6, Lcom/android/gallery/data/FileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    invoke-virtual {v6}, Lcom/android/gallery/data/FileInfo;->isDir()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 772
    iget-object v14, v6, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/gallery/data/BucketExt;->getBucketExtData(Ljava/lang/String;)Lcom/android/gallery/data/BucketExt$BucketExtData;

    move-result-object v3

    .line 773
    .local v3, data:Lcom/android/gallery/data/BucketExt$BucketExtData;
    const v14, 0x7f0c0015

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/gallery/data/BucketExt$BucketExtData;->isFavorite()Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 780
    .end local v3           #data:Lcom/android/gallery/data/BucketExt$BucketExtData;
    :goto_2
    invoke-virtual {v6}, Lcom/android/gallery/data/FileInfo;->isDir()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 781
    move-object v0, v6

    check-cast v0, Lcom/android/gallery/data/DirInfo;

    move-object v4, v0

    .line 782
    .local v4, dirInfo:Lcom/android/gallery/data/DirInfo;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->getBriefText(Lcom/android/gallery/data/DirInfo;)Ljava/lang/String;

    move-result-object v12

    .line 783
    .local v12, text:Ljava/lang/String;
    const v14, 0x7f0c0014

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 784
    .local v7, infoView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 785
    const/16 v14, 0x8

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 791
    :goto_3
    const v14, 0x7f0c0010

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 792
    .local v11, previewRegion:Landroid/widget/FrameLayout;
    const v14, 0x7f0c0011

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/gallery/view/AutoFitImageView;

    .line 793
    .local v10, previewImage:Lcom/android/gallery/view/AutoFitImageView;
    invoke-virtual {v4}, Lcom/android/gallery/data/DirInfo;->getCover()Lcom/android/gallery/data/BaseMeta;

    move-result-object v2

    .line 794
    .local v2, cover:Lcom/android/gallery/data/BaseMeta;
    if-eqz v2, :cond_5

    .line 795
    const v14, 0x7f020032

    invoke-virtual {v11, v14}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 796
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/android/gallery/view/AutoFitImageView;->setVisibility(I)V

    .line 797
    invoke-virtual {v2}, Lcom/android/gallery/data/BaseMeta;->isModified()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 798
    const/4 v2, 0x0

    .line 800
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020033

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v10, v2, v14}, Lcom/android/gallery/view/AutoFitImageView;->setMeta(Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 773
    .end local v2           #cover:Lcom/android/gallery/data/BaseMeta;
    .end local v4           #dirInfo:Lcom/android/gallery/data/DirInfo;
    .end local v7           #infoView:Landroid/widget/TextView;
    .end local v10           #previewImage:Lcom/android/gallery/view/AutoFitImageView;
    .end local v11           #previewRegion:Landroid/widget/FrameLayout;
    .end local v12           #text:Ljava/lang/String;
    .restart local v3       #data:Lcom/android/gallery/data/BucketExt$BucketExtData;
    :cond_2
    const/16 v15, 0x8

    goto :goto_1

    .line 777
    .end local v3           #data:Lcom/android/gallery/data/BucketExt$BucketExtData;
    :cond_3
    const v14, 0x7f0c0015

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 787
    .restart local v4       #dirInfo:Lcom/android/gallery/data/DirInfo;
    .restart local v7       #infoView:Landroid/widget/TextView;
    .restart local v12       #text:Ljava/lang/String;
    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 788
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 802
    .restart local v2       #cover:Lcom/android/gallery/data/BaseMeta;
    .restart local v10       #previewImage:Lcom/android/gallery/view/AutoFitImageView;
    .restart local v11       #previewRegion:Landroid/widget/FrameLayout;
    :cond_5
    const v14, 0x7f020021

    invoke-virtual {v11, v14}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 803
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Lcom/android/gallery/view/AutoFitImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 806
    .end local v2           #cover:Lcom/android/gallery/data/BaseMeta;
    .end local v4           #dirInfo:Lcom/android/gallery/data/DirInfo;
    .end local v7           #infoView:Landroid/widget/TextView;
    .end local v10           #previewImage:Lcom/android/gallery/view/AutoFitImageView;
    .end local v11           #previewRegion:Landroid/widget/FrameLayout;
    .end local v12           #text:Ljava/lang/String;
    :cond_6
    const v14, 0x7f0c0014

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 807
    .local v13, txtView:Landroid/widget/TextView;
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    move-object v15, v0

    #getter for: Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;
    invoke-static {v15}, Lcom/android/gallery/ui/TabFolderTreeActivity;->access$400(Lcom/android/gallery/ui/TabFolderTreeActivity;)Lcom/android/gallery/data/FileBucket;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/gallery/data/FileBucket;->getSortOrder()I

    move-result v15

    if-ne v14, v15, :cond_8

    .line 808
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 809
    const-string v14, "yyyy-MM-dd kk:mm"

    iget-wide v15, v6, Lcom/android/gallery/data/BaseMeta;->mDateModified:J

    invoke-static/range {v14 .. v16}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    :goto_4
    const v14, 0x7f0c0010

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 818
    .restart local v11       #previewRegion:Landroid/widget/FrameLayout;
    const v14, 0x7f020043

    invoke-virtual {v11, v14}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 820
    const v14, 0x7f0c0011

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/gallery/view/AutoFitImageView;

    .line 821
    .local v5, fileImage:Lcom/android/gallery/view/AutoFitImageView;
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/android/gallery/view/AutoFitImageView;->setVisibility(I)V

    .line 822
    invoke-virtual {v6}, Lcom/android/gallery/data/FileInfo;->isModified()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 823
    const/4 v6, 0x0

    .line 825
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020044

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v5, v6, v14}, Lcom/android/gallery/view/AutoFitImageView;->setMeta(Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 810
    .end local v5           #fileImage:Lcom/android/gallery/view/AutoFitImageView;
    .end local v11           #previewRegion:Landroid/widget/FrameLayout;
    :cond_8
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->this$0:Lcom/android/gallery/ui/TabFolderTreeActivity;

    move-object v15, v0

    #getter for: Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;
    invoke-static {v15}, Lcom/android/gallery/ui/TabFolderTreeActivity;->access$400(Lcom/android/gallery/ui/TabFolderTreeActivity;)Lcom/android/gallery/data/FileBucket;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/gallery/data/FileBucket;->getSortOrder()I

    move-result v15

    if-ne v14, v15, :cond_9

    .line 811
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 812
    iget-wide v14, v6, Lcom/android/gallery/data/BaseMeta;->mSize:J

    invoke-static {v14, v15}, Lcom/android/gallery/util/Utils;->getFormatedSizeString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 814
    :cond_9
    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method
