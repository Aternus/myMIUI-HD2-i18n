.class public Lcom/android/providers/applications/ApplicationsProvider;
.super Landroid/content/ContentProvider;
.source "ApplicationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/applications/ApplicationsProvider$UpdateHandler;,
        Lcom/android/providers/applications/ApplicationsProvider$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final sSearchProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSearchSuggestionsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mHandler:Landroid/os/Handler;

.field private mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/android/providers/applications/ApplicationsProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 92
    invoke-static {}, Lcom/android/providers/applications/ApplicationsProvider;->buildSuggestionsProjectionMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    .line 94
    invoke-static {}, Lcom/android/providers/applications/ApplicationsProvider;->buildSearchProjectionMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sSearchProjectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 138
    new-instance v0, Lcom/android/providers/applications/ApplicationsProvider$1;

    invoke-direct {v0, p0}, Lcom/android/providers/applications/ApplicationsProvider$1;-><init>(Lcom/android/providers/applications/ApplicationsProvider;)V

    iput-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/applications/ApplicationsProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->postUpdateAll()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/applications/ApplicationsProvider;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/providers/applications/ApplicationsProvider;->updateApplicationsList(Ljava/lang/String;)V

    return-void
.end method

.method private static addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 405
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    return-void
.end method

.method private static buildSearchProjectionMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v4, "name"

    const-string v3, "icon"

    const-string v2, "_id"

    .line 391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 392
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v1, "_id"

    invoke-static {v0, v2, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v1, "name"

    const-string v1, "name"

    invoke-static {v0, v4, v4}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v1, "icon"

    const-string v1, "icon"

    invoke-static {v0, v3, v3}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, "uri"

    const-string v2, "\'content://applications/applications/\' || package || \'/\' || class"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-object v0
.end method

.method private static buildSuggestionsProjectionMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v2, "_id"

    .line 376
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v1, "_id"

    invoke-static {v0, v2, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v1, "suggest_text_1"

    const-string v2, "name"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v1, "suggest_text_2"

    const-string v2, "description"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v1, "suggest_intent_data"

    const-string v2, "\'content://applications/applications/\' || package || \'/\' || class"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v1, "suggest_icon_1"

    const-string v2, "icon"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v1, "suggest_icon_2"

    const-string v2, "NULL"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v1, "suggest_shortcut_id"

    const-string v2, "package || \'/\' || class"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-object v0
.end method

.method private buildTokenFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filterParam"

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "token GLOB "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, filter:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/database/DatabaseUtils;->getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "applications"

    .line 109
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 110
    .local v0, matcher:Landroid/content/UriMatcher;
    const-string v1, "applications"

    const-string v1, "search_suggest_query"

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    const-string v1, "applications"

    const-string v1, "search_suggest_query/*"

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    const-string v1, "applications"

    const-string v1, "search_suggest_shortcut"

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    const-string v1, "applications"

    const-string v1, "search_suggest_shortcut/*"

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    const-string v1, "applications"

    const-string v1, "search"

    invoke-virtual {v0, v2, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    const-string v1, "applications"

    const-string v1, "search/*"

    invoke-virtual {v0, v2, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    return-object v0
.end method

.method private createDatabase()V
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 207
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS applications (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED,description description TEXT,package TEXT,class TEXT,icon TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX applicationsComponentIndex ON applications (package,class);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE applicationsLookup (token TEXT,source INTEGER REFERENCES applications(_id),token_index INTEGER);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX applicationsLookupIndex ON applicationsLookup (token,source);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER applicationsLookup_update UPDATE OF name ON applications BEGIN DELETE FROM applicationsLookup WHERE source = new._id;SELECT _TOKENIZE(\'applicationsLookup\', new._id, new.name, \' \', 1);END"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER applicationsLookup_insert AFTER INSERT ON applications BEGIN SELECT _TOKENIZE(\'applicationsLookup\', new._id, new.name, \' \', 1);END"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER applicationsLookup_delete DELETE ON applications BEGIN DELETE FROM applicationsLookup WHERE source = old._id;END"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method private getActivityIconUri(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 5
    .parameter "activityInfo"

    .prologue
    const/4 v4, 0x0

    .line 463
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    .line 464
    .local v0, icon:I
    if-nez v0, :cond_0

    move-object v2, v4

    .line 466
    :goto_0
    return-object v2

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v3, v0}, Lcom/android/providers/applications/ApplicationsProvider;->getResourceUri(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Landroid/net/Uri;

    move-result-object v1

    .line 466
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_1

    move-object v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getResourceUri(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Landroid/net/Uri;
    .locals 4
    .parameter "context"
    .parameter "appInfo"
    .parameter "res"

    .prologue
    const/4 v3, 0x0

    .line 496
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 497
    .local v1, resources:Landroid/content/res/Resources;
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/android/providers/applications/ApplicationsProvider;->getResourceUri(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 501
    .end local v1           #resources:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 498
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v3

    .line 499
    goto :goto_0

    .line 500
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    move-object v2, v3

    .line 501
    goto :goto_0
.end method

.method private static getResourceUri(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .parameter "resources"
    .parameter "appPkg"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, resPkg:Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, type:Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, name:Ljava/lang/String;
    invoke-static {p1, v1, v2, v0}, Lcom/android/providers/applications/ApplicationsProvider;->makeResourceUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private getSearchResults(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "query"
    .parameter "projectionIn"

    .prologue
    .line 341
    sget-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sSearchProjectionMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/applications/ApplicationsProvider;->searchApplications(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getSuggestions(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "query"
    .parameter "projectionIn"

    .prologue
    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/applications/ApplicationsProvider;->searchApplications(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method private static makeResourceUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "appPkg"
    .parameter "resPkg"
    .parameter "type"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 515
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 516
    .local v0, uriBuilder:Landroid/net/Uri$Builder;
    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 517
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 518
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 519
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 524
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 522
    :cond_0
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method private postUpdateAll()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 193
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 194
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 195
    return-void
.end method

.method private refreshShortcut(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "shortcutId"
    .parameter "projectionIn"

    .prologue
    const/4 v3, 0x0

    .line 325
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 326
    .local v8, component:Landroid/content/ComponentName;
    if-nez v8, :cond_0

    .line 327
    const-string v1, "ApplicationsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad shortcut id: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 337
    :goto_0
    return-object v1

    .line 330
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 331
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "applications"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 332
    sget-object v1, Lcom/android/providers/applications/ApplicationsProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 333
    const-string v1, "package = ? AND class = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 334
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 335
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, cursor:Landroid/database/Cursor;
    move-object v1, v9

    .line 337
    goto :goto_0
.end method

.method private removeApplications(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    const-string v4, "applications"

    .line 470
    if-nez p1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "applications"

    invoke-virtual {v0, v4, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 476
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "applications"

    const-string v1, "package = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private searchApplications(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Landroid/database/Cursor;
    .locals 9
    .parameter "query"
    .parameter "projectionIn"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p3, columnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 346
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 347
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "applicationsLookup JOIN applications ON applicationsLookup.source = applications._id"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    invoke-direct {p0, p1}, Lcom/android/providers/applications/ApplicationsProvider;->buildTokenFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 353
    :cond_0
    const-string v5, "applications._id"

    .line 358
    .local v5, groupBy:Ljava/lang/String;
    const-string v7, "MIN(token_index) != 0, name"

    .line 359
    .local v7, order:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v4, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 361
    .local v8, cursor:Landroid/database/Cursor;
    return-object v8
.end method

.method private updateApplicationsList(Ljava/lang/String;)V
    .locals 20
    .parameter "packageName"

    .prologue
    .line 417
    new-instance v12, Landroid/database/DatabaseUtils$InsertHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    const-string v19, "applications"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 419
    .local v12, inserter:Landroid/database/DatabaseUtils$InsertHelper;
    const-string v18, "name"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 420
    .local v15, nameCol:I
    const-string v18, "description"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 421
    .local v7, descriptionCol:I
    const-string v18, "package"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 422
    .local v16, packageCol:I
    const-string v18, "class"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 423
    .local v5, classCol:I
    const-string v18, "icon"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 425
    .local v10, iconCol:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 427
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/applications/ApplicationsProvider;->removeApplications(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f040002

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 430
    .local v6, description:Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    const/16 v19, 0x0

    move-object v0, v13

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 431
    .local v13, mainIntent:Landroid/content/Intent;
    const-string v18, "android.intent.category.LAUNCHER"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    if-eqz p1, :cond_0

    .line 434
    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 437
    .local v14, manager:Landroid/content/pm/PackageManager;
    const/16 v18, 0x0

    move-object v0, v14

    move-object v1, v13

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 438
    .local v3, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_2

    const/16 v18, 0x0

    move/from16 v4, v18

    .line 439
    .local v4, activityCount:I
    :goto_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v4, :cond_3

    .line 440
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 441
    .local v11, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v11, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 442
    .local v17, title:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 443
    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 445
    :cond_1
    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/providers/applications/ApplicationsProvider;->getActivityIconUri(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    .line 446
    .local v9, icon:Ljava/lang/String;
    invoke-virtual {v12}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 447
    move-object v0, v12

    move v1, v15

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 448
    invoke-virtual {v12, v7, v6}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 449
    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v12

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 450
    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v12

    move v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 451
    invoke-virtual {v12, v10, v9}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 452
    invoke-virtual {v12}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    .line 439
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 438
    .end local v4           #activityCount:I
    .end local v8           #i:I
    .end local v9           #icon:Ljava/lang/String;
    .end local v11           #info:Landroid/content/pm/ResolveInfo;
    .end local v17           #title:Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v4, v18

    goto :goto_0

    .line 454
    .restart local v4       #activityCount:I
    .restart local v8       #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 457
    invoke-virtual {v12}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 460
    return-void

    .line 456
    .end local v3           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #activityCount:I
    .end local v6           #description:Ljava/lang/String;
    .end local v8           #i:I
    .end local v13           #mainIntent:Landroid/content/Intent;
    .end local v14           #manager:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 457
    invoke-virtual {v12}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    throw v18
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 491
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 253
    sget-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    .line 259
    :goto_0
    return-object v0

    .line 257
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.android.search.suggest"

    goto :goto_0

    .line 259
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.android.application"

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 480
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 151
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->createDatabase()V

    .line 153
    new-instance v2, Lcom/android/providers/applications/ApplicationsProvider$MyPackageMonitor;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/providers/applications/ApplicationsProvider$MyPackageMonitor;-><init>(Lcom/android/providers/applications/ApplicationsProvider;Lcom/android/providers/applications/ApplicationsProvider$1;)V

    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/applications/ApplicationsProvider$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, localeFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/applications/ApplicationsProvider;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ApplicationsProviderUpdater"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 159
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 160
    new-instance v2, Lcom/android/providers/applications/ApplicationsProvider$UpdateHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/providers/applications/ApplicationsProvider$UpdateHandler;-><init>(Lcom/android/providers/applications/ApplicationsProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/providers/applications/ApplicationsProvider;->mHandler:Landroid/os/Handler;

    .line 162
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->postUpdateAll()V

    .line 163
    return v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v3, 0x1

    .line 274
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selection not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    :cond_0
    if-eqz p4, :cond_1

    array-length v2, p4

    if-eqz v2, :cond_1

    .line 278
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectionArgs not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 281
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sortOrder not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_2
    sget-object v2, Lcom/android/providers/applications/ApplicationsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 307
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :pswitch_0
    const/4 v0, 0x0

    .line 287
    .local v0, query:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 288
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 290
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/providers/applications/ApplicationsProvider;->getSuggestions(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 304
    .end local v0           #query:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 293
    :pswitch_1
    const/4 v1, 0x0

    .line 294
    .local v1, shortcutId:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_4

    .line 295
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 297
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/android/providers/applications/ApplicationsProvider;->refreshShortcut(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 300
    .end local v1           #shortcutId:Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x0

    .line 301
    .restart local v0       #query:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_5

    .line 302
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 304
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/android/providers/applications/ApplicationsProvider;->getSearchResults(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 486
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
