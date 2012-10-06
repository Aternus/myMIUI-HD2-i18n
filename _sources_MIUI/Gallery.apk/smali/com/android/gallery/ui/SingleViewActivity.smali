.class public Lcom/android/gallery/ui/SingleViewActivity;
.super Landroid/app/Activity;
.source "SingleViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;,
        Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;,
        Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;,
        Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;,
        Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;
    }
.end annotation


# instance fields
.field private mApplyListAdapter:Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;

.field private mAutoFullscreenRunnable:Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;

.field private mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfos:[Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;

.field private mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

.field private mIsFirstRefreshUI:Z

.field private mMode:I

.field private mNavigatedItemCount:I

.field private mNavigatedItemCountInSlideShow:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mSendListAdapter:Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;

.field private mShowMenuType:I

.field private mSlideShowRunnable:Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;

.field private mSlideshowInterval:I

.field private mSlideshowRepeatMode:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    iput-object v1, p0, Lcom/android/gallery/ui/SingleViewActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 78
    iput-boolean v5, p0, Lcom/android/gallery/ui/SingleViewActivity;->mIsFirstRefreshUI:Z

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mHandler:Landroid/os/Handler;

    .line 329
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mShowMenuType:I

    .line 604
    new-instance v0, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;-><init>(Lcom/android/gallery/ui/SingleViewActivity;Lcom/android/gallery/ui/SingleViewActivity$1;)V

    iput-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mAutoFullscreenRunnable:Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;

    .line 631
    new-instance v0, Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;-><init>(Lcom/android/gallery/ui/SingleViewActivity;Lcom/android/gallery/ui/SingleViewActivity$1;)V

    iput-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mSlideShowRunnable:Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;

    .line 670
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;

    const v3, 0x7f020003

    const v4, 0x7f090059

    invoke-direct {v2, v3, v4}, Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;-><init>(II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;

    const v2, 0x7f020004

    const v3, 0x7f090058

    invoke-direct {v1, v2, v3}, Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;-><init>(II)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;

    const/high16 v3, 0x7f02

    const v4, 0x7f09005a

    invoke-direct {v2, v3, v4}, Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;-><init>(II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInfos:[Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;

    .line 730
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery/ui/SingleViewActivity;)Lcom/android/gallery/ui/ISingleViewInteraction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery/ui/SingleViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery/ui/SingleViewActivity;->refreshIndexIndicator()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery/ui/SingleViewActivity;)Lcom/android/gallery/view/ImageNavigatorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery/ui/SingleViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mSlideshowRepeatMode:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery/ui/SingleViewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mSlideshowInterval:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery/ui/SingleViewActivity;)[Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInfos:[Lcom/android/gallery/ui/SingleViewActivity$ApplyListItemInfo;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery/ui/SingleViewActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery/ui/SingleViewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mMode:I

    return v0
.end method

.method static synthetic access$308(Lcom/android/gallery/ui/SingleViewActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mNavigatedItemCountInSlideShow:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/gallery/ui/SingleViewActivity;->mNavigatedItemCountInSlideShow:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/gallery/ui/SingleViewActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mNavigatedItemCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/gallery/ui/SingleViewActivity;->mNavigatedItemCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery/ui/SingleViewActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery/ui/SingleViewActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/gallery/ui/SingleViewActivity;->setMode(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery/ui/SingleViewActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getMediaPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v8, 0x1

    .line 155
    const/4 v6, 0x0

    .line 156
    .local v6, c:Landroid/database/Cursor;
    const-string v7, ""

    .line 158
    .local v7, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 165
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 170
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_1
    :goto_0
    return-object v7

    .line 168
    :catch_0
    move-exception v0

    .line 170
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private initInteractionHub()V
    .locals 10

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 119
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 120
    .local v7, uri:Landroid/net/Uri;
    if-nez v7, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-static {v7}, Lcom/android/gallery/app/AppHelper;->isFileUri(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 123
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, decodedPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    move v5, v8

    .line 126
    .local v5, isValidUri:Z
    :goto_1
    if-eqz v5, :cond_0

    .line 131
    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Lcom/android/gallery/util/StorageUtils;->getFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v3, folderInfo:Ljava/io/File;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_3

    .line 135
    new-instance v8, Lcom/android/gallery/ui/NormalSingleViewInteraction;

    invoke-direct {v8, p0, v7}, Lcom/android/gallery/ui/NormalSingleViewInteraction;-><init>(Lcom/android/gallery/ui/SingleViewActivity;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    goto :goto_0

    .line 125
    .end local v3           #folderInfo:Ljava/io/File;
    .end local v5           #isValidUri:Z
    :cond_2
    const/4 v8, 0x0

    move v5, v8

    goto :goto_1

    .line 138
    .restart local v3       #folderInfo:Ljava/io/File;
    .restart local v5       #isValidUri:Z
    :cond_3
    new-instance v8, Lcom/android/gallery/ui/FileSingleViewInteraction;

    invoke-direct {v8, p0, v1}, Lcom/android/gallery/ui/FileSingleViewInteraction;-><init>(Lcom/android/gallery/ui/SingleViewActivity;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    goto :goto_0

    .line 140
    .end local v1           #decodedPath:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #folderInfo:Ljava/io/File;
    .end local v5           #isValidUri:Z
    :cond_4
    const-string v8, "media"

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 141
    invoke-direct {p0, v7}, Lcom/android/gallery/ui/SingleViewActivity;->getMediaPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, path:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 143
    new-instance v0, Lcom/android/gallery/data/UriBucket;

    invoke-direct {v0, p0, v7}, Lcom/android/gallery/data/UriBucket;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 144
    .local v0, bucket:Lcom/android/gallery/data/UriBucket;
    new-instance v8, Lcom/android/gallery/ui/FileSingleViewInteraction;

    invoke-direct {v8, p0, v0}, Lcom/android/gallery/ui/FileSingleViewInteraction;-><init>(Lcom/android/gallery/ui/SingleViewActivity;Lcom/android/gallery/data/FileBucket;)V

    iput-object v8, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    goto :goto_0

    .line 147
    .end local v0           #bucket:Lcom/android/gallery/data/UriBucket;
    :cond_5
    new-instance v8, Lcom/android/gallery/ui/FileSingleViewInteraction;

    invoke-direct {v8, p0, v6}, Lcom/android/gallery/ui/FileSingleViewInteraction;-><init>(Lcom/android/gallery/ui/SingleViewActivity;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    goto :goto_0

    .line 150
    .end local v6           #path:Ljava/lang/String;
    :cond_6
    new-instance v8, Lcom/android/gallery/ui/NormalSingleViewInteraction;

    invoke-direct {v8, p0, v7}, Lcom/android/gallery/ui/NormalSingleViewInteraction;-><init>(Lcom/android/gallery/ui/SingleViewActivity;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    goto :goto_0
.end method

.method private refreshIndexIndicator()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 438
    iget-object v3, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    invoke-virtual {v3}, Lcom/android/gallery/view/ImageNavigatorView;->getCount()I

    move-result v0

    .line 439
    .local v0, count:I
    iget-object v3, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    invoke-virtual {v3}, Lcom/android/gallery/view/ImageNavigatorView;->getSelectedItemPosition()I

    move-result v1

    .line 441
    .local v1, position:I
    const v3, 0x7f0c005a

    invoke-virtual {p0, v3}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-lez v1, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 442
    const v3, 0x7f0c005c

    invoke-virtual {p0, v3}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    sub-int v4, v0, v4

    if-ge v1, v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 445
    const v3, 0x7f0c005d

    invoke-virtual {p0, v3}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 446
    .local v2, t:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    return-void

    .end local v2           #t:Landroid/widget/TextView;
    :cond_0
    move v4, v6

    .line 441
    goto :goto_0

    :cond_1
    move v4, v6

    .line 442
    goto :goto_1
.end method

.method private setMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const v5, 0x7f0c0057

    const/16 v4, 0x400

    const/16 v1, 0x80

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 493
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->dismissPopupWindow()V

    .line 494
    packed-switch p1, :pswitch_data_0

    .line 525
    :goto_0
    iput p1, p0, Lcom/android/gallery/ui/SingleViewActivity;->mMode:I

    .line 526
    return-void

    .line 496
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 497
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 498
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    invoke-virtual {v0, v3}, Lcom/android/gallery/view/ImageNavigatorView;->setTransitionType(I)V

    .line 499
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/android/gallery/view/ImageNavigatorView;->setAnimationDuration(I)V

    .line 500
    invoke-virtual {p0, v5}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 501
    const v0, 0x7f0c0058

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 505
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 506
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 507
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    invoke-virtual {v0, v3}, Lcom/android/gallery/view/ImageNavigatorView;->setTransitionType(I)V

    .line 508
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/android/gallery/view/ImageNavigatorView;->setAnimationDuration(I)V

    .line 509
    invoke-virtual {p0, v5}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 510
    const v0, 0x7f0c0058

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    invoke-virtual {v1}, Lcom/android/gallery/ui/ISingleViewInteraction;->isSingleView()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 515
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 516
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 517
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    invoke-static {p0}, Lcom/android/gallery/util/PreferenceHelper;->getSlideshowAnimation(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery/view/ImageNavigatorView;->setTransitionType(I)V

    .line 518
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    const/16 v1, 0x4b0

    invoke-virtual {v0, v1}, Lcom/android/gallery/view/ImageNavigatorView;->setAnimationDuration(I)V

    .line 519
    invoke-virtual {p0, v5}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 520
    const v0, 0x7f0c0058

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mSlideShowRunnable:Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;

    invoke-virtual {v0}, Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;->post()V

    goto/16 :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setupClickEvents()V
    .locals 1

    .prologue
    .line 177
    const v0, 0x7f0c005e

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v0, 0x7f0c005f

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v0, 0x7f0c0060

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v0, 0x7f0c0061

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v0, 0x7f0c0059

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v0, 0x7f0c005b

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v0, 0x7f0c005a

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-void
.end method

.method private setupFullImageGallery()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    if-nez v0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    iget-object v1, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    invoke-virtual {v0, v1}, Lcom/android/gallery/ui/ISingleViewInteraction;->setAdapter(Landroid/widget/Gallery;)V

    .line 453
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    invoke-virtual {v0}, Lcom/android/gallery/ui/ISingleViewInteraction;->isSingleView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery/view/ImageNavigatorView;->setOverScrollRatio(F)V

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    new-instance v1, Lcom/android/gallery/ui/SingleViewActivity$1;

    invoke-direct {v1, p0}, Lcom/android/gallery/ui/SingleViewActivity$1;-><init>(Lcom/android/gallery/ui/SingleViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery/view/ImageNavigatorView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 478
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    new-instance v1, Lcom/android/gallery/ui/SingleViewActivity$2;

    invoke-direct {v1, p0}, Lcom/android/gallery/ui/SingleViewActivity$2;-><init>(Lcom/android/gallery/ui/SingleViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery/view/ImageNavigatorView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private showMenu(I)V
    .locals 20
    .parameter "showType"

    .prologue
    .line 331
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/gallery/ui/SingleViewActivity;->setMode(I)V

    .line 332
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery/ui/SingleViewActivity;->mShowMenuType:I

    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery/ui/SingleViewActivity;->mShowMenuType:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 418
    :goto_0
    return-void

    .line 337
    :cond_0
    const/4 v10, 0x0

    .line 338
    .local v10, popView:Landroid/view/View;
    const/4 v11, 0x0

    .line 339
    .local v11, popupWindowparent:Landroid/view/View;
    const/4 v8, 0x0

    .line 340
    .local v8, offsetXId:I
    const/4 v5, 0x0

    .line 341
    .local v5, animId:I
    const/4 v14, 0x0

    .line 342
    .local v14, titleView:Landroid/widget/TextView;
    const/4 v6, 0x0

    .line 343
    .local v6, contentList:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery/ui/SingleViewActivity;->mShowMenuType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    goto :goto_0

    .line 345
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/SingleViewActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x7f030005

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 346
    const v16, 0x7f0c0060

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 347
    const v16, 0x7f0c000d

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    const v16, 0x7f0c000e

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    const v16, 0x7f0c000c

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    const v16, 0x7f0c000f

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    const v5, 0x7f0a0013

    .line 353
    const v8, 0x7f080003

    .line 402
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery/ui/SingleViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 403
    .local v12, r:Landroid/content/res/Resources;
    new-instance v16, Landroid/widget/PopupWindow;

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object v1, v10

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery/ui/SingleViewActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/SingleViewActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/SingleViewActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/SingleViewActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/SingleViewActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/PopupWindow;->update()V

    .line 413
    const v16, 0x7f0c0057

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 414
    .local v15, viewUpper:Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v16

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v17

    sub-int v16, v16, v17

    div-int/lit8 v9, v16, 0x2

    .line 415
    .local v9, offsetY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/SingleViewActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, v16

    move-object v1, v11

    move/from16 v2, v17

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 357
    .end local v9           #offsetY:I
    .end local v12           #r:Landroid/content/res/Resources;
    .end local v15           #viewUpper:Landroid/view/View;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/SingleViewActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x7f030003

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 358
    const v16, 0x7f0c0061

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 359
    const v16, 0x7f0c0007

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    const v16, 0x7f0c0008

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    const v5, 0x7f0a0014

    .line 363
    const v8, 0x7f080006

    .line 364
    goto/16 :goto_1

    .line 367
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/gallery/ui/ISingleViewInteraction;->getSendIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    .line 368
    .local v7, intent:Landroid/content/Intent;
    const-string v16, "android.intent.extra.TITLE"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 369
    .local v13, title:Ljava/lang/String;
    const-string v16, "android.intent.extra.TITLE"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 370
    new-instance v16, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;-><init>(Lcom/android/gallery/ui/SingleViewActivity;Landroid/content/Context;Landroid/content/Intent;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery/ui/SingleViewActivity;->mSendListAdapter:Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/SingleViewActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x7f030001

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 373
    const v16, 0x7f0c005e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 374
    const v16, 0x7f020067

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 375
    const v16, 0x7f0c0002

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #titleView:Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .line 376
    .restart local v14       #titleView:Landroid/widget/TextView;
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    const v16, 0x7f0c0003

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #contentList:Landroid/widget/ListView;
    check-cast v6, Landroid/widget/ListView;

    .line 378
    .restart local v6       #contentList:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/SingleViewActivity;->mSendListAdapter:Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/SingleViewActivity;->mSendListAdapter:Lcom/android/gallery/ui/SingleViewActivity$SendListAdapter;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 381
    const v5, 0x7f0a0011

    .line 382
    const v8, 0x7f080005

    .line 383
    goto/16 :goto_1

    .line 386
    .end local v7           #intent:Landroid/content/Intent;
    .end local v13           #title:Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/SingleViewActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x7f030001

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 387
    const v16, 0x7f0c005f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 388
    const v16, 0x7f020001

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 389
    const v16, 0x7f0c0003

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #contentList:Landroid/widget/ListView;
    check-cast v6, Landroid/widget/ListView;

    .line 390
    .restart local v6       #contentList:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/SingleViewActivity;->mApplyListAdapter:Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/SingleViewActivity;->mApplyListAdapter:Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 393
    const v5, 0x7f0a0012

    .line 394
    const v8, 0x7f080004

    .line 395
    goto/16 :goto_1

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dismissPopupWindow()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 580
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 582
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mShowMenuType:I

    .line 583
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    .line 539
    iget v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->switchMode()V

    move v0, v2

    .line 557
    :goto_0
    return v0

    .line 544
    :cond_0
    iget v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mMode:I

    if-ne v0, v2, :cond_2

    .line 548
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mAutoFullscreenRunnable:Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;

    invoke-virtual {v0}, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->isPosted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mAutoFullscreenRunnable:Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;

    invoke-virtual {v0}, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->post()V

    .line 553
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 554
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery/ui/SingleViewActivity;->setMode(I)V

    .line 557
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 84
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 85
    invoke-virtual {p0, p2, p3}, Lcom/android/gallery/ui/SingleViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 87
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 530
    iget v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 531
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery/ui/SingleViewActivity;->setMode(I)V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 315
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0c0059

    if-ne v2, v3, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity;->mAutoFullscreenRunnable:Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;

    invoke-virtual {v2}, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->remove()V

    .line 321
    :goto_1
    return-void

    .line 255
    :sswitch_0
    invoke-direct {p0, v5}, Lcom/android/gallery/ui/SingleViewActivity;->setMode(I)V

    goto :goto_0

    .line 259
    :sswitch_1
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    invoke-virtual {v2}, Lcom/android/gallery/view/ImageNavigatorView;->getSelectedItemPosition()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 260
    .local v1, pre:I
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    invoke-virtual {v2, v1}, Lcom/android/gallery/view/ImageNavigatorView;->setSelection(I)V

    goto :goto_0

    .line 264
    .end local v1           #pre:I
    :sswitch_2
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    invoke-virtual {v2}, Lcom/android/gallery/view/ImageNavigatorView;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    invoke-virtual {v3}, Lcom/android/gallery/view/ImageNavigatorView;->getCount()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 267
    .local v0, next:I
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    invoke-virtual {v2, v0}, Lcom/android/gallery/view/ImageNavigatorView;->setSelection(I)V

    goto :goto_0

    .line 271
    .end local v0           #next:I
    :sswitch_3
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/gallery/ui/SingleViewActivity;->showMenu(I)V

    goto :goto_0

    .line 275
    :sswitch_4
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    invoke-virtual {v2}, Lcom/android/gallery/ui/ISingleViewInteraction;->onDeleteItem()V

    .line 278
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->dismissPopupWindow()V

    goto :goto_0

    .line 282
    :sswitch_6
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    invoke-virtual {v2}, Lcom/android/gallery/ui/ISingleViewInteraction;->onShowItemInfo()V

    goto :goto_0

    .line 287
    :sswitch_7
    invoke-direct {p0, v4}, Lcom/android/gallery/ui/SingleViewActivity;->showMenu(I)V

    goto :goto_0

    .line 291
    :sswitch_8
    invoke-direct {p0, v5}, Lcom/android/gallery/ui/SingleViewActivity;->showMenu(I)V

    goto :goto_0

    .line 295
    :sswitch_9
    invoke-direct {p0, v3}, Lcom/android/gallery/ui/SingleViewActivity;->showMenu(I)V

    goto :goto_0

    .line 299
    :sswitch_a
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    invoke-virtual {v2}, Lcom/android/gallery/ui/ISingleViewInteraction;->onTurnLeft()V

    goto :goto_0

    .line 303
    :sswitch_b
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    invoke-virtual {v2}, Lcom/android/gallery/ui/ISingleViewInteraction;->onTurnRight()V

    goto :goto_0

    .line 307
    :sswitch_c
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    invoke-virtual {v2}, Lcom/android/gallery/ui/ISingleViewInteraction;->onCrop()V

    goto :goto_0

    .line 311
    :sswitch_d
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    invoke-virtual {v2}, Lcom/android/gallery/ui/ISingleViewInteraction;->onMore()V

    goto :goto_0

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity;->mAutoFullscreenRunnable:Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;

    invoke-virtual {v2}, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->post()V

    goto :goto_1

    .line 253
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0007 -> :sswitch_4
        0x7f0c0008 -> :sswitch_5
        0x7f0c000c -> :sswitch_c
        0x7f0c000d -> :sswitch_a
        0x7f0c000e -> :sswitch_b
        0x7f0c000f -> :sswitch_d
        0x7f0c0059 -> :sswitch_6
        0x7f0c005a -> :sswitch_1
        0x7f0c005b -> :sswitch_0
        0x7f0c005c -> :sswitch_2
        0x7f0c005e -> :sswitch_7
        0x7f0c005f -> :sswitch_8
        0x7f0c0060 -> :sswitch_9
        0x7f0c0061 -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->dismissPopupWindow()V

    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 222
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 99
    const v1, 0x7f030014

    invoke-virtual {p0, v1}, Lcom/android/gallery/ui/SingleViewActivity;->setContentView(I)V

    .line 100
    invoke-direct {p0}, Lcom/android/gallery/ui/SingleViewActivity;->setupClickEvents()V

    .line 101
    const v1, 0x7f0c0054

    invoke-virtual {p0, v1}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery/view/ImageNavigatorView;

    iput-object v1, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    .line 103
    invoke-direct {p0}, Lcom/android/gallery/ui/SingleViewActivity;->initInteractionHub()V

    .line 104
    iget-object v1, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    if-nez v1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery/ui/SingleViewActivity;->setupFullImageGallery()V

    .line 108
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "initial_mode"

    iget-object v3, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    invoke-virtual {v3}, Lcom/android/gallery/ui/ISingleViewInteraction;->getInitMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 109
    .local v0, mode:I
    invoke-direct {p0, v0}, Lcom/android/gallery/ui/SingleViewActivity;->setMode(I)V

    .line 110
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/gallery/ui/SingleViewActivity;->mAutoFullscreenRunnable:Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;

    invoke-virtual {v1}, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->post()V

    .line 114
    :cond_1
    new-instance v1, Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;

    invoke-direct {v1, p0}, Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;-><init>(Lcom/android/gallery/ui/SingleViewActivity;)V

    iput-object v1, p0, Lcom/android/gallery/ui/SingleViewActivity;->mApplyListAdapter:Lcom/android/gallery/ui/SingleViewActivity$ApplyListAdapter;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 587
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    invoke-virtual {v0, p1}, Lcom/android/gallery/ui/ISingleViewInteraction;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    iget v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mMode:I

    if-eq v0, v1, :cond_0

    .line 589
    invoke-direct {p0, v1}, Lcom/android/gallery/ui/SingleViewActivity;->setMode(I)V

    :goto_0
    move v0, v2

    .line 596
    :goto_1
    return v0

    .line 592
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/gallery/ui/SingleViewActivity;->setMode(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 596
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/gallery/data/ThumbnailCacheManager;->clear(I)V

    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 216
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    invoke-virtual {v0, p1}, Lcom/android/gallery/ui/ISingleViewInteraction;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 208
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->dismissPopupWindow()V

    .line 209
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery/ui/SingleViewActivity;->mSlideShowRunnable:Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 190
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    if-nez v0, :cond_0

    .line 191
    const v0, 0x7f090045

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 192
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->finish()V

    .line 203
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    invoke-virtual {v0}, Lcom/android/gallery/ui/ISingleViewInteraction;->onResume()V

    .line 198
    sget-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/gallery/util/AsyncLoadTaskStack;->setMaxLowTaskNum(I)V

    .line 201
    invoke-static {p0}, Lcom/android/gallery/util/PreferenceHelper;->getSlideshowInterval(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mSlideshowInterval:I

    .line 202
    invoke-static {p0}, Lcom/android/gallery/util/PreferenceHelper;->getSlideshowRepeatMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mSlideshowRepeatMode:Z

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 562
    iget v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 563
    invoke-direct {p0, v2}, Lcom/android/gallery/ui/SingleViewActivity;->setMode(I)V

    move v0, v2

    .line 566
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p2}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 227
    if-eqz p1, :cond_0

    .line 228
    const v0, 0x7f0c0059

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/gallery/ui/SingleViewActivity;->mMode:I

    if-ne v0, v1, :cond_1

    .line 232
    if-eqz p1, :cond_4

    .line 233
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mAutoFullscreenRunnable:Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;

    invoke-virtual {v0}, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->post()V

    .line 240
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    invoke-virtual {v0}, Lcom/android/gallery/ui/ISingleViewInteraction;->hasValidMedia()Z

    move-result v0

    if-nez v0, :cond_3

    .line 244
    iget-boolean v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mIsFirstRefreshUI:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 245
    const v0, 0x7f090045

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 247
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->finish()V

    .line 249
    :cond_3
    return-void

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mAutoFullscreenRunnable:Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;

    invoke-virtual {v0}, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->remove()V

    goto :goto_0
.end method

.method public refreshUI()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 421
    iget-object v1, p0, Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;

    invoke-virtual {v1}, Lcom/android/gallery/ui/ISingleViewInteraction;->hasValidMedia()Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity;->finish()V

    .line 435
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    invoke-virtual {v1}, Lcom/android/gallery/view/ImageNavigatorView;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 428
    iget-object v1, p0, Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;

    invoke-virtual {v1}, Lcom/android/gallery/view/ImageNavigatorView;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 429
    .local v0, noFiles:Z
    :goto_1
    const v1, 0x7f0c0055

    invoke-virtual {p0, v1}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 430
    const v1, 0x7f0c0056

    invoke-virtual {p0, v1}, Lcom/android/gallery/ui/SingleViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_3

    move v2, v4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 431
    invoke-direct {p0}, Lcom/android/gallery/ui/SingleViewActivity;->refreshIndexIndicator()V

    .line 434
    iput-boolean v3, p0, Lcom/android/gallery/ui/SingleViewActivity;->mIsFirstRefreshUI:Z

    goto :goto_0

    .end local v0           #noFiles:Z
    :cond_1
    move v0, v3

    .line 428
    goto :goto_1

    .restart local v0       #noFiles:Z
    :cond_2
    move v2, v4

    .line 429
    goto :goto_2

    :cond_3
    move v2, v3

    .line 430
    goto :goto_3
.end method

.method public switchMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 570
    iget v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 571
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/gallery/ui/SingleViewActivity;->setMode(I)V

    .line 575
    :cond_1
    :goto_0
    return-void

    .line 572
    :cond_2
    iget v0, p0, Lcom/android/gallery/ui/SingleViewActivity;->mMode:I

    if-ne v0, v2, :cond_1

    .line 573
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery/ui/SingleViewActivity;->setMode(I)V

    goto :goto_0
.end method
