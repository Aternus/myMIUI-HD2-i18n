.class public Lcom/android/browser/model/BrowserDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BrowserDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;
    }
.end annotation


# static fields
.field public static final BOOKMARK_FLAGS_ONE_CLICK_LAUNCHER:I = 0x1

.field public static final COLUMN_FOLDER_CREATED:Ljava/lang/String; = "created"

.field public static final COLUMN_FOLDER_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_FOLDER_FLAGS:Ljava/lang/String; = "flags"

.field public static final COLUMN_FOLDER_POSITION:Ljava/lang/String; = "position"

.field public static final COLUMN_FOLDER_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_HISTORY_BOOKMARK:Ljava/lang/String; = "bookmark"

.field public static final COLUMN_HISTORY_CREATED:Ljava/lang/String; = "created"

.field public static final COLUMN_HISTORY_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_HISTORY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_HISTORY_FAVICON:Ljava/lang/String; = "favicon"

.field public static final COLUMN_HISTORY_FLAGS:Ljava/lang/String; = "flags"

.field public static final COLUMN_HISTORY_FOLDER_ID:Ljava/lang/String; = "folder_id"

.field public static final COLUMN_HISTORY_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_HISTORY_MODE:Ljava/lang/String; = "mode"

.field public static final COLUMN_HISTORY_POSITION:Ljava/lang/String; = "position"

.field public static final COLUMN_HISTORY_SEARCHABLE_KEYWORDS:Ljava/lang/String; = "searchable_keywords"

.field public static final COLUMN_HISTORY_SEARCHABLE_URL:Ljava/lang/String; = "searchable_url"

.field public static final COLUMN_HISTORY_THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field public static final COLUMN_HISTORY_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_HISTORY_TOUCH_ICON:Ljava/lang/String; = "touch_icon"

.field public static final COLUMN_HISTORY_URL:Ljava/lang/String; = "url"

.field public static final COLUMN_HISTORY_USER_ENTERED:Ljava/lang/String; = "user_entered"

.field public static final COLUMN_HISTORY_VISITS:Ljava/lang/String; = "visits"

.field public static final COLUMN_TOPSITE_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_TOPSITE_INDEX:Ljava/lang/String; = "number"

.field public static final COLUMN_TOPSITE_SEARCHABLE_KEYWORDS:Ljava/lang/String; = "searchable_keywords"

.field public static final COLUMN_TOPSITE_SEARCHABLE_URL:Ljava/lang/String; = "searchable_url"

.field public static final COLUMN_TOPSITE_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOPSITE_URL:Ljava/lang/String; = "url"

.field public static final DB_TABLE_FOLDER:Ljava/lang/String; = "folder"

.field public static final DB_TABLE_HISTORY:Ljava/lang/String; = "history"

.field public static final DB_TABLE_TOPSITE:Ljava/lang/String; = "topsite"

.field public static final FOLDER_FLAGS_ONE_CLICK_LAUNCHER:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = null

.field public static final preloadQuickAccessLinks:[Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList; = null

.field private static final sDatabaseName:Ljava/lang/String; = "history.db"

.field private static final sDatabaseVersion:I = 0x1f


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, "http://www.google.com/"

    const-string v10, "google.png"

    .line 21
    const-class v1, Lcom/android/browser/model/BrowserDatabaseHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/browser/model/BrowserDatabaseHelper;->LOGTAG:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, arr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;>;"
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    sget-boolean v1, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    const-string v2, "\u5c0f\u7c73\u8bba\u575b"

    const-string v3, "xiaomi_bbs.png"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "http://bbs.xiaomi.com/"

    aput-object v5, v4, v7

    invoke-direct {v1, v2, v3, v4}, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    new-instance v1, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    const-string v2, "\u767e\u5ea6"

    const-string v3, "baidu.png"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "http://m.baidu.com/?from=1269a/"

    aput-object v5, v4, v7

    const-string v5, "http://www.baidu.com/"

    aput-object v5, v4, v8

    const-string v5, "http://m.baidu.com/"

    aput-object v5, v4, v9

    const/4 v5, 0x3

    const-string v6, "http://baidu.com/"

    aput-object v6, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    const-string v2, "\u8c37\u6b4c"

    const-string v3, "google.png"

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "http://www.google.com.hk/"

    aput-object v4, v3, v7

    const-string v4, "http://www.google.com/"

    aput-object v11, v3, v8

    invoke-direct {v1, v2, v10, v3}, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    const-string v2, "\u65b0\u6d6a"

    const-string v3, "sina.png"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "http://3g.sina.com.cn/"

    aput-object v5, v4, v7

    invoke-direct {v1, v2, v3, v4}, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    const-string v2, "QQ"

    const-string v3, "qq.png"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "http://3g.qq.com/"

    aput-object v5, v4, v7

    invoke-direct {v1, v2, v3, v4}, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    const-string v2, "\u51e4\u51f0\u7f51"

    const-string v3, "ifeng.png"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "http://i.ifeng.com/?ch=rj_mr"

    aput-object v5, v4, v7

    invoke-direct {v1, v2, v3, v4}, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    const-string v2, "\u7f51\u6613"

    const-string v3, "163.png"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "http://3g.163.com/"

    aput-object v5, v4, v7

    invoke-direct {v1, v2, v3, v4}, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    sput-object v1, Lcom/android/browser/model/BrowserDatabaseHelper;->preloadQuickAccessLinks:[Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    .line 87
    sget-object v1, Lcom/android/browser/model/BrowserDatabaseHelper;->preloadQuickAccessLinks:[Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    return-void

    .line 81
    :cond_1
    new-instance v1, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    const-string v2, "Google"

    const-string v3, "google.png"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "http://www.google.com/"

    aput-object v11, v3, v7

    invoke-direct {v1, v2, v10, v3}, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    const-string v2, "Facebook"

    const-string v3, "images_facebook.gif"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "http://facebook.com"

    aput-object v5, v4, v7

    invoke-direct {v1, v2, v3, v4}, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    const-string v2, "Twitter"

    const-string v3, "images_twitter.gif"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "http://twitter.com/"

    aput-object v5, v4, v7

    invoke-direct {v1, v2, v3, v4}, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 101
    const-string v0, "history.db"

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 102
    iput-object p1, p0, Lcom/android/browser/model/BrowserDatabaseHelper;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method public static getPreloadPic(Ljava/lang/String;)Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;
    .locals 7
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    .line 254
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v6

    .line 264
    :goto_0
    return-object v5

    .line 257
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v5, Lcom/android/browser/model/BrowserDatabaseHelper;->preloadQuickAccessLinks:[Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 258
    sget-object v5, Lcom/android/browser/model/BrowserDatabaseHelper;->preloadQuickAccessLinks:[Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    aget-object v5, v5, v1

    iget-object v0, v5, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;->Urls:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 259
    .local v4, str:Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    sget-object v5, Lcom/android/browser/model/BrowserDatabaseHelper;->preloadQuickAccessLinks:[Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    aget-object v5, v5, v1

    goto :goto_0

    .line 258
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 257
    .end local v4           #str:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    move-object v5, v6

    .line 264
    goto :goto_0
.end method

.method private updatePreloadQuickAccessLinks(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 20
    .parameter "db"

    .prologue
    .line 165
    const/16 v16, -0x1

    .line 167
    .local v16, launcherID:I
    const-string v3, "folder"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const-string v5, "flags=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "_id"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 173
    .local v10, c:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 176
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 177
    const/4 v2, -0x1

    move/from16 v0, v16

    move v1, v2

    if-ne v0, v1, :cond_1

    .line 220
    :goto_0
    return-void

    .line 179
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    .line 183
    .local v11, creationTime:J
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    :try_start_0
    sget-object v2, Lcom/android/browser/model/BrowserDatabaseHelper;->preloadQuickAccessLinks:[Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    array-length v2, v2

    if-ge v14, v2, :cond_4

    .line 184
    sget-object v2, Lcom/android/browser/model/BrowserDatabaseHelper;->preloadQuickAccessLinks:[Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    aget-object v2, v2, v14

    iget-object v2, v2, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;->Urls:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v19, v2, v3

    .line 185
    .local v19, url:Ljava/lang/String;
    sget-object v2, Lcom/android/browser/model/BrowserDatabaseHelper;->preloadQuickAccessLinks:[Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    aget-object v2, v2, v14

    move-object v0, v2

    iget-object v0, v0, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;->Title:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 188
    .local v17, name:Ljava/lang/String;
    const-string v3, "history"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const-string v5, "url=? AND folder_id=?"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v19, v6, v2

    const/4 v2, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 193
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 198
    .local v15, id:I
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 201
    const/4 v2, -0x1

    if-eq v15, v2, :cond_2

    .line 202
    const-string v2, "DELETE FROM history where _id=%d;"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 203
    .local v18, sql:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    .end local v18           #sql:Ljava/lang/String;
    :cond_2
    const-string v2, "INSERT INTO history (`title`, `url`, `searchable_url`, `searchable_keywords`, `bookmark`, `visits`, `folder_id`, `date`, `position`) VALUES (\'%s\', \'%s\', \'%s\', \'%s\', \'%d\', \'%d\', \'%d\', \'%d\', \'%d\');"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    aput-object v19, v3, v4

    const/4 v4, 0x2

    invoke-static/range {v19 .. v19}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getSearchable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    const/4 v6, 0x1

    aput-object v17, v5, v6

    invoke-static {v5}, Lcom/android/browser/model/MiRenUrlDataProvider;->getSearchableKeywords([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 212
    .restart local v18       #sql:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 196
    .end local v15           #id:I
    .end local v18           #sql:Ljava/lang/String;
    :cond_3
    const/4 v15, -0x1

    .restart local v15       #id:I
    goto :goto_2

    .line 214
    .end local v15           #id:I
    .end local v17           #name:Ljava/lang/String;
    .end local v19           #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v13, v2

    .line 215
    .local v13, ex:Landroid/database/SQLException;
    sget-object v2, Lcom/android/browser/model/BrowserDatabaseHelper;->LOGTAG:Ljava/lang/String;

    const-string v3, "failed to update preload quick access links."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    throw v13

    .line 219
    .end local v13           #ex:Landroid/database/SQLException;
    :cond_4
    invoke-static {}, Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;->getInstance()Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;->notifyChanges()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    .line 108
    :try_start_0
    const-string v4, "CREATE TABLE history (_id INTEGER PRIMARY KEY,title TEXT,url TEXT,searchable_url TEXT,searchable_keywords TEXT,visits INTEGER,date LONG,created LONG,description TEXT,bookmark INTEGER,favicon BLOB DEFAULT NULL,thumbnail BLOB DEFAULT NULL,touch_icon BLOB DEFAULT NULL,user_entered INTEGER,flags INTEGER,folder_id INTEGER,position FLOAT,birdview_tag TEXT,birdview_xpath TEXT,mode INTEGER);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    const-string v4, "CREATE TABLE folder (_id INTEGER PRIMARY KEY,title TEXT,flags INTEGER,date LONG,created LONG,position FLOAT);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    const-string v4, "CREATE TABLE topsite (_id INTEGER PRIMARY KEY,number TEXT,title TEXT,url TEXT,searchable_url TEXT,searchable_keywords TEXT);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 151
    .local v0, creationTime:J
    const-string v4, "INSERT INTO folder (`title`, `flags`, `created`, `date`, `position`) VALUES (?, \'%d\', \'%d\', \'%d\', \'%d\');"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, sql:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/browser/model/BrowserDatabaseHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f09002b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/android/browser/model/BrowserDatabaseHelper;->updatePreloadQuickAccessLinks(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    return-void

    .line 158
    .end local v0           #creationTime:J
    .end local v3           #sql:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 159
    .local v2, ex:Landroid/database/SQLException;
    sget-object v4, Lcom/android/browser/model/BrowserDatabaseHelper;->LOGTAG:Ljava/lang/String;

    const-string v5, "couldn\'t create table in downloads database"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    throw v2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v1, 0x1f

    .line 224
    if-ne p3, v1, :cond_0

    if-ge p2, v1, :cond_0

    .line 225
    invoke-direct {p0, p1}, Lcom/android/browser/model/BrowserDatabaseHelper;->updatePreloadQuickAccessLinks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 239
    :goto_0
    return-void

    .line 230
    :cond_0
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS history"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    const-string v1, "DROP TABLE IF EXISTS folder"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 232
    const-string v1, "DROP TABLE IF EXISTS topsite"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/browser/model/BrowserDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 233
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 234
    .local v0, ex:Landroid/database/SQLException;
    sget-object v1, Lcom/android/browser/model/BrowserDatabaseHelper;->LOGTAG:Ljava/lang/String;

    const-string v2, "couldn\'t drop table in downloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    throw v0
.end method
