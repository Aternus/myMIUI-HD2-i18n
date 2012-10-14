.class public Lcom/android/gallery/data/BucketExt;
.super Ljava/lang/Object;
.source "BucketExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/data/BucketExt$BucketExtData;
    }
.end annotation


# static fields
.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery/data/BucketExt$BucketExtData;",
            ">;"
        }
    .end annotation
.end field

.field private static sDBHelper:Lcom/android/gallery/data/GalleryDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery/data/BucketExt;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method static synthetic access$000()Lcom/android/gallery/data/GalleryDBHelper;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/android/gallery/data/BucketExt;->sDBHelper:Lcom/android/gallery/data/GalleryDBHelper;

    return-object v0
.end method

.method public static declared-synchronized commit()V
    .locals 4

    .prologue
    .line 162
    const-class v2, Lcom/android/gallery/data/BucketExt;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/gallery/data/BucketExt;->sCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery/data/BucketExt$BucketExtData;

    .line 163
    .local v0, data:Lcom/android/gallery/data/BucketExt$BucketExtData;
    #getter for: Lcom/android/gallery/data/BucketExt$BucketExtData;->mHasChange:Z
    invoke-static {v0}, Lcom/android/gallery/data/BucketExt$BucketExtData;->access$100(Lcom/android/gallery/data/BucketExt$BucketExtData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    sget-object v3, Lcom/android/gallery/data/BucketExt;->sDBHelper:Lcom/android/gallery/data/GalleryDBHelper;

    invoke-virtual {v3, v0}, Lcom/android/gallery/data/GalleryDBHelper;->update(Lcom/android/gallery/data/BucketExt$BucketExtData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 162
    .end local v0           #data:Lcom/android/gallery/data/BucketExt$BucketExtData;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 167
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit v2

    return-void
.end method

.method public static declared-synchronized getBucketExtData(Ljava/lang/String;)Lcom/android/gallery/data/BucketExt$BucketExtData;
    .locals 3
    .parameter "path"

    .prologue
    .line 145
    const-class v1, Lcom/android/gallery/data/BucketExt;

    monitor-enter v1

    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 158
    :goto_0
    monitor-exit v1

    return-object v2

    .line 147
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/gallery/data/BucketExt;->sDBHelper:Lcom/android/gallery/data/GalleryDBHelper;

    if-nez v2, :cond_1

    .line 148
    invoke-static {}, Lcom/android/gallery/data/BucketExt;->loadCache()V

    .line 151
    :cond_1
    sget-object v2, Lcom/android/gallery/data/BucketExt;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery/data/BucketExt$BucketExtData;

    .line 152
    .local v0, data:Lcom/android/gallery/data/BucketExt$BucketExtData;
    if-nez v0, :cond_2

    .line 153
    new-instance v0, Lcom/android/gallery/data/BucketExt$BucketExtData;

    .end local v0           #data:Lcom/android/gallery/data/BucketExt$BucketExtData;
    invoke-direct {v0, p0}, Lcom/android/gallery/data/BucketExt$BucketExtData;-><init>(Ljava/lang/String;)V

    .line 154
    .restart local v0       #data:Lcom/android/gallery/data/BucketExt$BucketExtData;
    const/4 v2, 0x1

    #setter for: Lcom/android/gallery/data/BucketExt$BucketExtData;->mHasChange:Z
    invoke-static {v0, v2}, Lcom/android/gallery/data/BucketExt$BucketExtData;->access$102(Lcom/android/gallery/data/BucketExt$BucketExtData;Z)Z

    .line 155
    sget-object v2, Lcom/android/gallery/data/BucketExt;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move-object v2, v0

    .line 158
    goto :goto_0

    .line 145
    .end local v0           #data:Lcom/android/gallery/data/BucketExt$BucketExtData;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static loadCache()V
    .locals 12

    .prologue
    .line 118
    new-instance v1, Lcom/android/gallery/data/GalleryDBHelper;

    invoke-direct {v1}, Lcom/android/gallery/data/GalleryDBHelper;-><init>()V

    sput-object v1, Lcom/android/gallery/data/BucketExt;->sDBHelper:Lcom/android/gallery/data/GalleryDBHelper;

    .line 119
    const/4 v8, 0x0

    .line 120
    .local v8, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 122
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v1, Lcom/android/gallery/data/BucketExt;->sDBHelper:Lcom/android/gallery/data/GalleryDBHelper;

    invoke-virtual {v1}, Lcom/android/gallery/data/GalleryDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    const-string v1, "bucket_ext"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 124
    if-eqz v8, :cond_2

    .line 125
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    sget v1, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_BUCKET_PATH:I

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 127
    .local v11, path:Ljava/lang/String;
    new-instance v9, Lcom/android/gallery/data/BucketExt$BucketExtData;

    invoke-direct {v9, v11}, Lcom/android/gallery/data/BucketExt$BucketExtData;-><init>(Ljava/lang/String;)V

    .line 128
    .local v9, data:Lcom/android/gallery/data/BucketExt$BucketExtData;
    invoke-virtual {v9, v8}, Lcom/android/gallery/data/BucketExt$BucketExtData;->load(Landroid/database/Cursor;)V

    .line 129
    sget-object v1, Lcom/android/gallery/data/BucketExt;->sCache:Ljava/util/HashMap;

    invoke-virtual {v1, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v9           #data:Lcom/android/gallery/data/BucketExt$BucketExtData;
    .end local v11           #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 133
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    if-eqz v8, :cond_0

    .line 136
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_0
    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 142
    .end local v10           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 135
    :cond_2
    if-eqz v8, :cond_3

    .line 136
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_3
    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 135
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 136
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_4
    if-eqz v0, :cond_5

    .line 139
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v1
.end method
