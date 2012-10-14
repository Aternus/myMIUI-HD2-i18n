.class public Lcom/android/gallery/data/MediaFileFilter;
.super Ljava/lang/Object;
.source "MediaFileFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private mFilterFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/gallery/data/MediaFileFilter;->mFilterFlags:I

    return-void
.end method

.method public static getFileAttributes(Ljava/io/File;)I
    .locals 4
    .parameter "file"

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const/4 v2, 0x2

    move v1, v2

    .line 45
    .local v1, result:I
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 46
    or-int/lit8 v1, v1, 0x1

    .line 47
    new-instance v2, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery/data/BucketExt;->getBucketExtData(Ljava/lang/String;)Lcom/android/gallery/data/BucketExt$BucketExtData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery/data/BucketExt$BucketExtData;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    :cond_1
    or-int/lit8 v1, v1, 0x2

    .line 66
    :cond_2
    :goto_1
    return v1

    .line 42
    .end local v1           #result:I
    :cond_3
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 54
    .restart local v1       #result:I
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery/util/StorageUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, mimeType:Ljava/lang/String;
    const-string v2, "image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 56
    or-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 58
    :cond_5
    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 59
    or-int/lit8 v1, v1, 0x10

    goto :goto_1

    .line 62
    :cond_6
    or-int/lit8 v1, v1, 0x4

    goto :goto_1
.end method


# virtual methods
.method public accept(I)Z
    .locals 1
    .parameter "attributes"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery/data/MediaFileFilter;->mFilterFlags:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .parameter "dir"
    .parameter "filename"

    .prologue
    .line 32
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/android/gallery/data/MediaFileFilter;->getFileAttributes(Ljava/io/File;)I

    move-result v0

    .line 34
    .local v0, attributes:I
    invoke-virtual {p0, v0}, Lcom/android/gallery/data/MediaFileFilter;->accept(I)Z

    move-result v2

    return v2
.end method

.method public getFilterFlags()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/gallery/data/MediaFileFilter;->mFilterFlags:I

    return v0
.end method

.method public setFilterFlags(I)V
    .locals 1
    .parameter "filterFlags"

    .prologue
    .line 23
    and-int/lit8 v0, p1, 0x1f

    iput v0, p0, Lcom/android/gallery/data/MediaFileFilter;->mFilterFlags:I

    .line 24
    return-void
.end method
