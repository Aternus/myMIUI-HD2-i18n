.class public Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemeResourceDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/ThemeResourceDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComponentGridsAdapter"
.end annotation


# instance fields
.field private mExistFlag:J

.field private final mGridItemLayoutId:I

.field private mItemCount:I

.field private final mLeftBgSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private final mLeftBgUnSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private mOrderComponentFlag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceLocal:Z

.field private final mRightBgSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private final mRightBgUnSelectDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectFlag:J

.field final synthetic this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/thememanager/ThemeResourceDetailActivity;JZI)V
    .locals 7
    .parameter
    .parameter "detailFlag"
    .parameter "resourceLocal"
    .parameter "uiVersion"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 413
    const v3, 0x7f030002

    iput v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mGridItemLayoutId:I

    .line 414
    iget-object v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-virtual {v3}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f02

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mLeftBgSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 416
    iget-object v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-virtual {v3}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mLeftBgUnSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 418
    iget-object v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-virtual {v3}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mRightBgSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 420
    iget-object v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-virtual {v3}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mRightBgUnSelectDrawable:Landroid/graphics/drawable/Drawable;

    .line 424
    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-nez v3, :cond_0

    .line 425
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->getAllComponentsCombineFlag()J

    move-result-wide p2

    .line 428
    :cond_0
    const-wide/32 v3, 0x10000000

    or-long/2addr v3, p2

    iput-wide v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mExistFlag:J

    .line 430
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;

    .line 431
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sComponentOrder:[J

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 432
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sComponentOrder:[J

    aget-wide v0, v3, v2

    .line 433
    .local v0, component:J
    iget-wide v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mExistFlag:J

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 434
    invoke-static {v0, v1}, Lcom/android/thememanager/ConstantsHelper;->getMinPlatformVersion(J)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {p5, v3, v4}, Lcom/miui/android/resourcebrowser/ResourceHelper;->isCompatiblePlatformVersion(III)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 436
    iget-object v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    :cond_2
    iget-wide v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mExistFlag:J

    const-wide/16 v5, -0x1

    xor-long/2addr v5, v0

    and-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mExistFlag:J

    goto :goto_1

    .line 442
    .end local v0           #component:J
    :cond_3
    iget-object v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;

    const-wide/32 v4, 0x10000000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mItemCount:I

    .line 447
    invoke-virtual {p0, p4}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->setClickable(Z)V

    .line 448
    return-void
.end method

.method static synthetic access$300(Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$474(Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 405
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mSelectFlag:J

    and-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mSelectFlag:J

    return-wide v0
.end method

.method static synthetic access$478(Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 405
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mSelectFlag:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mSelectFlag:J

    return-wide v0
.end method

.method private leftBackground(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 526
    rem-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mItemCount:I

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 534
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 538
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLineHeight()I
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mLeftBgSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getSelectComponentFlag()J
    .locals 2

    .prologue
    .line 551
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mSelectFlag:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 452
    if-nez p2, :cond_0

    .line 453
    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-virtual {v7}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030002

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 458
    .local v6, view:Landroid/view/View;
    :goto_0
    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 459
    .local v0, actualItemCount:I
    if-lt p1, v0, :cond_1

    const-wide/16 v7, 0x0

    move-wide v2, v7

    .line 461
    .end local p2
    .local v2, subResFlag:J
    :goto_1
    const v7, 0x7f060007

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 462
    .local v5, tv:Landroid/widget/TextView;
    if-lt p1, v0, :cond_2

    const/16 v7, 0x8

    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    invoke-static {v2, v3}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v4

    .line 464
    .local v4, textId:I
    if-eqz v4, :cond_3

    .line 465
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    .line 470
    :goto_3
    const v7, 0x7f060006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 471
    .local v1, image:Landroid/widget/ImageView;
    if-lt p1, v0, :cond_4

    const/16 v7, 0x8

    :goto_4
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-virtual {v7}, Lcom/android/thememanager/ThemeResourceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 473
    iget-boolean v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mResourceLocal:Z

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 475
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 476
    new-instance v7, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter$1;

    invoke-direct {v7, p0}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter$1;-><init>(Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-boolean v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mResourceLocal:Z

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 493
    iget-wide v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mSelectFlag:J

    and-long/2addr v7, v2

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6

    .line 494
    invoke-direct {p0, p1}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->leftBackground(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 495
    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mLeftBgSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 499
    :goto_5
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 509
    :goto_6
    return-object v6

    .line 455
    .end local v0           #actualItemCount:I
    .end local v1           #image:Landroid/widget/ImageView;
    .end local v2           #subResFlag:J
    .end local v4           #textId:I
    .end local v5           #tv:Landroid/widget/TextView;
    .end local v6           #view:Landroid/view/View;
    .restart local p2
    :cond_0
    move-object v6, p2

    .restart local v6       #view:Landroid/view/View;
    goto :goto_0

    .line 459
    .restart local v0       #actualItemCount:I
    :cond_1
    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-wide v2, v7

    goto :goto_1

    .line 462
    .restart local v2       #subResFlag:J
    .restart local v5       #tv:Landroid/widget/TextView;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 467
    .restart local v4       #textId:I
    :cond_3
    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 471
    .restart local v1       #image:Landroid/widget/ImageView;
    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    .line 497
    :cond_5
    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mRightBgSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 501
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->leftBackground(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 502
    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mLeftBgUnSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    :goto_7
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_6

    .line 504
    :cond_7
    iget-object v7, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mRightBgUnSelectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method

.method public isSelectAllComponent()Z
    .locals 4

    .prologue
    .line 547
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mSelectFlag:J

    iget-wide v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mExistFlag:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needRemoveAllOldTheme()Z
    .locals 6

    .prologue
    .line 542
    sget-wide v2, Lcom/android/thememanager/ThemeHelper;->ALL_RINGTONE_FLAGS:J

    const-wide/16 v4, -0x1

    xor-long v0, v2, v4

    .line 543
    .local v0, noneRingtoneFlags:J
    iget-wide v2, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mSelectFlag:J

    and-long/2addr v2, v0

    iget-wide v4, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mExistFlag:J

    and-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setClickable(Z)V
    .locals 6
    .parameter "clickable"

    .prologue
    .line 513
    iput-boolean p1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mResourceLocal:Z

    .line 514
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mExistFlag:J

    iput-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mSelectFlag:J

    .line 515
    iget-boolean v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mResourceLocal:Z

    if-eqz v0, :cond_0

    .line 516
    iget-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mSelectFlag:J

    sget-wide v2, Lcom/android/thememanager/ThemeHelper;->ALL_RINGTONE_FLAGS:J

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->mSelectFlag:J

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeResourceDetailActivity$ComponentGridsAdapter;->notifyDataSetInvalidated()V

    .line 519
    return-void
.end method
