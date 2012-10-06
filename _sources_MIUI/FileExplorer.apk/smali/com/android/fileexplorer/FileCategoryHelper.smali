.class public Lcom/android/fileexplorer/FileCategoryHelper;
.super Ljava/lang/Object;
.source "FileCategoryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileCategoryHelper$1;,
        Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;,
        Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    }
.end annotation


# static fields
.field public static categoryNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static filters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;",
            "Lcom/android/fileexplorer/FilenameExtFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static sCategories:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;


# instance fields
.field private mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

.field private mCategoryInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;",
            "Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->filters:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    .line 42
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f060003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f060007

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f06000c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f060009

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f06000a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f060005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f06000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f060004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f060008

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const v2, 0x7f060006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->sCategories:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategoryInfo:Ljava/util/HashMap;

    .line 64
    iput-object p1, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mContext:Landroid/content/Context;

    .line 66
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    .line 67
    return-void
.end method

.method public static getCategoryFromDbInt(I)Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    .locals 1
    .parameter "cat"

    .prologue
    .line 248
    packed-switch p0, :pswitch_data_0

    .line 259
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    :goto_0
    return-object v0

    .line 250
    :pswitch_0
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 252
    :pswitch_1
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 254
    :pswitch_2
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 256
    :pswitch_3
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getCategoryFromPath(Ljava/lang/String;)Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    .locals 1
    .parameter "path"

    .prologue
    .line 289
    invoke-static {p0}, Landroid/media/MediaFile;->isAudioFileType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    .line 296
    :goto_0
    return-object v0

    .line 291
    :cond_0
    invoke-static {p0}, Landroid/media/MediaFile;->isVideoFileType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 293
    :cond_1
    invoke-static {p0}, Landroid/media/MediaFile;->isImageFileType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    goto :goto_0

    .line 296
    :cond_2
    invoke-static {p0}, Landroid/media/MediaScanner;->getFileCategoryFromPath(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/fileexplorer/FileCategoryHelper;->getCategoryFromDbInt(I)Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDbIntFromCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)I
    .locals 4
    .parameter "fc"

    .prologue
    const/4 v3, 0x0

    .line 264
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$1;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v3

    .line 283
    :goto_1
    return v0

    .line 266
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 268
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_1

    .line 270
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_1

    .line 272
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_4
    move v0, v3

    .line 274
    goto :goto_1

    .line 279
    :pswitch_5
    const-string v0, "FileCategoryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file catetory to DB integer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshMediaCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z
    .locals 13
    .parameter "fc"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, "FileCategoryHelper"

    .line 227
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "COUNT(*)"

    aput-object v0, v2, v10

    const-string v0, "SUM(_size)"

    aput-object v0, v2, v11

    .line 231
    .local v2, columns:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 232
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 233
    const-string v0, "FileCategoryHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to query uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 244
    :goto_0
    return v0

    .line 237
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/FileCategoryHelper;->setCategoryInfo(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;JJ)V

    .line 239
    const-string v0, "FileCategoryHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrieved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " info >>> count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 241
    goto :goto_0

    :cond_1
    move v0, v10

    .line 244
    goto :goto_0
.end method

.method private setCategoryInfo(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;JJ)V
    .locals 2
    .parameter "fc"
    .parameter "count"
    .parameter "size"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;

    .line 120
    .local v0, info:Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;
    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;

    .end local v0           #info:Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;-><init>(Lcom/android/fileexplorer/FileCategoryHelper;)V

    .line 122
    .restart local v0       #info:Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    iput-wide p2, v0, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;->count:J

    .line 125
    iput-wide p4, v0, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;->size:J

    .line 126
    return-void
.end method


# virtual methods
.method public getCategoryInfos()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;",
            "Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategoryInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCurCategory()Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    return-object v0
.end method

.method public getCurCategoryNameResId()I
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->categoryNames:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFilter()Ljava/io/FilenameFilter;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->filters:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/FilenameFilter;

    return-object p0
.end method

.method public query(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/FileSortHelper$SortMethod;)Landroid/database/Cursor;
    .locals 13
    .parameter "fc"
    .parameter "sort"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, " asc"

    .line 129
    const-string v8, "external"

    .line 130
    .local v8, volumeName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 131
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 132
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 133
    .local v4, selectionArgs:[Ljava/lang/String;
    const-string v6, "title"

    .line 134
    .local v6, columnNameName:Ljava/lang/String;
    const-string v7, "mime_type"

    .line 136
    .local v7, columnNameType:Ljava/lang/String;
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$1;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v9

    aget v0, v0, v9

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    const/4 v5, 0x0

    .line 163
    .local v5, sortOrder:Ljava/lang/String;
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$1;->$SwitchMap$com$android$fileexplorer$FileSortHelper$SortMethod:[I

    invoke-virtual {p2}, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->ordinal()I

    move-result v9

    aget v0, v0, v9

    packed-switch v0, :pswitch_data_1

    .line 178
    :goto_1
    if-nez v1, :cond_0

    .line 179
    const-string v0, "FileCategoryHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid uri, category:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x0

    .line 187
    :goto_2
    return-object v0

    .line 138
    .end local v5           #sortOrder:Ljava/lang/String;
    :pswitch_0
    invoke-static {v8}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 139
    goto :goto_0

    .line 141
    :pswitch_1
    invoke-static {v8}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 142
    goto :goto_0

    .line 144
    :pswitch_2
    invoke-static {v8}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 145
    goto :goto_0

    .line 152
    :pswitch_3
    invoke-static {v8}, Landroid/provider/MediaStore$OtherFile$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 153
    const-string v3, "category=?"

    .line 154
    new-array v4, v11, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/fileexplorer/FileCategoryHelper;->getDbIntFromCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 157
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    const-string v6, "file_name"

    .line 158
    const-string v7, "file_name_ext"

    goto :goto_0

    .line 165
    .restart local v5       #sortOrder:Ljava/lang/String;
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " asc"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    goto :goto_1

    .line 168
    :pswitch_5
    const-string v5, "_size asc"

    .line 169
    goto :goto_1

    .line 171
    :pswitch_6
    const-string v5, "date_modified desc"

    .line 172
    goto :goto_1

    .line 174
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " asc, "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " asc"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 183
    :cond_0
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "_data"

    aput-object v0, v2, v11

    const/4 v0, 0x2

    const-string v9, "_size"

    aput-object v9, v2, v0

    const/4 v0, 0x3

    const-string v9, "date_modified"

    aput-object v9, v2, v0

    .line 187
    .local v2, columns:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 163
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public refreshCategoryInfo()V
    .locals 19

    .prologue
    .line 192
    sget-object v14, Lcom/android/fileexplorer/FileCategoryHelper;->sCategories:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    .local v14, arr$:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    move-object v0, v14

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    aget-object v4, v14, v16

    .line 193
    .local v4, fc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/FileCategoryHelper;->setCategoryInfo(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;JJ)V

    .line 192
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 197
    .end local v4           #fc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    :cond_0
    const-string v18, "external"

    .line 199
    .local v18, volumeName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 200
    .local v6, uri:Landroid/net/Uri;
    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    .line 202
    invoke-static/range {v18 .. v18}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 203
    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    .line 205
    invoke-static/range {v18 .. v18}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 206
    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/FileCategoryHelper;->refreshMediaCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;Landroid/net/Uri;)Z

    .line 209
    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "category"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "COUNT(category)"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "SUM(_size)"

    aput-object v4, v7, v3

    .line 212
    .local v7, columns:[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/provider/MediaStore$OtherFile$Media;->getCategoryContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fileexplorer/FileCategoryHelper;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 214
    .local v15, c:Landroid/database/Cursor;
    if-nez v15, :cond_1

    .line 215
    const-string v3, "FileCategoryHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to query uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v6           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 218
    :cond_1
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/fileexplorer/FileCategoryHelper;->getCategoryFromDbInt(I)Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    move-result-object v4

    .line 220
    .restart local v4       #fc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v8, p0

    move-object v9, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/fileexplorer/FileCategoryHelper;->setCategoryInfo(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;JJ)V

    .line 221
    const-string v3, "FileCategoryHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrieved "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->name()Ljava/lang/String;

    move-result-object v4

    .end local v4           #fc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " info >>> count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 223
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public setCurCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    .line 75
    return-void
.end method

.method public setCustomCategory([Ljava/lang/String;)V
    .locals 3
    .parameter "exts"

    .prologue
    .line 82
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryHelper;->mCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    .line 83
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->filters:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->filters:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->filters:Ljava/util/HashMap;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    new-instance v2, Lcom/android/fileexplorer/FilenameExtFilter;

    invoke-direct {v2, p1}, Lcom/android/fileexplorer/FilenameExtFilter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method
