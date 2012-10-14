.class public Lcom/miui/providers/userbook/UserbookDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UserbookDatabaseHelper.java"


# static fields
.field private static mInstance:Lcom/miui/providers/userbook/UserbookDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 42
    const-string v0, "userbook.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 43
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    const-string v1, "UserbookDatabaseHelper"

    .line 53
    const-string v0, "CREATE TABLE feature(_id INTEGER PRIMARY KEY,package TEXT NOT NULL,feature TEXT NOT NULL,read INTEGER NOT NULL DEFAULT 0,achieved INTEGER NOT NULL DEFAULT 0,version INTEGER NOT NULL DEFAULT 0,data1 INTEGER,data2 INTEGER,data3 TEXT NOT NULL DEFAULT \'\',UNIQUE (package,feature))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    const-string v0, "UserbookDatabaseHelper"

    const-string v0, "feature table has been created"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "CREATE INDEX PACKAGE_FEATURE ON feature(package,feature)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    const-string v0, "UserbookDatabaseHelper"

    const-string v0, "package function index has been created"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/providers/userbook/UserbookDatabaseHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    const-class v0, Lcom/miui/providers/userbook/UserbookDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/providers/userbook/UserbookDatabaseHelper;->mInstance:Lcom/miui/providers/userbook/UserbookDatabaseHelper;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/miui/providers/userbook/UserbookDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/miui/providers/userbook/UserbookDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/providers/userbook/UserbookDatabaseHelper;->mInstance:Lcom/miui/providers/userbook/UserbookDatabaseHelper;

    .line 49
    :cond_0
    sget-object v1, Lcom/miui/providers/userbook/UserbookDatabaseHelper;->mInstance:Lcom/miui/providers/userbook/UserbookDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/miui/providers/userbook/UserbookDatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 68
    return-void
.end method
