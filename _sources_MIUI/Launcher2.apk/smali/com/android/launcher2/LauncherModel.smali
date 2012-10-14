.class public Lcom/android/launcher2/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherModel$Loader;,
        Lcom/android/launcher2/LauncherModel$DataCarriedRunnable;,
        Lcom/android/launcher2/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field private static sDelayedUpdateBuffer:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllAppsList:Lcom/android/launcher2/AllAppsList;

.field private final mAllAppsListLock:Ljava/lang/Object;

.field private final mApp:Lcom/android/launcher2/LauncherApplication;

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/launcher2/DeferredHandler;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mLoader:Lcom/android/launcher2/LauncherModel$Loader;

.field private final mLock:Ljava/lang/Object;

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/IconCache;)V
    .locals 1
    .parameter "app"
    .parameter "iconCache"

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Lcom/android/launcher2/DeferredHandler;

    invoke-direct {v0}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    .line 76
    new-instance v0, Lcom/android/launcher2/LauncherModel$Loader;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherModel$Loader;-><init>(Lcom/android/launcher2/LauncherModel;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Lcom/android/launcher2/AllAppsList;

    invoke-direct {v0}, Lcom/android/launcher2/AllAppsList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    .line 103
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 104
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 105
    return-void
.end method

.method static synthetic access$1200(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 68
    invoke-static/range {p0 .. p5}, Lcom/android/launcher2/LauncherModel;->loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$Loader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z
    .locals 10
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 249
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move v8, v9

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJIIZ)Z

    move-result p0

    .end local p0
    return p0
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJIIZ)Z
    .locals 6
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "reload"

    .prologue
    .line 257
    iput-wide p2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 258
    iput-wide p4, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 259
    iput p6, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 260
    iput p7, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 262
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 263
    .local p2, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, p2}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 268
    const-string p0, "Launcher.Model"

    .end local p0
    const-string p3, "Adding item to database (%d, %d) of screen %d"

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    .end local p4
    const/4 p5, 0x0

    iget p6, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .end local p6
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p4, p5

    const/4 p5, 0x1

    iget p6, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p4, p5

    const/4 p5, 0x2

    iget-wide p6, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    aput-object p6, p4, p5

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object p0, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 274
    .local p0, result:Landroid/net/Uri;
    if-eqz p0, :cond_2

    .line 275
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .end local p0           #result:Landroid/net/Uri;
    const/4 p2, 0x1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .end local p2           #values:Landroid/content/ContentValues;
    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long p2, p0

    iput-wide p2, p1, Lcom/android/launcher2/ItemInfo;->id:J

    .line 276
    if-eqz p8, :cond_1

    .line 277
    iget-wide p2, p1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {p2, p3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 278
    .local p0, c:Landroid/database/Cursor;
    if-eqz p0, :cond_1

    .line 280
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 281
    invoke-virtual {p1, p0}, Lcom/android/launcher2/ItemInfo;->load(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 288
    .end local p0           #c:Landroid/database/Cursor;
    :cond_1
    const/4 p0, 0x1

    .line 291
    :goto_0
    return p0

    .line 284
    .restart local p0       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception p1

    .end local p1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    .line 291
    .local p0, result:Landroid/net/Uri;
    .restart local p1
    .restart local p2       #values:Landroid/content/ContentValues;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 117
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 119
    invoke-static/range {p0 .. p7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    move-result v0

    goto :goto_0
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z
    .locals 11
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 363
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "Launcher.Model"

    const-string v4, "Deleting item from database (%d, %d) of screen %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    iget v6, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x2

    iget-wide v7, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :try_start_0
    iget-wide v3, p1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    instance-of v3, p1, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v3

    iget-object v2, v3, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    .line 372
    .local v2, loader:Lcom/android/launcher2/LauncherModel$Loader;
    monitor-enter v2

    .line 373
    :try_start_1
    check-cast p1, Lcom/android/launcher2/ShortcutInfo;

    .end local p1
    #calls: Lcom/android/launcher2/LauncherModel$Loader;->onRemoveItem(Lcom/android/launcher2/ShortcutInfo;)V
    invoke-static {v2, p1}, Lcom/android/launcher2/LauncherModel$Loader;->access$000(Lcom/android/launcher2/LauncherModel$Loader;Lcom/android/launcher2/ShortcutInfo;)V

    .line 374
    monitor-exit v2

    .end local v2           #loader:Lcom/android/launcher2/LauncherModel$Loader;
    :cond_0
    move v3, v10

    .line 376
    :goto_0
    return v3

    .line 367
    .restart local p0
    .restart local p1
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/database/sqlite/SQLiteException;
    move v3, v9

    .line 368
    goto :goto_0

    .line 374
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    .end local p0
    .end local p1
    .restart local v2       #loader:Lcom/android/launcher2/LauncherModel$Loader;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher2/UserFolderInfo;)Z
    .locals 5
    .parameter "context"
    .parameter "info"

    .prologue
    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 385
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 386
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 387
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher2/LiveFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1657
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderInfo;

    .line 1658
    .local v0, folderInfo:Lcom/android/launcher2/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/LiveFolderInfo;

    if-nez v1, :cond_1

    .line 1660
    :cond_0
    new-instance v0, Lcom/android/launcher2/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-direct {v0}, Lcom/android/launcher2/LiveFolderInfo;-><init>()V

    .line 1661
    .restart local v0       #folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    :cond_1
    check-cast v0, Lcom/android/launcher2/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    return-object v0
.end method

.method private static findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher2/UserFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1642
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderInfo;

    .line 1643
    .local v0, folderInfo:Lcom/android/launcher2/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/UserFolderInfo;

    if-nez v1, :cond_1

    .line 1645
    :cond_0
    new-instance v0, Lcom/android/launcher2/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-direct {v0}, Lcom/android/launcher2/UserFolderInfo;-><init>()V

    .line 1646
    .restart local v0       #folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    :cond_1
    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    return-object v0
.end method

.method static flashDelayedUpdateItemFlags(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 306
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    if-nez v3, :cond_0

    .line 307
    const/4 v3, 0x0

    .line 316
    :goto_0
    return v3

    .line 309
    :cond_0
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 310
    .local v1, info:Lcom/android/launcher2/ItemInfo;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 311
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "launchCount"

    iget v4, v1, Lcom/android/launcher2/ItemInfo;->launchCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v3, "itemFlags"

    iget v4, v1, Lcom/android/launcher2/ItemInfo;->itemFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    iget-wide v3, v1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {p0, v3, v4, v2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)Z

    goto :goto_1

    .line 315
    .end local v1           #info:Lcom/android/launcher2/ItemInfo;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 316
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static getAddItemOperation(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;
    .locals 2
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 233
    iput-wide p1, p0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 234
    iput-wide p3, p0, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 235
    iput p5, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 236
    iput p6, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 238
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 241
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method static getMoveItemOperation(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;
    .locals 3
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 165
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    const-string v1, "cellX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v1, "cellY"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v1, "spanX"

    iget v2, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v1, "spanY"

    iget v2, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string v1, "screen"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method static getOperationForDraggingItem(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;
    .locals 4
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 130
    invoke-static/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->getAddItemOperation(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->getMoveItemOperation(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto :goto_0
.end method

.method private infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher2/ShortcutInfo;
    .locals 13
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v12, 0x1

    .line 1532
    new-instance v6, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v6}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 1534
    .local v6, info:Lcom/android/launcher2/ShortcutInfo;
    const-string v9, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    iput-object v9, v6, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1535
    const-string v9, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1536
    const/4 v9, 0x0

    iput v9, v6, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    .line 1538
    const-string v9, "android.intent.action.VIEW_CONTACT_SHORTCUT"

    iget-object v10, v6, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1539
    invoke-virtual {v6, p1}, Lcom/android/launcher2/ShortcutInfo;->loadContactInfo(Landroid/content/Context;)V

    .line 1540
    const/4 v9, 0x2

    iput v9, v6, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    .line 1572
    :goto_0
    return-object v6

    .line 1543
    :cond_0
    const-string v9, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 1544
    .local v1, bitmap:Landroid/os/Parcelable;
    const/4 v4, 0x0

    .line 1546
    .local v4, icon:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    instance-of v9, v1, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_3

    .line 1547
    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0

    .line 1548
    iput v12, v6, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    .line 1565
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 1566
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1567
    iput-boolean v12, v6, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    .line 1569
    :cond_2
    invoke-virtual {v6, v4}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1550
    :cond_3
    const-string v9, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 1551
    .local v3, extra:Landroid/os/Parcelable;
    if-eqz v3, :cond_1

    instance-of v9, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v9, :cond_1

    .line 1553
    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v9, v0

    iput-object v9, v6, Lcom/android/launcher2/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1554
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1555
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    iget-object v9, v6, Lcom/android/launcher2/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v9, v9, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 1557
    .local v8, resources:Landroid/content/res/Resources;
    iget-object v9, v6, Lcom/android/launcher2/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v9, v9, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1558
    .local v5, id:I
    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 1559
    .end local v5           #id:I
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    .end local v8           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 1560
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "Launcher.Model"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not load shortcut icon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V
    .locals 10
    .parameter "context"
    .parameter "c"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "liveFolderInfo"

    .prologue
    const v9, 0x7f02006b

    .line 1578
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1579
    .local v1, iconType:I
    packed-switch v1, :pswitch_data_0

    .line 1599
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    .line 1603
    :goto_0
    return-void

    .line 1581
    :pswitch_0
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1582
    .local v4, packageName:Ljava/lang/String;
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1583
    .local v5, resourceName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1585
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1586
    .local v6, resources:Landroid/content/res/Resources;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1587
    .local v2, id:I
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1594
    .end local v2           #id:I
    .end local v6           #resources:Landroid/content/res/Resources;
    :goto_1
    new-instance v7, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v7}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1595
    iget-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v4, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 1596
    iget-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v5, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    goto :goto_0

    .line 1589
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 1590
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z
    .locals 5
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    const/4 v4, 0x0

    .line 142
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 143
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 145
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "container"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    const-string v2, "cellX"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string v2, "cellY"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    const-string v2, "spanX"

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string v2, "spanY"

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v2, "screen"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 153
    iput-wide p2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 154
    iput-wide p4, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 155
    iput p6, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 156
    iput p7, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 157
    const/4 v2, 0x1

    .line 160
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static updateItemFlagsInDatabaseDelayed(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 320
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    .line 323
    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method static updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)Z
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 348
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p3, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    .line 350
    :goto_0
    return v2

    :cond_0
    move v2, v5

    .line 348
    goto :goto_0

    .line 349
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/database/sqlite/SQLiteException;
    move v2, v5

    .line 350
    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z
    .locals 7
    .parameter "context"
    .parameter "item"

    .prologue
    .line 331
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 333
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p1, v0}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 335
    const-string v1, "Launcher.Model"

    const-string v2, "Update item in database (%d, %d) of screen %d under container %d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v5, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v5, p1, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-wide v1, p1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {p0, v1, v2, v0}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher2/CellLayout$CellInfo;)Lcom/android/launcher2/ShortcutInfo;
    .locals 12
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 1503
    if-eqz p3, :cond_0

    iget-wide v2, p3, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    move-wide v4, v2

    .line 1504
    .local v4, screenId:J
    :goto_0
    if-eqz p3, :cond_1

    iget v0, p3, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    move v6, v0

    .line 1505
    .local v6, cellX:I
    :goto_1
    if-eqz p3, :cond_2

    iget v0, p3, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    move v7, v0

    .line 1506
    .local v7, cellY:I
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v1

    .line 1507
    .local v1, info:Lcom/android/launcher2/ShortcutInfo;
    iget-object v0, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v0, :cond_3

    move-object v0, v11

    .line 1528
    :goto_3
    return-object v0

    .line 1503
    .end local v1           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v4           #screenId:J
    .end local v6           #cellX:I
    .end local v7           #cellY:I
    :cond_0
    const-wide/16 v2, -0x1

    move-wide v4, v2

    goto :goto_0

    .restart local v4       #screenId:J
    :cond_1
    move v6, v8

    .line 1504
    goto :goto_1

    .restart local v6       #cellX:I
    :cond_2
    move v7, v8

    .line 1505
    goto :goto_2

    .line 1510
    .restart local v1       #info:Lcom/android/launcher2/ShortcutInfo;
    .restart local v7       #cellY:I
    :cond_3
    iget v0, v1, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    .line 1511
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    monitor-enter v0

    .line 1512
    :try_start_0
    iget-object v2, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 1513
    .local v9, component:Landroid/content/ComponentName;
    if-eqz v9, :cond_4

    .line 1514
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1515
    monitor-exit v0

    move-object v0, v11

    goto :goto_3

    .line 1518
    :cond_4
    iget-object v2, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    .line 1519
    .local v10, uri:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedUris:Ljava/util/HashSet;

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1520
    monitor-exit v0

    move-object v0, v11

    goto :goto_3

    .line 1522
    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    #calls: Lcom/android/launcher2/LauncherModel$Loader;->onLoadShortcut(Lcom/android/launcher2/ShortcutInfo;)V
    invoke-static {v2, v1}, Lcom/android/launcher2/LauncherModel$Loader;->access$1500(Lcom/android/launcher2/LauncherModel$Loader;Lcom/android/launcher2/ShortcutInfo;)V

    .line 1524
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1526
    .end local v9           #component:Landroid/content/ComponentName;
    .end local v10           #uri:Ljava/lang/String;
    :cond_6
    const-wide/16 v2, -0x64

    const/4 v8, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJIIZ)Z

    .line 1527
    invoke-virtual {v1, p1}, Lcom/android/launcher2/ShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    move-object v0, v1

    .line 1528
    goto :goto_3

    .line 1524
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 1667
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$Loader;->dumpState()V

    .line 1669
    return-void
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v0}, Lcom/android/launcher2/IconCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    .line 1494
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1496
    .local v0, data:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1498
    :goto_0
    return-object v2

    .line 1497
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1498
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;
    .locals 12
    .parameter "intent"
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    .line 1436
    const/4 v3, 0x0

    .line 1437
    .local v3, icon:Landroid/graphics/Bitmap;
    new-instance v5, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v5}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 1438
    .local v5, info:Lcom/android/launcher2/ShortcutInfo;
    const/4 v10, 0x1

    iput v10, v5, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 1442
    move-object v0, p2

    move/from16 v1, p8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1443
    move-object v0, p2

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v5, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    .line 1444
    iget v10, v5, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    packed-switch v10, :pswitch_data_0

    .line 1479
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1480
    const/4 v10, 0x1

    iput-boolean v10, v5, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    .line 1484
    :cond_1
    :goto_0
    const/4 v10, 0x2

    iget v11, v5, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    if-eq v10, v11, :cond_2

    .line 1485
    invoke-virtual {v5, v3}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1486
    iget-boolean v10, v5, Lcom/android/launcher2/ItemInfo;->isRetained:Z

    if-nez v10, :cond_2

    .line 1487
    invoke-virtual {v5, p3}, Lcom/android/launcher2/ShortcutInfo;->wrapIconWithBorder(Landroid/content/Context;)V

    .line 1490
    :cond_2
    return-object v5

    .line 1446
    :pswitch_0
    iput-object p1, v5, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1447
    invoke-virtual {v5, p3}, Lcom/android/launcher2/ShortcutInfo;->loadContactInfo(Landroid/content/Context;)V

    goto :goto_0

    .line 1450
    :pswitch_1
    move-object v0, p2

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1451
    .local v7, packageName:Ljava/lang/String;
    move-object v0, p2

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1452
    .local v8, resourceName:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1454
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1455
    const/4 v10, 0x1

    iput-boolean v10, v5, Lcom/android/launcher2/ItemInfo;->isRetained:Z

    .line 1459
    :cond_3
    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 1460
    .local v9, resources:Landroid/content/res/Resources;
    if-eqz v9, :cond_4

    .line 1461
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1462
    .local v4, id:I
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10, p3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1468
    .end local v4           #id:I
    .end local v9           #resources:Landroid/content/res/Resources;
    :cond_4
    :goto_1
    if-nez v3, :cond_1

    .line 1473
    .end local v6           #packageManager:Landroid/content/pm/PackageManager;
    .end local v7           #packageName:Ljava/lang/String;
    .end local v8           #resourceName:Ljava/lang/String;
    :pswitch_2
    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1474
    if-eqz v3, :cond_0

    goto :goto_0

    .line 1464
    .restart local v6       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v7       #packageName:Ljava/lang/String;
    .restart local v8       #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_1

    .line 1444
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/ShortcutInfo;
    .locals 6
    .parameter "manager"
    .parameter "intent"
    .parameter "context"
    .parameter "c"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    const/4 v5, 0x0

    .line 1379
    const/4 v1, 0x0

    .line 1380
    .local v1, icon:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v2}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 1382
    .local v2, info:Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1383
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 1384
    const/4 v4, 0x0

    .line 1426
    :goto_0
    return-object v4

    .line 1394
    :cond_0
    invoke-virtual {p1, p2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1395
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 1396
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher2/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1399
    :cond_1
    if-nez v1, :cond_2

    .line 1400
    if-eqz p4, :cond_2

    .line 1401
    invoke-virtual {p0, p4, p5}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1405
    :cond_2
    if-nez v1, :cond_3

    .line 1406
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1407
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    .line 1409
    :cond_3
    invoke-virtual {v2, v1}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1412
    if-eqz v3, :cond_4

    .line 1413
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1416
    :cond_4
    iget-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_5

    .line 1417
    if-eqz p4, :cond_5

    .line 1418
    invoke-interface {p4, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1422
    :cond_5
    iget-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    .line 1423
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1425
    :cond_6
    iput v5, v2, Lcom/android/launcher2/ItemInfo;->itemType:I

    move-object v4, v2

    .line 1426
    goto :goto_0
.end method

.method public initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 2
    .parameter "callbacks"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 398
    monitor-exit v0

    .line 399
    return-void

    .line 398
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 p1, v0

    .line 417
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v5, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v17, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v7, v4

    .line 421
    .local v7, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_0
    if-nez v7, :cond_2

    .line 422
    const-string v19, "Launcher.Model"

    const-string v20, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    :goto_1
    return-void

    .line 420
    .end local v7           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_1
    const/16 v19, 0x0

    move-object/from16 v7, v19

    goto :goto_0

    .line 426
    .restart local v7       #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_2
    const-string v19, "Launcher.Model"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Got action "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 429
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, action:Ljava/lang/String;
    const-string v20, "android.intent.action.ACCESS_CONTROL_CHANGED"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 431
    .local v12, isAccessControl:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/AllAppsList;->clear()V

    .line 432
    const-string v20, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    const-string v20, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    const-string v20, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    if-eqz v12, :cond_17

    .line 436
    :cond_3
    if-eqz v12, :cond_4

    const-string v20, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v15, v20

    .line 438
    .local v15, packageName:Ljava/lang/String;
    :goto_2
    const-string v20, "android.intent.extra.REPLACING"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 440
    .local v18, replacing:Z
    if-eqz v12, :cond_5

    const-string v20, "android.intent.extra.KEY_EVENT"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const/high16 v21, 0x200

    and-int v20, v20, v21

    const/high16 v21, 0x200

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/16 v20, 0x1

    move/from16 v13, v20

    .line 443
    .local v13, isAccessControlHide:Z
    :goto_3
    const-string v20, "android.intent.extra.DONT_KILL_APP"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 445
    .local v8, dontKillApp:Z
    if-eqz v12, :cond_6

    const-string v20, "*"

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 446
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 447
    monitor-exit v19

    goto/16 :goto_1

    .line 579
    .end local v4           #action:Ljava/lang/String;
    .end local v8           #dontKillApp:Z
    .end local v12           #isAccessControl:Z
    .end local v13           #isAccessControlHide:Z
    .end local v15           #packageName:Ljava/lang/String;
    .end local v18           #replacing:Z
    :catchall_0
    move-exception v20

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 436
    .restart local v4       #action:Ljava/lang/String;
    .restart local v12       #isAccessControl:Z
    :cond_4
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v15, v20

    goto :goto_2

    .line 440
    .restart local v15       #packageName:Ljava/lang/String;
    .restart local v18       #replacing:Z
    :cond_5
    const/16 v20, 0x0

    move/from16 v13, v20

    goto :goto_3

    .line 450
    .restart local v8       #dontKillApp:Z
    .restart local v13       #isAccessControlHide:Z
    :cond_6
    if-eqz v12, :cond_7

    .line 451
    const-string v20, "android.intent.extra.KEY_EVENT"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const/high16 v21, 0x200

    and-int v20, v20, v21

    const-string v21, "android.intent.extra.INITIAL_INTENTS"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    const/high16 v22, 0x200

    and-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 455
    monitor-exit v19

    goto/16 :goto_1

    .line 459
    :cond_7
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_9

    .line 461
    :cond_8
    monitor-exit v19

    goto/16 :goto_1

    .line 464
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearCustomizedIcons(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    :try_start_2
    move-object/from16 v0, p1

    move-object v1, v15

    move v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherSettings;->updateHomeScreen(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 472
    if-nez v12, :cond_a

    const/high16 v20, 0x200

    :try_start_3
    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->isAccessControlled(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 474
    monitor-exit v19

    goto/16 :goto_1

    .line 467
    :catch_0
    move-exception v9

    .line 468
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    const-string v20, "Launcher.Model"

    const-string v21, "database didnot ready,ignore this change"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    monitor-exit v19

    goto/16 :goto_1

    .line 477
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :cond_a
    const-string v20, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 499
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_c

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 503
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_12

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 506
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    .line 507
    .local v11, info:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v20, v0

    move-object v0, v11

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/IconCache;->remove(Ljava/lang/String;)V

    goto :goto_5

    .line 479
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #info:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    :cond_d
    const-string v20, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 480
    if-nez v18, :cond_b

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllAppsList;->removePackage(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 485
    :cond_e
    const-string v20, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 486
    if-nez v18, :cond_f

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 489
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 491
    :cond_10
    if-eqz v12, :cond_b

    .line 492
    if-eqz v13, :cond_11

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object v1, v15

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllAppsList;->removePackage(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 495
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 511
    :cond_12
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_13

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/launcher2/LauncherModel$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$1;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 520
    :cond_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_14

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/launcher2/LauncherModel$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$2;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 529
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/launcher2/LauncherModel$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$3;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 578
    .end local v8           #dontKillApp:Z
    .end local v13           #isAccessControlHide:Z
    .end local v15           #packageName:Ljava/lang/String;
    .end local v18           #replacing:Z
    :cond_15
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/AllAppsList;->clear()V

    .line 579
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 580
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_16

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 582
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    #calls: Lcom/android/launcher2/LauncherModel$Loader;->onRemoveItems(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel$Loader;->access$100(Lcom/android/launcher2/LauncherModel$Loader;Ljava/util/ArrayList;)V

    .line 583
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 585
    :cond_16
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 587
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v5

    #calls: Lcom/android/launcher2/LauncherModel$Loader;->onLoadShortcuts(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel$Loader;->access$200(Lcom/android/launcher2/LauncherModel$Loader;Ljava/util/ArrayList;)V

    .line 588
    monitor-exit v19

    goto/16 :goto_1

    :catchall_1
    move-exception v20

    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v20

    .line 535
    :cond_17
    :try_start_6
    const-string v20, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    const-string v20, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 537
    :cond_18
    const-string v20, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 539
    .local v16, packages:[Ljava/lang/String;
    if-eqz v16, :cond_19

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_1a

    .line 540
    :cond_19
    monitor-exit v19

    goto/16 :goto_1

    .line 542
    :cond_1a
    const-string v20, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 543
    move-object/from16 v6, v16

    .local v6, arr$:[Ljava/lang/String;
    array-length v14, v6

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_7
    if-ge v10, v14, :cond_1c

    aget-object v15, v6, v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 545
    .restart local v15       #packageName:Ljava/lang/String;
    :try_start_7
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherSettings;->updateHomeScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 546
    const/high16 v20, 0x200

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->isAccessControlled(Ljava/lang/String;I)Z

    move-result v20

    if-nez v20, :cond_1b

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 543
    :cond_1b
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 549
    :catch_1
    move-exception v20

    move-object/from16 v9, v20

    .line 550
    .restart local v9       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_8
    const-string v20, "Launcher.Model"

    const-string v21, "database didnot ready,ignore this change"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    monitor-exit v19

    goto/16 :goto_1

    .line 554
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    .end local v15           #packageName:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_15

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/launcher2/LauncherModel$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$4;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 563
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v14           #len$:I
    :cond_1d
    const-string v20, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 564
    move-object/from16 v6, v16

    .restart local v6       #arr$:[Ljava/lang/String;
    array-length v14, v6

    .restart local v14       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_8
    if-ge v10, v14, :cond_1e

    aget-object v15, v6, v10

    .line 565
    .restart local v15       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllAppsList;->removePackage(Ljava/lang/String;)V

    .line 564
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 567
    .end local v15           #packageName:Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_15

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/launcher2/LauncherModel$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$5;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_6

    .line 583
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v14           #len$:I
    .end local v16           #packages:[Ljava/lang/String;
    :catchall_2
    move-exception v20

    :try_start_9
    monitor-exit v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v20
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/LauncherModel$Loader;->startLoader(Landroid/content/Context;Z)V

    .line 403
    return-void
.end method

.method public stopLoader()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$Loader;->stopLoader()V

    .line 407
    return-void
.end method

.method updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/ShortcutInfo;Landroid/database/Cursor;I)V
    .locals 8
    .parameter "context"
    .parameter "info"
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    const/4 v7, 0x0

    .line 1612
    iget-boolean v5, p2, Lcom/android/launcher2/ShortcutInfo;->onExternalStorage:Z

    if-eqz v5, :cond_0

    iget v5, p2, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    if-nez v5, :cond_0

    iget-boolean v5, p2, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v5, :cond_0

    .line 1614
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1616
    .local v0, data:[B
    if-eqz v0, :cond_2

    .line 1617
    const/4 v5, 0x0

    :try_start_0
    array-length v6, v0

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1618
    .local v4, saved:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {p2, v5}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1619
    .local v2, loaded:Landroid/graphics/Bitmap;
    invoke-virtual {v4, v2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    move v3, v5

    .line 1626
    .end local v2           #loaded:Landroid/graphics/Bitmap;
    .end local v4           #saved:Landroid/graphics/Bitmap;
    .local v3, needSave:Z
    :goto_0
    if-eqz v3, :cond_0

    .line 1627
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "going to save icon bitmap for info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    invoke-static {p1, p2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    .line 1634
    .end local v0           #data:[B
    .end local v3           #needSave:Z
    :cond_0
    return-void

    .restart local v0       #data:[B
    .restart local v2       #loaded:Landroid/graphics/Bitmap;
    .restart local v4       #saved:Landroid/graphics/Bitmap;
    :cond_1
    move v3, v7

    .line 1619
    goto :goto_0

    .line 1621
    .end local v2           #loaded:Landroid/graphics/Bitmap;
    .end local v4           #saved:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v3, 0x1

    .restart local v3       #needSave:Z
    goto :goto_0

    .line 1623
    .end local v3           #needSave:Z
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1624
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x1

    .restart local v3       #needSave:Z
    goto :goto_0
.end method
