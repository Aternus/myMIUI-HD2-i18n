.class Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/SearchBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchHistroyAdapter"
.end annotation


# instance fields
.field private CONTENT_TEXT_COLOR:Landroid/content/res/ColorStateList;

.field private final CONTENT_TEXT_SIZE:I

.field private HINT_TEXT_COLOR:Landroid/content/res/ColorStateList;

.field private final HINT_TEXT_SIZE:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/miui/player/helper/controller/SearchBarController;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/controller/SearchBarController;)V
    .locals 3
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;->this$0:Lcom/miui/player/helper/controller/SearchBarController;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 342
    const/16 v2, 0x12

    iput v2, p0, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;->CONTENT_TEXT_SIZE:I

    .line 344
    const/16 v2, 0xe

    iput v2, p0, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;->HINT_TEXT_SIZE:I

    .line 351
    iget-object v2, p1, Lcom/miui/player/helper/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 352
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 353
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 355
    const v2, 0x7f060058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;->CONTENT_TEXT_COLOR:Landroid/content/res/ColorStateList;

    .line 356
    const v2, 0x7f060055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;->HINT_TEXT_COLOR:Landroid/content/res/ColorStateList;

    .line 357
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 388
    iget-object v1, p0, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;->this$0:Lcom/miui/player/helper/controller/SearchBarController;

    iget-object v1, v1, Lcom/miui/player/helper/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 389
    .local v0, count:I
    if-lez v0, :cond_0

    .line 390
    add-int/lit8 v0, v0, 0x2

    .line 393
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 403
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/high16 v6, 0x4160

    const/4 v5, 0x0

    .line 361
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 362
    .local v1, view:Landroid/widget/TextView;
    if-nez v1, :cond_0

    .line 363
    iget-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030033

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #view:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 367
    .restart local v1       #view:Landroid/widget/TextView;
    :cond_0
    if-nez p1, :cond_1

    .line 368
    const v2, 0x7f08008f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 369
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 370
    iget-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;->HINT_TEXT_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 371
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 383
    :goto_0
    return-object v1

    .line 372
    :cond_1
    iget-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;->this$0:Lcom/miui/player/helper/controller/SearchBarController;

    iget-object v2, v2, Lcom/miui/player/helper/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lt p1, v2, :cond_2

    .line 373
    const v2, 0x7f08008e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 374
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 375
    iget-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;->HINT_TEXT_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 376
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 378
    :cond_2
    iget-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;->this$0:Lcom/miui/player/helper/controller/SearchBarController;

    iget-object v2, v2, Lcom/miui/player/helper/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    const/4 v3, 0x1

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 380
    iget-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;->CONTENT_TEXT_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
