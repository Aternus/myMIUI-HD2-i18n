.class public Lcom/android/gallery/data/FileInfo;
.super Lcom/android/gallery/data/BaseMeta;
.source "FileInfo.java"


# instance fields
.field protected mFile:Ljava/io/File;

.field public mFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery/data/BaseMeta;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/android/gallery/data/FileInfo;->mFile:Ljava/io/File;

    .line 42
    iget-object v0, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery/util/StorageUtils;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/data/FileInfo;->mFileName:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/android/gallery/data/FileInfo;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery/data/BaseMeta;->mTitle:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lcom/android/gallery/data/FileInfo;->updateTimeAndSize()V

    .line 45
    return-void
.end method

.method public static getFileInfo(Ljava/io/File;Lcom/android/gallery/data/MediaFileFilter;)Lcom/android/gallery/data/FileInfo;
    .locals 2
    .parameter "f"
    .parameter "filter"

    .prologue
    .line 32
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1

    .line 34
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/gallery/data/DirInfo;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery/data/DirInfo;-><init>(Ljava/io/File;Lcom/android/gallery/data/MediaFileFilter;)V

    move-object v0, v1

    .local v0, info:Lcom/android/gallery/data/FileInfo;
    :goto_1
    move-object v1, v0

    .line 35
    goto :goto_0

    .line 34
    .end local v0           #info:Lcom/android/gallery/data/FileInfo;
    :cond_2
    new-instance v1, Lcom/android/gallery/data/FileInfo;

    invoke-direct {v1, p0}, Lcom/android/gallery/data/FileInfo;-><init>(Ljava/io/File;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public static getFileInfo(Ljava/lang/String;)Lcom/android/gallery/data/FileInfo;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery/data/FileInfo;->getFileInfo(Ljava/io/File;Lcom/android/gallery/data/MediaFileFilter;)Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method private loadExifInfo()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 91
    iget-boolean v2, p0, Lcom/android/gallery/data/BaseMeta;->mIsVideo:Z

    if-eqz v2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const/4 v10, 0x0

    .line 94
    .local v10, result:Z
    iget-boolean v2, p0, Lcom/android/gallery/data/BaseMeta;->mIsJpeg:Z

    if-eqz v2, :cond_3

    .line 95
    const/4 v7, 0x0

    .line 97
    .local v7, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v8, Landroid/media/ExifInterface;

    iget-object v2, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-direct {v8, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v7           #exif:Landroid/media/ExifInterface;
    .local v8, exif:Landroid/media/ExifInterface;
    const/4 v10, 0x1

    move-object v7, v8

    .line 102
    .end local v8           #exif:Landroid/media/ExifInterface;
    .restart local v7       #exif:Landroid/media/ExifInterface;
    :goto_1
    if-eqz v7, :cond_3

    .line 104
    invoke-virtual {v7}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery/data/BaseMeta;->mDateTaken:J

    .line 108
    iget-wide v2, p0, Lcom/android/gallery/data/BaseMeta;->mDateTaken:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 109
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/gallery/data/BaseMeta;->mDateTaken:J

    .line 112
    :cond_2
    invoke-virtual {v7}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery/data/BaseMeta;->mHasExifThumbnail:Z

    .line 113
    const-string v2, "ImageWidth"

    invoke-virtual {v7, v2, v14}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery/data/BaseMeta;->mWidth:I

    .line 114
    const-string v2, "ImageLength"

    invoke-virtual {v7, v2, v14}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery/data/BaseMeta;->mHeight:I

    .line 115
    const-string v2, "Orientation"

    invoke-virtual {v7, v2, v11}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/gallery/util/Utils;->exifOrientationToDegrees(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/gallery/data/BaseMeta;->mOrientation:I

    .line 118
    new-array v9, v13, [F

    fill-array-data v9, :array_0

    .line 119
    .local v9, output:[F
    invoke-virtual {v7, v9}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    aget v2, v9, v12

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/android/gallery/data/BaseMeta;->mLatitude:D

    .line 121
    aget v2, v9, v11

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/android/gallery/data/BaseMeta;->mLongitude:D

    .line 126
    .end local v7           #exif:Landroid/media/ExifInterface;
    .end local v9           #output:[F
    :cond_3
    if-nez v10, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/gallery/util/StorageUtils;->isInternal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v1, v2

    .line 130
    .local v1, baseUri:Landroid/net/Uri;
    :goto_2
    sget-object v2, Lcom/android/gallery/app/GalleryApplication;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "orientation"

    aput-object v3, v2, v12

    const-string v3, "latitude"

    aput-object v3, v2, v11

    const-string v3, "longitude"

    aput-object v3, v2, v13

    const-string v3, "_data = ?"

    new-array v4, v11, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    aput-object v5, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 141
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery/data/BaseMeta;->mOrientation:I

    .line 144
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery/data/BaseMeta;->mLatitude:D

    .line 145
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery/data/BaseMeta;->mLongitude:D

    .line 147
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 127
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #baseUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_5
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v1, v2

    goto :goto_2

    .line 99
    .restart local v7       #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 118
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private updateTimeAndSize()V
    .locals 7

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/gallery/data/FileInfo;->getSize()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/gallery/data/BaseMeta;->mSize:J

    .line 68
    iget-object v3, p0, Lcom/android/gallery/data/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/gallery/data/BaseMeta;->mDateModified:J

    .line 71
    iget-wide v3, p0, Lcom/android/gallery/data/BaseMeta;->mDateTaken:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 74
    .local v0, cal:Ljava/util/Calendar;
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 75
    .local v2, zoneOffset:I
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 76
    .local v1, dstOffset:I
    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/gallery/data/BaseMeta;->mDateModified:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 77
    const/16 v3, 0xe

    add-int v4, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 79
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/gallery/data/BaseMeta;->mDateTaken:J

    .line 81
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #dstOffset:I
    .end local v2           #zoneOffset:I
    :cond_0
    return-void
.end method


# virtual methods
.method protected clearModifiedFlags()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/gallery/data/BaseMeta;->clearModifiedFlags()V

    .line 63
    invoke-direct {p0}, Lcom/android/gallery/data/FileInfo;->updateTimeAndSize()V

    .line 64
    return-void
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/gallery/data/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 201
    return-void
.end method

.method protected getSize()J
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery/data/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDir()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public isModified()Z
    .locals 4

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/gallery/data/BaseMeta;->mAllDataLoaded:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/gallery/data/BaseMeta;->mDateModified:J

    iget-object v2, p0, Lcom/android/gallery/data/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/gallery/data/BaseMeta;->mSize:J

    invoke-virtual {p0}, Lcom/android/gallery/data/FileInfo;->getSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAllDataInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-direct {p0}, Lcom/android/gallery/data/FileInfo;->loadExifInfo()V

    .line 86
    invoke-super {p0}, Lcom/android/gallery/data/BaseMeta;->loadAllDataInternal()V

    .line 87
    const/4 v0, 0x0

    invoke-static {p0, v1, v1, v0}, Lcom/android/gallery/data/ThumbnailCacheManager;->getThumbnail(Lcom/android/gallery/data/BaseMeta;IZZ)Landroid/graphics/drawable/Drawable;

    .line 88
    return-void
.end method

.method public rename(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "newName"

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Lcom/android/gallery/data/BaseMeta;->rename(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 195
    .local v0, result:Z
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/gallery/data/FileInfo;->mFile:Ljava/io/File;

    .line 196
    return v0
.end method

.method public updateOrientation()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 153
    invoke-static {p0, v13, v13}, Lcom/android/gallery/data/ThumbnailCacheManager;->getThumbnail(Lcom/android/gallery/data/BaseMeta;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 154
    .local v1, big:Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v14, v13}, Lcom/android/gallery/data/ThumbnailCacheManager;->getThumbnail(Lcom/android/gallery/data/BaseMeta;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 156
    .local v5, full:Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .line 157
    .local v8, result:Z
    iget-boolean v10, p0, Lcom/android/gallery/data/BaseMeta;->mIsJpeg:Z

    if-eqz v10, :cond_0

    .line 158
    const/4 v3, 0x0

    .line 160
    .local v3, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v4, Landroid/media/ExifInterface;

    iget-object v10, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-direct {v4, v10}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v3           #exif:Landroid/media/ExifInterface;
    .local v4, exif:Landroid/media/ExifInterface;
    if-eqz v4, :cond_0

    .line 162
    :try_start_1
    const-string v10, "Orientation"

    iget v11, p0, Lcom/android/gallery/data/BaseMeta;->mOrientation:I

    invoke-static {v11}, Lcom/android/gallery/util/Utils;->degreesToExifOrientation(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v4}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    const/4 v8, 0x1

    .line 173
    .end local v4           #exif:Landroid/media/ExifInterface;
    :cond_0
    :goto_0
    if-nez v8, :cond_1

    .line 174
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "orientation"

    iget v11, p0, Lcom/android/gallery/data/BaseMeta;->mOrientation:I

    rem-int/lit16 v11, v11, 0x168

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    sget-object v10, Lcom/android/gallery/app/GalleryApplication;->sContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 177
    .local v7, resolver:Landroid/content/ContentResolver;
    iget-object v10, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/gallery/util/StorageUtils;->isInternal(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, v10

    .line 180
    .local v0, baseUri:Landroid/net/Uri;
    :goto_1
    const-string v10, "_data = ?"

    new-array v11, v13, [Ljava/lang/String;

    iget-object v12, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    aput-object v12, v11, v14

    invoke-virtual {v7, v0, v9, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 187
    .end local v0           #baseUri:Landroid/net/Uri;
    .end local v7           #resolver:Landroid/content/ContentResolver;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery/data/FileInfo;->clearModifiedFlags()V

    .line 188
    invoke-static {p0}, Lcom/android/gallery/data/ThumbnailCacheManager;->hash(Lcom/android/gallery/data/BaseMeta;)Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, key:Ljava/lang/String;
    invoke-static {v6, v13, v1}, Lcom/android/gallery/data/ThumbnailCacheManager;->putThumbnail(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    .line 190
    invoke-static {v6, v14, v5}, Lcom/android/gallery/data/ThumbnailCacheManager;->putThumbnail(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    .line 191
    return-void

    .line 168
    .end local v6           #key:Ljava/lang/String;
    .restart local v3       #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 169
    .local v2, ex:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 177
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v7       #resolver:Landroid/content/ContentResolver;
    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_2
    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, v10

    goto :goto_1

    .line 168
    .end local v7           #resolver:Landroid/content/ContentResolver;
    .end local v9           #values:Landroid/content/ContentValues;
    .restart local v4       #exif:Landroid/media/ExifInterface;
    :catch_1
    move-exception v10

    move-object v2, v10

    move-object v3, v4

    .end local v4           #exif:Landroid/media/ExifInterface;
    .restart local v3       #exif:Landroid/media/ExifInterface;
    goto :goto_2
.end method
