.class public Lcom/android/gallery/data/BucketExt$BucketExtData;
.super Ljava/lang/Object;
.source "BucketExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/data/BucketExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketExtData"
.end annotation


# instance fields
.field private mCover:Lcom/android/gallery/data/BaseMeta;

.field private mCoverPath:Ljava/lang/String;

.field private mHasChange:Z

.field private mIsFavorite:Z

.field private mIsHidden:Z

.field private mPath:Ljava/lang/String;

.field private mSortOrder:I

.field private mUseFrequncy:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mSortOrder:I

    .line 24
    iput-object p1, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mPath:Ljava/lang/String;

    .line 25
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery/data/BucketExt$BucketExtData;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mHasChange:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/gallery/data/BucketExt$BucketExtData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mHasChange:Z

    return p1
.end method

.method private validateCover()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mCoverPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mCoverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery/util/StorageUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery/data/BucketExt$BucketExtData;->setCover(Lcom/android/gallery/data/BaseMeta;)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public getCover()Lcom/android/gallery/data/BaseMeta;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/gallery/data/BucketExt$BucketExtData;->validateCover()V

    .line 76
    iget-object v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mCover:Lcom/android/gallery/data/BaseMeta;

    return-object v0
.end method

.method public getCoverPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/gallery/data/BucketExt$BucketExtData;->validateCover()V

    .line 72
    iget-object v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mCoverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mSortOrder:I

    return v0
.end method

.method public getUseFrequncy()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mUseFrequncy:I

    return v0
.end method

.method public increaseUseFrequncy()V
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mUseFrequncy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mUseFrequncy:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mHasChange:Z

    .line 52
    return-void
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mIsFavorite:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mIsHidden:Z

    return v0
.end method

.method public load(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 85
    sget v0, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_SORT_ORDER:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mSortOrder:I

    .line 86
    sget v0, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_USE_FREQ:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mUseFrequncy:I

    .line 87
    sget v0, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_IS_FAVORITE:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mIsFavorite:Z

    .line 88
    sget v0, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_IS_HIDDEN:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mIsHidden:Z

    .line 90
    sget v0, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_COVER_PATH:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mCoverPath:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mCoverPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mCoverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery/util/StorageUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mCoverPath:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mHasChange:Z

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mCoverPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mCoverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery/data/FileInfo;->getFileInfo(Ljava/lang/String;)Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mCover:Lcom/android/gallery/data/BaseMeta;

    .line 98
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 87
    goto :goto_0

    :cond_3
    move v0, v2

    .line 88
    goto :goto_1
.end method

.method public setCover(Lcom/android/gallery/data/BaseMeta;)V
    .locals 1
    .parameter "cover"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mCover:Lcom/android/gallery/data/BaseMeta;

    .line 80
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mCoverPath:Ljava/lang/String;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mHasChange:Z

    .line 82
    return-void

    .line 80
    :cond_0
    iget-object v0, p1, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHasChange(Z)V
    .locals 0
    .parameter "hasChange"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mHasChange:Z

    .line 36
    return-void
.end method

.method public setIsFavorite(Z)V
    .locals 1
    .parameter "isFavorite"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mIsFavorite:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mHasChange:Z

    .line 60
    return-void
.end method

.method public setIsHidden(Z)V
    .locals 1
    .parameter "isHidden"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mIsHidden:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mHasChange:Z

    .line 68
    return-void
.end method

.method public setSortOrder(I)V
    .locals 1
    .parameter "sortOrder"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/gallery/data/BucketExt$BucketExtData;->mSortOrder:I

    .line 43
    invoke-static {}, Lcom/android/gallery/data/BucketExt;->access$000()Lcom/android/gallery/data/GalleryDBHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery/data/GalleryDBHelper;->update(Lcom/android/gallery/data/BucketExt$BucketExtData;)V

    .line 44
    return-void
.end method
