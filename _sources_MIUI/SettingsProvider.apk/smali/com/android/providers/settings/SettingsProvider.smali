.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsProvider$SettingsCache;,
        Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;,
        Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    }
.end annotation


# static fields
.field private static final COLUMN_VALUE:[Ljava/lang/String;

.field private static final NULL_SETTING:Landroid/os/Bundle;

.field private static final TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

.field private static final sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sObserverInstance:Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;

.field private static final sSecureCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

.field private static final sSystemCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;


# instance fields
.field private mBackupManager:Landroid/app/backup/BackupManager;

.field protected mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v4, "value"

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v4, v0, v2

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->COLUMN_VALUE:[Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v1, "system"

    invoke-direct {v0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    .line 66
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    const-string v1, "secure"

    invoke-direct {v0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    const-string v0, "value"

    invoke-static {v4, v3}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    .line 83
    const-string v0, "_dummy"

    invoke-static {v0, v3}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 744
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/settings/SettingsProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCaches()V

    return-void
.end method

.method static synthetic access$200()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    return-object v0
.end method

.method private checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V
    .locals 6
    .parameter "args"

    .prologue
    const-string v5, "android.permission.WRITE_SECURE_SETTINGS"

    .line 209
    const-string v0, "secure"

    iget-object v1, p1, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denial: writing to secure settings requires %1$s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    return-void
.end method

.method private ensureAndroidIdIsSet()Z
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v3, "value"

    const-string v14, "android_id"

    .line 325
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v3, v2, v12

    const-string v3, "name=?"

    new-array v4, v13, [Ljava/lang/String;

    const-string v0, "android_id"

    aput-object v14, v4, v12

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 330
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 331
    .local v10, value:Ljava/lang/String;
    :goto_0
    if-nez v10, :cond_1

    .line 332
    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    .line 333
    .local v8, random:Ljava/security/SecureRandom;
    invoke-virtual {v8}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, newAndroidIdValue:Ljava/lang/String;
    const-string v0, "SettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated and saved new ANDROID_ID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "name"

    const-string v1, "android_id"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "value"

    invoke-virtual {v11, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v11}, Lcom/android/providers/settings/SettingsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 339
    .local v9, uri:Landroid/net/Uri;
    if-nez v9, :cond_1

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .end local v7           #newAndroidIdValue:Ljava/lang/String;
    .end local v8           #random:Ljava/security/SecureRandom;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v11           #values:Landroid/content/ContentValues;
    :goto_1
    return v0

    .end local v10           #value:Ljava/lang/String;
    :cond_0
    move-object v10, v5

    .line 330
    goto :goto_0

    .line 345
    .restart local v10       #value:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v13

    goto :goto_1

    .end local v10           #value:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private fullyPopulateCache(Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V
    .locals 13
    .parameter "table"
    .parameter "cache"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v1, "SettingsProvider"

    .line 293
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 294
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v2, v4

    const-string v1, "value"

    aput-object v1, v2, v5

    const-string v8, "201"

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 300
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 301
    :try_start_1
    invoke-virtual {p2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->clear()V

    .line 302
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->setFullyMatchesDisk(Z)V

    .line 303
    const/4 v11, 0x0

    .line 304
    .local v11, rows:I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    add-int/lit8 v11, v11, 0x1

    .line 306
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 307
    .local v10, name:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 308
    .local v12, value:Ljava/lang/String;
    invoke-virtual {p2, v10, v12}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #rows:I
    .end local v12           #value:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 320
    :catchall_1
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 310
    .restart local v11       #rows:I
    :cond_0
    const/16 v1, 0xc8

    if-le v11, v1, :cond_1

    .line 313
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p2, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->setFullyMatchesDisk(Z)V

    .line 314
    const-string v1, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "row count exceeds max cache entries for table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_1
    const-string v1, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache for settings table \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' rows="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; fullycached="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->fullyMatchesDisk()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 320
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 322
    return-void
.end method

.method private fullyPopulateCaches()V
    .locals 2

    .prologue
    .line 287
    const-string v0, "secure"

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCache(Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V

    .line 288
    const-string v0, "system"

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCache(Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;)V

    .line 289
    return-void
.end method

.method private getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;
    .locals 5
    .parameter "tableUri"
    .parameter "values"
    .parameter "rowId"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    .local v1, table:Ljava/lang/String;
    const-string v2, "system"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "secure"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    :cond_1
    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, name:Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 156
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_2
    invoke-static {p1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private lookupValue(Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12
    .parameter "table"
    .parameter "cache"
    .parameter "key"

    .prologue
    .line 366
    monitor-enter p2

    .line 367
    :try_start_0
    invoke-virtual {p2, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    invoke-virtual {p2, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 369
    .local v11, value:Landroid/os/Bundle;
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    if-eq v11, v1, :cond_2

    .line 370
    monitor-exit p2

    move-object v1, v11

    .line 400
    .end local v11           #value:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v1

    .line 373
    :cond_1
    invoke-virtual {p2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->fullyMatchesDisk()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    monitor-exit p2

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 385
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 387
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_2
    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->COLUMN_VALUE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 389
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 390
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 391
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 397
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 399
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 400
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING:Landroid/os/Bundle;

    goto :goto_0

    .line 393
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 394
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v1, "SettingsProvider"

    const-string v2, "settings lookup error"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 395
    const/4 v1, 0x0

    .line 397
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_1
    move-exception v1

    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method private parseProviderList(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 13
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 486
    const-string v0, "value"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 487
    .local v12, value:Ljava/lang/String;
    const/4 v9, 0x0

    .line 488
    .local v9, newProviders:Ljava/lang/String;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 489
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 490
    .local v10, prefix:C
    const/16 v0, 0x2b

    if-eq v10, v0, :cond_0

    const/16 v0, 0x2d

    if-ne v10, v0, :cond_5

    .line 492
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 495
    const-string v11, ""

    .line 496
    .local v11, providers:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "value"

    aput-object v1, v2, v0

    .line 497
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "name=\'location_providers_allowed\'"

    .line 498
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 499
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 501
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 502
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 504
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 508
    :cond_1
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 509
    .local v8, index:I
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    add-int v7, v8, v0

    .line 511
    .local v7, end:I
    if-lez v8, :cond_2

    const/4 v0, 0x1

    sub-int v0, v8, v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_2

    const/4 v8, -0x1

    .line 512
    :cond_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_3

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    const/4 v8, -0x1

    .line 514
    :cond_3
    const/16 v0, 0x2b

    if-ne v10, v0, :cond_7

    if-gez v8, :cond_7

    .line 516
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 517
    move-object v9, v12

    .line 539
    :cond_4
    :goto_0
    if-eqz v9, :cond_5

    .line 540
    const-string v0, "value"

    invoke-virtual {p2, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #end:I
    .end local v8           #index:I
    .end local v10           #prefix:C
    .end local v11           #providers:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 504
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #prefix:C
    .restart local v11       #providers:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 519
    .restart local v7       #end:I
    .restart local v8       #index:I
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 521
    :cond_7
    const/16 v0, 0x2d

    if-ne v10, v0, :cond_a

    if-ltz v8, :cond_a

    .line 524
    if-lez v8, :cond_9

    .line 525
    add-int/lit8 v8, v8, -0x1

    .line 530
    :cond_8
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v11, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 531
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 526
    :cond_9
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_8

    .line 527
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 536
    :cond_a
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 10
    .parameter "uri"

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, backedUpDataChanged:Z
    const/4 v2, 0x0

    .local v2, property:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 174
    .local v3, table:Ljava/lang/String;
    const-string v6, "system"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 175
    const-string v2, "sys.settings_system_version"

    .line 176
    const/4 v0, 0x1

    .line 182
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 183
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long v4, v6, v8

    .line 185
    .local v4, version:J
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v4           #version:J
    :cond_1
    if-eqz v0, :cond_2

    .line 190
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 194
    :cond_2
    const-string v6, "notify"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, notify:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v6, "true"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 196
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 201
    :cond_4
    return-void

    .line 177
    .end local v1           #notify:Ljava/lang/String;
    :cond_5
    const-string v6, "secure"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 178
    const-string v2, "sys.settings_secure_version"

    .line 179
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startAsyncCachePopulation()V
    .locals 2

    .prologue
    .line 279
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$1;

    const-string v1, "populate-settings-caches"

    invoke-direct {v0, p0, v1}, Lcom/android/providers/settings/SettingsProvider$1;-><init>(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsProvider$1;->start()V

    .line 284
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v9, 0x0

    .line 449
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 450
    .local v0, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v5, "favorites"

    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v9

    .line 473
    :goto_0
    return v5

    .line 453
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    .line 454
    iget-object v5, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->forTable(Ljava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v1

    .line 456
    .local v1, cache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 457
    iget-object v5, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 458
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 460
    :try_start_0
    array-length v4, p2

    .line 461
    .local v4, numValues:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 462
    iget-object v5, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v3

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 468
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 469
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move v5, v9

    goto :goto_0

    .line 463
    :cond_1
    :try_start_1
    aget-object v5, p2, v3

    invoke-static {v1, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V

    .line 461
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 466
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 469
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 472
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 473
    array-length v5, p2

    goto :goto_0

    .line 468
    .end local v3           #i:I
    .end local v4           #numValues:I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 469
    sget-object v6, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v5
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter "method"
    .parameter "request"
    .parameter "args"

    .prologue
    .line 354
    const-string v0, "GET_system"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const-string v0, "system"

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->lookupValue(Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    .line 357
    :cond_0
    const-string v0, "GET_secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    const-string v0, "secure"

    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureCache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->lookupValue(Ljava/lang/String;Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const-string v5, "favorites"

    .line 585
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 586
    .local v0, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v3, "favorites"

    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 587
    const/4 v3, 0x0

    .line 603
    :goto_0
    return v3

    .line 588
    :cond_0
    const-string v3, "old_favorites"

    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 589
    const-string v3, "favorites"

    iput-object v5, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    .line 591
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    .line 593
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 594
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 595
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 596
    .local v1, count:I
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 597
    if-lez v1, :cond_2

    .line 598
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->invalidate(Ljava/lang/String;)V

    .line 599
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 601
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->startAsyncCachePopulation()V

    move v3, v1

    .line 603
    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 439
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 440
    .local v0, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    iget-object v1, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const/4 v9, 0x0

    .line 550
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 551
    .local v0, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v7, "favorites"

    iget-object v8, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v9

    .line 580
    :goto_0
    return-object v7

    .line 554
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    .line 558
    const-string v7, "name"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 559
    .local v3, name:Ljava/lang/String;
    const-string v7, "location_providers_allowed"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 560
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->parseProviderList(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v9

    goto :goto_0

    .line 563
    :cond_1
    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->forTable(Ljava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v1

    .line 564
    .local v1, cache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    const-string v7, "value"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 565
    .local v6, value:Ljava/lang/String;
    invoke-static {v1, v3, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->isRedundantSetValue(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 566
    invoke-static {p1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    .line 569
    :cond_2
    sget-object v7, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 570
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v7}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 571
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v7, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 572
    .local v4, rowId:J
    sget-object v7, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 573
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-gtz v7, :cond_3

    move-object v7, v9

    goto :goto_0

    .line 575
    :cond_3
    invoke-static {v1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V

    .line 578
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/providers/settings/SettingsProvider;->getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;

    move-result-object p1

    .line 579
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v7, p1

    .line 580
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 258
    new-instance v1, Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/providers/settings/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    .line 259
    new-instance v1, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 261
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->ensureAndroidIdIsSet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    const/4 v1, 0x0

    .line 275
    :goto_0
    return v1

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 272
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;-><init>(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;)V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sObserverInstance:Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;

    .line 273
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sObserverInstance:Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;

    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->startWatching()V

    .line 274
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->startAsyncCachePopulation()V

    .line 275
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 18
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v16

    .line 683
    .local v16, ringtoneType:I
    const/4 v3, -0x1

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_5

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 687
    .local v11, context:Landroid/content/Context;
    move-object v0, v11

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v17

    .line 689
    .local v17, soundUri:Landroid/net/Uri;
    if-eqz v17, :cond_4

    .line 691
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    .line 692
    .local v10, authority:Ljava/lang/String;
    const-string v3, "drm"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 693
    .local v14, isDrmAuthority:Z
    const-string v3, "file"

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 694
    .local v15, isFileSchema:Z
    if-nez v15, :cond_0

    if-nez v14, :cond_0

    const-string v3, "media"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 696
    :cond_0
    if-eqz v14, :cond_2

    .line 701
    :try_start_0
    invoke-static {v11}, Landroid/provider/DrmStore;->enforceAccessDrmPermission(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 714
    .local v4, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 715
    new-instance v3, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    invoke-direct/range {v3 .. v8}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 736
    .end local v4           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v10           #authority:Ljava/lang/String;
    .end local v11           #context:Landroid/content/Context;
    .end local v14           #isDrmAuthority:Z
    .end local v15           #isFileSchema:Z
    .end local v17           #soundUri:Landroid/net/Uri;
    :goto_1
    return-object v3

    .line 702
    .restart local v10       #authority:Ljava/lang/String;
    .restart local v11       #context:Landroid/content/Context;
    .restart local v14       #isDrmAuthority:Z
    .restart local v15       #isFileSchema:Z
    .restart local v17       #soundUri:Landroid/net/Uri;
    :catch_0
    move-exception v12

    .line 703
    .local v12, e:Ljava/lang/SecurityException;
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-virtual {v12}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 705
    .end local v12           #e:Ljava/lang/SecurityException;
    :cond_2
    if-eqz v15, :cond_1

    .line 706
    invoke-static/range {v16 .. v16}, Landroid/media/RingtoneManager;->getDefaultRingtoneUri(I)Landroid/net/Uri;

    move-result-object v9

    .line 707
    .local v9, actualSoundUri:Landroid/net/Uri;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 708
    move-object/from16 v17, v9

    goto :goto_0

    .line 716
    .end local v9           #actualSoundUri:Landroid/net/Uri;
    .restart local v4       #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v3

    .line 722
    .end local v4           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-super {v0, v1, v2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_1

    .line 723
    :catch_2
    move-exception v13

    .line 726
    .local v13, ex:Ljava/io/FileNotFoundException;
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10c0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    goto :goto_1

    .line 732
    .end local v10           #authority:Ljava/lang/String;
    .end local v13           #ex:Ljava/io/FileNotFoundException;
    .end local v14           #isDrmAuthority:Z
    .end local v15           #isFileSchema:Z
    :cond_4
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    throw v3

    .line 736
    .end local v11           #context:Landroid/content/Context;
    .end local v17           #soundUri:Landroid/net/Uri;
    :cond_5
    invoke-super/range {p0 .. p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    goto :goto_1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 635
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v6

    .line 637
    .local v6, ringtoneType:I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_3

    .line 638
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 641
    .local v2, context:Landroid/content/Context;
    invoke-static {v2, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 643
    .local v7, soundUri:Landroid/net/Uri;
    if-eqz v7, :cond_3

    .line 645
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, authority:Ljava/lang/String;
    const-string v8, "drm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 647
    .local v4, isDrmAuthority:Z
    const-string v8, "file"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 648
    .local v5, isFileSchema:Z
    if-nez v5, :cond_0

    if-nez v4, :cond_0

    const-string v8, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 650
    :cond_0
    if-eqz v4, :cond_2

    .line 655
    :try_start_0
    invoke-static {v2}, Landroid/provider/DrmStore;->enforceAccessDrmPermission(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v7, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 670
    .end local v1           #authority:Ljava/lang/String;
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #isDrmAuthority:Z
    .end local v5           #isFileSchema:Z
    .end local v7           #soundUri:Landroid/net/Uri;
    :goto_1
    return-object v8

    .line 656
    .restart local v1       #authority:Ljava/lang/String;
    .restart local v2       #context:Landroid/content/Context;
    .restart local v4       #isDrmAuthority:Z
    .restart local v5       #isFileSchema:Z
    .restart local v7       #soundUri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 657
    .local v3, e:Ljava/lang/SecurityException;
    new-instance v8, Ljava/io/FileNotFoundException;

    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 659
    .end local v3           #e:Ljava/lang/SecurityException;
    :cond_2
    if-eqz v5, :cond_1

    .line 660
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 661
    .local v0, actualSoundUri:Landroid/net/Uri;
    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 662
    move-object v7, v0

    goto :goto_0

    .line 670
    .end local v0           #actualSoundUri:Landroid/net/Uri;
    .end local v1           #authority:Ljava/lang/String;
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #isDrmAuthority:Z
    .end local v5           #isFileSchema:Z
    .end local v7           #soundUri:Landroid/net/Uri;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    goto :goto_1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .parameter "url"
    .parameter "select"
    .parameter "where"
    .parameter "whereArgs"
    .parameter "sort"

    .prologue
    .line 405
    new-instance v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 406
    .local v12, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/providers/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 413
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "favorites"

    iget-object v7, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 414
    const/4 v6, 0x0

    .line 432
    :goto_0
    return-object v6

    .line 415
    :cond_0
    const-string v6, "old_favorites"

    iget-object v7, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 416
    const-string v6, "favorites"

    iput-object v6, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    .line 417
    const-string v6, "PRAGMA table_info(favorites);"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 418
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_2

    .line 419
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    move v14, v6

    .line 420
    .local v14, exists:Z
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 421
    if-nez v14, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    .line 419
    .end local v14           #exists:Z
    :cond_1
    const/4 v6, 0x0

    move v14, v6

    goto :goto_1

    .line 423
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 427
    .end local v13           #cursor:Landroid/database/Cursor;
    :cond_3
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 428
    .local v4, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v6, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 430
    iget-object v7, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v8, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p2

    move-object/from16 v11, p5

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 431
    .local v15, ret:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object v0, v15

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v6, v15

    .line 432
    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "initialValues"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 608
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 609
    .local v0, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v3, "favorites"

    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 610
    const/4 v3, 0x0

    .line 624
    :goto_0
    return v3

    .line 612
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    .line 614
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 615
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 616
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 617
    .local v1, count:I
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 618
    if-lez v1, :cond_1

    .line 619
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->invalidate(Ljava/lang/String;)V

    .line 620
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 622
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->startAsyncCachePopulation()V

    move v3, v1

    .line 624
    goto :goto_0
.end method
