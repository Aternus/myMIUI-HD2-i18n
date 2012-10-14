.class public Lcom/android/contacts/ui/ContactPhotoAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactPhotoAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mManager:Lcom/android/contacts/ui/ContactPhotoItemManager;

.field private mPhotoes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/ui/ContactPhotoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/ui/ContactPhotoItemManager;)V
    .locals 1
    .parameter "c"
    .parameter "m"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/contacts/ui/ContactPhotoAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/android/contacts/ui/ContactPhotoAdapter;->mManager:Lcom/android/contacts/ui/ContactPhotoItemManager;

    .line 28
    iget-object v0, p0, Lcom/android/contacts/ui/ContactPhotoAdapter;->mManager:Lcom/android/contacts/ui/ContactPhotoItemManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ui/ContactPhotoItemManager;->getLocalContactPhotoItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/ContactPhotoAdapter;->mPhotoes:Ljava/util/List;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/ContactPhotoAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method


# virtual methods
.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "position"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/ui/ContactPhotoAdapter;->mManager:Lcom/android/contacts/ui/ContactPhotoItemManager;

    iget-object v1, p0, Lcom/android/contacts/ui/ContactPhotoAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/ui/ContactPhotoAdapter;->mPhotoes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/ui/ContactPhotoItem;

    invoke-virtual {v0, v1, p0}, Lcom/android/contacts/ui/ContactPhotoItemManager;->tryGetBitmapLocally(Landroid/content/Context;Lcom/android/contacts/ui/ContactPhotoItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/contacts/ui/ContactPhotoAdapter;->mPhotoes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 41
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, view:Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 51
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/ContactPhotoAdapter;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 57
    .local v1, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    return-object v2

    .line 53
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/ui/ContactPhotoAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030043

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2           #view:Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .restart local v2       #view:Landroid/widget/ImageView;
    goto :goto_0
.end method
