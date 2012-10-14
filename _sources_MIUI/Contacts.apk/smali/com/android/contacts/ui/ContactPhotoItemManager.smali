.class public Lcom/android/contacts/ui/ContactPhotoItemManager;
.super Ljava/lang/Object;
.source "ContactPhotoItemManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ui/ContactPhotoItemManager$1;
    }
.end annotation


# instance fields
.field private mColor:I

.field private final mResourcePhotoes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/ui/ContactPhotoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "path"
    .parameter "name"
    .parameter "color"

    .prologue
    const-string v3, "ContactPhotoItemManager"

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/ui/ContactPhotoItemManager;->mResourcePhotoes:Ljava/util/List;

    .line 34
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/contacts/ui/ContactPhotoItemManager;->mZipFile:Ljava/util/zip/ZipFile;

    .line 35
    iget-object v1, p0, Lcom/android/contacts/ui/ContactPhotoItemManager;->mResourcePhotoes:Ljava/util/List;

    iget-object v2, p0, Lcom/android/contacts/ui/ContactPhotoItemManager;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-static {v2, p2, p3}, Lcom/android/contacts/ContactsUtils;->getPhotoList(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    iput p4, p0, Lcom/android/contacts/ui/ContactPhotoItemManager;->mColor:I
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 38
    .local v0, e:Ljava/util/zip/ZipException;
    const-string v1, "ContactPhotoItemManager"

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    .end local v0           #e:Ljava/util/zip/ZipException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 40
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ContactPhotoItemManager"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPhotoFromZip(Lcom/android/contacts/ui/ContactPhotoItem;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "photo"

    .prologue
    const-string v7, "ContactPhotoItemManager"

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/ui/ContactPhotoItemManager;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Lcom/android/contacts/ui/ContactPhotoItem;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 115
    .local v2, entry:Ljava/util/zip/ZipEntry;
    iget-object v4, p0, Lcom/android/contacts/ui/ContactPhotoItemManager;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 116
    .local v3, src:Landroid/graphics/Bitmap;
    const/16 v4, 0x8c

    const/16 v5, 0x8c

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    move-object v4, v0

    .line 127
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #src:Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    .line 121
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 122
    .local v1, e:Ljava/util/zip/ZipException;
    const-string v4, "ContactPhotoItemManager"

    invoke-virtual {v1}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v1           #e:Ljava/util/zip/ZipException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 123
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 124
    .local v1, e:Ljava/io/IOException;
    const-string v4, "ContactPhotoItemManager"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public containWordPhoto()Z
    .locals 4

    .prologue
    .line 54
    iget-object v2, p0, Lcom/android/contacts/ui/ContactPhotoItemManager;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 56
    .local v0, entries:Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 59
    .local v1, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "word/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const/4 v2, 0x1

    .line 64
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/contacts/ui/ContactPhotoItemManager;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/contacts/ui/ContactPhotoItemManager;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ui/ContactPhotoItemManager;->mZipFile:Ljava/util/zip/ZipFile;

    .line 50
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 51
    return-void
.end method

.method public getLocalContactPhotoItems(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/ui/ContactPhotoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/ui/ContactPhotoItemManager;->mResourcePhotoes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ui/ContactPhotoItem;>;"
    return-object v0
.end method

.method public tryGetBitmapLocally(Landroid/content/Context;Lcom/android/contacts/ui/ContactPhotoItem;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "photo"

    .prologue
    const/16 v7, 0x8c

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "context"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    :cond_0
    if-nez p2, :cond_1

    .line 76
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "photo"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 78
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/ui/ContactPhotoItem;->getCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 79
    invoke-virtual {p2}, Lcom/android/contacts/ui/ContactPhotoItem;->getCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 107
    .end local p0
    :goto_0
    return-object v4

    .line 82
    .restart local p0
    :cond_2
    const/4 v1, 0x0

    .line 83
    .local v1, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/android/contacts/ui/ContactPhotoItem;->getStorageType()Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    move-result-object v2

    .line 84
    .local v2, itemType:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;
    sget-object v4, Lcom/android/contacts/ui/ContactPhotoItemManager$1;->$SwitchMap$com$android$contacts$ui$ContactPhotoItem$StorageTypeEnum:[I

    invoke-virtual {v2}, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 102
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "photo.getStorageType()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 86
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/contacts/ui/ContactPhotoItem;->getValue()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    move-object v0, p0

    check-cast v0, [B

    move-object v3, v0

    .line 87
    .local v3, photoBytes:[B
    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 105
    .end local v3           #photoBytes:[B
    :goto_1
    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {p2, v1}, Lcom/android/contacts/ui/ContactPhotoItem;->setCachedBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    move-object v4, v1

    .line 107
    goto :goto_0

    .line 91
    .restart local p0
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/contacts/ui/ContactPhotoItemManager;->getPhotoFromZip(Lcom/android/contacts/ui/ContactPhotoItem;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/contacts/ui/ContactPhotoItem;->getName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/contacts/ui/ContactPhotoItemManager;->mColor:I

    invoke-static {v4, v5, v7, v7, v6}, Lcom/android/internal/util/GraphicsUtils;->createNameBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 93
    goto :goto_1

    .line 95
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/contacts/ui/ContactPhotoItem;->getValue()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 96
    goto :goto_1

    .line 98
    .restart local p0
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/contacts/ui/ContactPhotoItemManager;->getPhotoFromZip(Lcom/android/contacts/ui/ContactPhotoItem;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 99
    goto :goto_1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
