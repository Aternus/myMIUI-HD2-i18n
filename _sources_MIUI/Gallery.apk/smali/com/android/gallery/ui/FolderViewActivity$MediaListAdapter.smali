.class Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderViewActivity.java"

# interfaces
.implements Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/ui/FolderViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mSelectedImageCount:I

.field public mSelectedVideoCount:I

.field final synthetic this$0:Lcom/android/gallery/ui/FolderViewActivity;


# direct methods
.method public constructor <init>(Lcom/android/gallery/ui/FolderViewActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 512
    iput-object p1, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 509
    iput v0, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mSelectedImageCount:I

    .line 510
    iput v0, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mSelectedVideoCount:I

    .line 513
    iput-object p2, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mContext:Landroid/content/Context;

    .line 514
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 515
    return-void
.end method

.method private updateMark(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "view"
    .parameter "isSelected"

    .prologue
    const/4 v3, 0x0

    .line 556
    const v1, 0x7f0c0046

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 557
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 558
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 560
    const v1, 0x7f0c0045

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 562
    return-void

    .line 557
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 560
    :cond_1
    const/16 v2, 0x8

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;
    invoke-static {v0}, Lcom/android/gallery/ui/FolderViewActivity;->access$1300(Lcom/android/gallery/ui/FolderViewActivity;)Lcom/android/gallery/data/FileBucket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery/data/FileBucket;->getFileCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/gallery/data/BaseMeta;
    .locals 1
    .parameter "position"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;
    invoke-static {v0}, Lcom/android/gallery/ui/FolderViewActivity;->access$1300(Lcom/android/gallery/ui/FolderViewActivity;)Lcom/android/gallery/data/FileBucket;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/FileBucket;->getFileMeta(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 506
    invoke-virtual {p0, p1}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->getItem(I)Lcom/android/gallery/data/BaseMeta;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 583
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

    .line 588
    if-nez p2, :cond_0

    .line 589
    iget-object v5, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030010

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 590
    const v5, 0x7f0c0043

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 591
    .local v2, frame:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 592
    .local v1, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 593
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 596
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v2           #frame:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->getItem(I)Lcom/android/gallery/data/BaseMeta;

    move-result-object v3

    .line 597
    .local v3, meta:Lcom/android/gallery/data/BaseMeta;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 598
    invoke-virtual {v3}, Lcom/android/gallery/data/BaseMeta;->isModified()Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v8

    .line 599
    .local v0, allDataLoaded:Z
    :goto_0
    invoke-virtual {p0, v3, p2}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->onAllDataLoaded(Lcom/android/gallery/data/BaseMeta;Landroid/view/View;)V

    .line 600
    if-nez v0, :cond_1

    .line 601
    invoke-static {v3, p0, p2}, Lcom/android/gallery/data/BaseMeta;->pushLoadAllDataTask(Lcom/android/gallery/data/BaseMeta;Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V

    .line 604
    :cond_1
    add-int/lit8 v4, p1, 0x12

    .line 605
    .local v4, nextPos:I
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 606
    invoke-virtual {p0, v4}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->getItem(I)Lcom/android/gallery/data/BaseMeta;

    move-result-object v3

    .line 607
    invoke-virtual {v3}, Lcom/android/gallery/data/BaseMeta;->isModified()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 608
    invoke-static {v3, v7, v7}, Lcom/android/gallery/data/BaseMeta;->pushLoadAllDataTask(Lcom/android/gallery/data/BaseMeta;Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V

    .line 615
    :cond_2
    :goto_1
    return-object p2

    .line 598
    .end local v0           #allDataLoaded:Z
    .end local v4           #nextPos:I
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 611
    .restart local v0       #allDataLoaded:Z
    .restart local v4       #nextPos:I
    :cond_4
    invoke-static {v3, v8}, Lcom/android/gallery/data/ThumbnailCacheManager;->fetchThumbnail(Lcom/android/gallery/data/BaseMeta;I)V

    goto :goto_1
.end method

.method public isMark(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 565
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 568
    :goto_0
    return v1

    .line 567
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->getItem(I)Lcom/android/gallery/data/BaseMeta;

    move-result-object v0

    .line 568
    .local v0, meta:Lcom/android/gallery/data/BaseMeta;
    iget-boolean v1, v0, Lcom/android/gallery/data/BaseMeta;->mIsSelected:Z

    goto :goto_0
.end method

.method public mark(IZ)V
    .locals 4
    .parameter "position"
    .parameter "isSelected"

    .prologue
    .line 540
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->getItem(I)Lcom/android/gallery/data/BaseMeta;

    move-result-object v1

    .line 543
    .local v1, meta:Lcom/android/gallery/data/BaseMeta;
    iput-boolean p2, v1, Lcom/android/gallery/data/BaseMeta;->mIsSelected:Z

    .line 544
    if-eqz p2, :cond_2

    const/4 v2, 0x1

    move v0, v2

    .line 545
    .local v0, delta:I
    :goto_1
    iget-boolean v2, v1, Lcom/android/gallery/data/BaseMeta;->mIsImage:Z

    if-eqz v2, :cond_3

    .line 546
    iget v2, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mSelectedImageCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mSelectedImageCount:I

    .line 551
    :goto_2
    iget-object v2, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->mGrid:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/android/gallery/ui/FolderViewActivity;->access$1100(Lcom/android/gallery/ui/FolderViewActivity;)Landroid/widget/GridView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->mGrid:Landroid/widget/GridView;
    invoke-static {v3}, Lcom/android/gallery/ui/FolderViewActivity;->access$1100(Lcom/android/gallery/ui/FolderViewActivity;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->updateMark(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 552
    iget-object v2, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #calls: Lcom/android/gallery/ui/FolderViewActivity;->updateEditmodeHint()V
    invoke-static {v2}, Lcom/android/gallery/ui/FolderViewActivity;->access$1200(Lcom/android/gallery/ui/FolderViewActivity;)V

    goto :goto_0

    .line 544
    .end local v0           #delta:I
    :cond_2
    const/4 v2, -0x1

    move v0, v2

    goto :goto_1

    .line 548
    .restart local v0       #delta:I
    :cond_3
    iget v2, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mSelectedVideoCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mSelectedVideoCount:I

    goto :goto_2
.end method

.method public markAll(Z)V
    .locals 5
    .parameter "isSelected"

    .prologue
    const/4 v3, 0x0

    .line 518
    iput v3, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mSelectedImageCount:I

    .line 519
    iput v3, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mSelectedVideoCount:I

    .line 520
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->getCount()I

    move-result v0

    .line 521
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 522
    invoke-virtual {p0, v1}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->getItem(I)Lcom/android/gallery/data/BaseMeta;

    move-result-object v2

    .line 523
    .local v2, meta:Lcom/android/gallery/data/BaseMeta;
    iput-boolean p1, v2, Lcom/android/gallery/data/BaseMeta;->mIsSelected:Z

    .line 524
    if-eqz p1, :cond_0

    .line 525
    iget-boolean v3, v2, Lcom/android/gallery/data/BaseMeta;->mIsImage:Z

    if-eqz v3, :cond_1

    .line 526
    iget v3, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mSelectedImageCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mSelectedImageCount:I

    .line 521
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    :cond_1
    iget v3, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mSelectedVideoCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->mSelectedVideoCount:I

    goto :goto_1

    .line 533
    .end local v2           #meta:Lcom/android/gallery/data/BaseMeta;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->mGrid:Landroid/widget/GridView;
    invoke-static {v3}, Lcom/android/gallery/ui/FolderViewActivity;->access$1100(Lcom/android/gallery/ui/FolderViewActivity;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    :goto_2
    if-ltz v1, :cond_3

    .line 534
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->mGrid:Landroid/widget/GridView;
    invoke-static {v3}, Lcom/android/gallery/ui/FolderViewActivity;->access$1100(Lcom/android/gallery/ui/FolderViewActivity;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->updateMark(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 533
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 536
    :cond_3
    iget-object v3, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #calls: Lcom/android/gallery/ui/FolderViewActivity;->updateEditmodeHint()V
    invoke-static {v3}, Lcom/android/gallery/ui/FolderViewActivity;->access$1200(Lcom/android/gallery/ui/FolderViewActivity;)V

    .line 537
    return-void
.end method

.method public onAllDataLoaded(Lcom/android/gallery/data/BaseMeta;Landroid/view/View;)V
    .locals 11
    .parameter "meta"
    .parameter "convertView"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 620
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 621
    .local v2, position:I
    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->getItem(I)Lcom/android/gallery/data/BaseMeta;

    move-result-object v6

    if-eq p1, v6, :cond_0

    .line 650
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v6, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->mIsEditMode:Z
    invoke-static {v6}, Lcom/android/gallery/ui/FolderViewActivity;->access$900(Lcom/android/gallery/ui/FolderViewActivity;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p1, Lcom/android/gallery/data/BaseMeta;->mIsSelected:Z

    if-eqz v6, :cond_3

    move v3, v9

    .line 625
    .local v3, selected:Z
    :goto_1
    const v6, 0x7f0c0046

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 626
    .local v0, checkbox:Landroid/widget/CheckBox;
    if-eqz v3, :cond_4

    move v6, v8

    :goto_2
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 627
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 629
    const v6, 0x7f0c0045

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v3, :cond_5

    move v7, v8

    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 633
    const v6, 0x7f0c0047

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 634
    .local v5, t:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    #getter for: Lcom/android/gallery/ui/FolderViewActivity;->mMediaBucket:Lcom/android/gallery/data/FileBucket;
    invoke-static {v6}, Lcom/android/gallery/ui/FolderViewActivity;->access$1300(Lcom/android/gallery/ui/FolderViewActivity;)Lcom/android/gallery/data/FileBucket;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery/data/FileBucket;->getSortOrder()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 635
    .local v4, sortOrder:I
    if-ne v4, v9, :cond_6

    .line 636
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 637
    iget-object v6, p1, Lcom/android/gallery/data/BaseMeta;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    :cond_1
    :goto_4
    const v6, 0x7f0c0044

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery/view/AutoFitImageView;

    .line 646
    .local v1, i:Lcom/android/gallery/view/AutoFitImageView;
    invoke-virtual {p1}, Lcom/android/gallery/data/BaseMeta;->isModified()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 647
    const/4 p1, 0x0

    .line 649
    :cond_2
    iget-object v6, p0, Lcom/android/gallery/ui/FolderViewActivity$MediaListAdapter;->this$0:Lcom/android/gallery/ui/FolderViewActivity;

    invoke-virtual {v6}, Lcom/android/gallery/ui/FolderViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, p1, v6}, Lcom/android/gallery/view/AutoFitImageView;->setMeta(Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v1           #i:Lcom/android/gallery/view/AutoFitImageView;
    .end local v3           #selected:Z
    .end local v4           #sortOrder:I
    .end local v5           #t:Landroid/widget/TextView;
    :cond_3
    move v3, v8

    .line 623
    goto :goto_1

    .line 626
    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    .restart local v3       #selected:Z
    :cond_4
    const/4 v6, 0x4

    goto :goto_2

    :cond_5
    move v7, v10

    .line 629
    goto :goto_3

    .line 638
    .restart local v4       #sortOrder:I
    .restart local v5       #t:Landroid/widget/TextView;
    :cond_6
    const/4 v6, 0x2

    if-ne v4, v6, :cond_7

    .line 639
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 640
    :cond_7
    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    .line 641
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 642
    iget-wide v6, p1, Lcom/android/gallery/data/BaseMeta;->mSize:J

    invoke-static {v6, v7}, Lcom/android/gallery/util/Utils;->getFormatedSizeString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method
