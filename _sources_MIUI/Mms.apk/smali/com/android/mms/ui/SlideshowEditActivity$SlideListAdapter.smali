.class Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SlideshowEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlideListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResource:I

.field private final mSlideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/model/SlideshowModel;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "slideshow"

    .prologue
    .line 357
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 359
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mContext:Landroid/content/Context;

    .line 360
    iput p2, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mResource:I

    .line 361
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 362
    iput-object p3, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 363
    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;I)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "resource"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 372
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v7, 0x0

    invoke-virtual {v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/SlideListItemView;

    .line 377
    .local v4, slideListItemView:Lcom/android/mms/ui/SlideListItemView;
    const v6, 0x7f0d00e3

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 378
    .local v5, text:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0900eb

    new-array v8, v11, [Ljava/lang/Object;

    add-int/lit8 v9, p1, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 381
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v6

    div-int/lit16 v1, v6, 0x3e8

    .line 382
    .local v1, dur:I
    const v6, 0x7f0d00e7

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #text:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 383
    .restart local v5       #text:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f0b

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v1, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    const-string v6, "SlideshowPresenter"

    iget-object v7, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v6, v7, v4, v8}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v2

    .line 388
    .local v2, presenter:Lcom/android/mms/ui/Presenter;
    move-object v0, v2

    check-cast v0, Lcom/android/mms/ui/SlideshowPresenter;

    move-object v6, v0

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/SlideshowPresenter;->setLocation(I)V

    .line 389
    invoke-virtual {v2}, Lcom/android/mms/ui/Presenter;->present()V

    .line 391
    return-object v4
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 367
    iget v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->mResource:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->createViewFromResource(ILandroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
