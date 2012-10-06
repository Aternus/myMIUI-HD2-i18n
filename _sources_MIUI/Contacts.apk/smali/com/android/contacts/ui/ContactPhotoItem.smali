.class public Lcom/android/contacts/ui/ContactPhotoItem;
.super Ljava/lang/Object;
.source "ContactPhotoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;
    }
.end annotation


# instance fields
.field private mCachedBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private final mStorageType:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

.field private final mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "storageType"
    .parameter "v"
    .parameter "path"
    .parameter "name"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/contacts/ui/ContactPhotoItem;->mStorageType:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    .line 24
    iput-object p2, p0, Lcom/android/contacts/ui/ContactPhotoItem;->mValue:Ljava/lang/Object;

    .line 25
    iput-object p3, p0, Lcom/android/contacts/ui/ContactPhotoItem;->mPath:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/android/contacts/ui/ContactPhotoItem;->mName:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 31
    instance-of v2, p1, Lcom/android/contacts/ui/ContactPhotoItem;

    if-nez v2, :cond_0

    move v2, v4

    .line 35
    :goto_0
    return v2

    .line 34
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/ui/ContactPhotoItem;

    move-object v1, v0

    .line 35
    .local v1, that:Lcom/android/contacts/ui/ContactPhotoItem;
    iget-object v2, p0, Lcom/android/contacts/ui/ContactPhotoItem;->mStorageType:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    iget-object v3, v1, Lcom/android/contacts/ui/ContactPhotoItem;->mStorageType:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/contacts/ui/ContactPhotoItem;->mValue:Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/contacts/ui/ContactPhotoItem;->mValue:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public final getCachedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/ui/ContactPhotoItem;->mCachedBitmap:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/ui/ContactPhotoItem;->mCachedBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/contacts/ui/ContactPhotoItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStorageType()Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/contacts/ui/ContactPhotoItem;->mStorageType:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/contacts/ui/ContactPhotoItem;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final setCachedBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 51
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/ui/ContactPhotoItem;->mCachedBitmap:Ljava/lang/ref/SoftReference;

    .line 52
    return-void
.end method
