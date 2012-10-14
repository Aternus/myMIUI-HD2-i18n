.class public Lcom/android/stk/StkMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StkMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/telephony/gsm/stk/Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mIcosSelfExplanatory:Z

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "icosSelfExplanatory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/Item;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/Item;>;"
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 36
    iput-boolean v0, p0, Lcom/android/stk/StkMenuAdapter;->mIcosSelfExplanatory:Z

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    iput-boolean p3, p0, Lcom/android/stk/StkMenuAdapter;->mIcosSelfExplanatory:Z

    .line 43
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/stk/StkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/Item;

    .line 49
    .local v1, item:Lcom/android/internal/telephony/gsm/stk/Item;
    if-nez p2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/android/stk/StkMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030002

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 54
    :cond_0
    iget-boolean v2, p0, Lcom/android/stk/StkMenuAdapter;->mIcosSelfExplanatory:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/stk/StkMenuAdapter;->mIcosSelfExplanatory:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/Item;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 55
    :cond_1
    const v2, 0x7f07000b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/Item;->text:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_2
    const v2, 0x7f07000a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/Item;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 59
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    :goto_0
    return-object p2

    .line 61
    :cond_3
    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/Item;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
