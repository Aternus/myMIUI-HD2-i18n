.class public Lcom/android/gallery/data/GalleryDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GalleryDBHelper.java"


# static fields
.field public static final CAMERA_FOLDER_PATH:Ljava/lang/String;

.field static final COLUMNS:[Ljava/lang/String;

.field public static COLUMN_COUNT:I

.field public static COLUMN_INDEX_BUCKET_PATH:I

.field public static COLUMN_INDEX_COVER_PATH:I

.field public static COLUMN_INDEX_FIRST_INTEGER:I

.field public static COLUMN_INDEX_FIRST_STRING:I

.field public static COLUMN_INDEX_ID:I

.field public static COLUMN_INDEX_IS_FAVORITE:I

.field public static COLUMN_INDEX_IS_HIDDEN:I

.field public static COLUMN_INDEX_IS_INTERNAL:I

.field public static COLUMN_INDEX_LAST_INTEGER:I

.field public static COLUMN_INDEX_LAST_STRING:I

.field public static COLUMN_INDEX_SORT_ORDER:I

.field public static COLUMN_INDEX_USE_FREQ:I

.field public static final INTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

.field public static final INTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

.field public static final MILIAO_FOLDER_PATH:Ljava/lang/String;

.field public static final MILIAO_PAINTING_FOLDER_PATH:Ljava/lang/String;

.field public static final MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x7

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "folder_path"

    aput-object v1, v0, v3

    const-string v1, "cover_path"

    aput-object v1, v0, v4

    const-string v1, "sort_order"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "use_freq"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_favorite"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_hidden"

    aput-object v2, v0, v1

    const-string v1, "is_internal"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_COUNT:I

    .line 31
    sput v7, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_ID:I

    .line 33
    sput v3, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_FIRST_STRING:I

    .line 34
    sput v3, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_BUCKET_PATH:I

    .line 35
    sput v4, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_COVER_PATH:I

    .line 36
    sput v4, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_LAST_STRING:I

    .line 38
    sput v5, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_FIRST_INTEGER:I

    .line 39
    sput v5, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_SORT_ORDER:I

    .line 40
    const/4 v0, 0x4

    sput v0, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_USE_FREQ:I

    .line 41
    const/4 v0, 0x5

    sput v0, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_IS_FAVORITE:I

    .line 42
    const/4 v0, 0x6

    sput v0, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_IS_HIDDEN:I

    .line 43
    sput v6, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_IS_INTERNAL:I

    .line 44
    sput v6, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_LAST_INTEGER:I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery/util/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery/data/GalleryDBHelper;->CAMERA_FOLDER_PATH:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery/util/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MIUI/screen_cap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery/data/GalleryDBHelper;->MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery/util/StorageUtils;->INTERNAL_SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery/data/GalleryDBHelper;->INTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery/util/StorageUtils;->INTERNAL_SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MIUI/screen_cap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery/data/GalleryDBHelper;->INTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery/util/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/miliao/images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery/data/GalleryDBHelper;->MILIAO_FOLDER_PATH:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/gallery/util/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/miliao/handwritings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery/data/GalleryDBHelper;->MILIAO_PAINTING_FOLDER_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 67
    sget-object v0, Lcom/android/gallery/app/GalleryApplication;->sContext:Landroid/content/Context;

    const-string v1, "gallery.db"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 68
    return-void
.end method

.method private static insertDefaultData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    const-string v5, "bucket_ext"

    .line 104
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v1, values:Landroid/content/ContentValues;
    sget v0, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_SORT_ORDER:I

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_COVER_PATH:I

    if-ge v0, v2, :cond_0

    .line 106
    sget-object v2, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    sget-object v2, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v3, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_IS_FAVORITE:I

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    sget-object v2, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v3, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_SORT_ORDER:I

    aget-object v2, v2, v3

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    sget-object v2, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v3, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_BUCKET_PATH:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/gallery/data/GalleryDBHelper;->CAMERA_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "bucket_ext"

    invoke-virtual {p0, v5, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 114
    sget-object v2, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v3, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_BUCKET_PATH:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/gallery/data/GalleryDBHelper;->MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "bucket_ext"

    invoke-virtual {p0, v5, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 116
    sget-object v2, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v3, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_BUCKET_PATH:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/gallery/data/GalleryDBHelper;->INTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "bucket_ext"

    invoke-virtual {p0, v5, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 118
    sget-object v2, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v3, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_BUCKET_PATH:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/gallery/data/GalleryDBHelper;->INTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "bucket_ext"

    invoke-virtual {p0, v5, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 120
    sget-object v2, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v3, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_BUCKET_PATH:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/gallery/data/GalleryDBHelper;->MILIAO_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "bucket_ext"

    invoke-virtual {p0, v5, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 122
    sget-object v2, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v3, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_BUCKET_PATH:I

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/gallery/data/GalleryDBHelper;->MILIAO_PAINTING_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v2, "bucket_ext"

    invoke-virtual {p0, v5, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 124
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v2, "%s INTEGER PRIMARY KEY"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v5, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_ID:I

    aget-object v4, v4, v5

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    sget v1, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_FIRST_STRING:I

    .local v1, i:I
    :goto_0
    sget v2, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_LAST_STRING:I

    if-gt v1, v2, :cond_0

    .line 76
    const-string v2, ", %s TEXT"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    sget v1, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_FIRST_INTEGER:I

    :goto_1
    sget v2, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_LAST_INTEGER:I

    if-gt v1, v2, :cond_1

    .line 79
    const-string v2, ", %s INTEGER"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    :cond_1
    const-string v2, "CREATE TABLE %s (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "bucket_ext"

    aput-object v4, v3, v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Lcom/android/gallery/data/GalleryDBHelper;->insertDefaultData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 86
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 90
    if-lt p2, p3, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database cannot be downgraded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    const/4 v0, 0x7

    if-ge p2, v0, :cond_1

    .line 95
    const-string v0, "DROP TABLE IF EXISTS savedphotos"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string v0, "DROP TABLE IF EXISTS bucket_ext"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/gallery/data/GalleryDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 100
    :cond_1
    return-void
.end method

.method public update(Lcom/android/gallery/data/BucketExt$BucketExtData;)V
    .locals 9
    .parameter "data"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "bucket_ext"

    .line 127
    if-nez p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x0

    .line 131
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery/data/GalleryDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 133
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 134
    .local v3, values:Landroid/content/ContentValues;
    sget-object v4, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v5, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_BUCKET_PATH:I

    aget-object v4, v4, v5

    invoke-virtual {p1}, Lcom/android/gallery/data/BucketExt$BucketExtData;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v4, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v5, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_COVER_PATH:I

    aget-object v4, v4, v5

    invoke-virtual {p1}, Lcom/android/gallery/data/BucketExt$BucketExtData;->getCoverPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v4, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v5, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_SORT_ORDER:I

    aget-object v4, v4, v5

    invoke-virtual {p1}, Lcom/android/gallery/data/BucketExt$BucketExtData;->getSortOrder()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    sget-object v4, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v5, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_USE_FREQ:I

    aget-object v4, v4, v5

    invoke-virtual {p1}, Lcom/android/gallery/data/BucketExt$BucketExtData;->getUseFrequncy()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    sget-object v4, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v5, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_IS_FAVORITE:I

    aget-object v4, v4, v5

    invoke-virtual {p1}, Lcom/android/gallery/data/BucketExt$BucketExtData;->isFavorite()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v7

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    sget-object v4, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v5, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_IS_HIDDEN:I

    aget-object v4, v4, v5

    invoke-virtual {p1}, Lcom/android/gallery/data/BucketExt$BucketExtData;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v7

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string v4, "bucket_ext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v7, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_BUCKET_PATH:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/gallery/data/BucketExt$BucketExtData;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 147
    .local v2, num:I
    if-gtz v2, :cond_2

    .line 148
    sget-object v4, Lcom/android/gallery/data/GalleryDBHelper;->COLUMNS:[Ljava/lang/String;

    sget v5, Lcom/android/gallery/data/GalleryDBHelper;->COLUMN_INDEX_BUCKET_PATH:I

    aget-object v4, v4, v5

    invoke-virtual {p1}, Lcom/android/gallery/data/BucketExt$BucketExtData;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v4, "bucket_ext"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 152
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/gallery/data/BucketExt$BucketExtData;->setHasChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .end local v2           #num:I
    :cond_3
    move v5, v6

    .line 138
    goto :goto_1

    :cond_4
    move v5, v6

    .line 139
    goto :goto_2

    .line 153
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 154
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 156
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_5

    .line 157
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v4
.end method
