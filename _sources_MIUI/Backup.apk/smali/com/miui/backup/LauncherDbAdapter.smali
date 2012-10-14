.class public Lcom/miui/backup/LauncherDbAdapter;
.super Ljava/lang/Object;
.source "LauncherDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/backup/LauncherDbAdapter$DatabaseHelper;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabaseName:Ljava/lang/String;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/miui/backup/LauncherDbAdapter$DatabaseHelper;

.field private mDbVersion:I

.field private mOldDbVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "ctx"
    .parameter "databaseName"
    .parameter "dbVersion"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/backup/LauncherDbAdapter;->mDbVersion:I

    .line 32
    iput-object p1, p0, Lcom/miui/backup/LauncherDbAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/miui/backup/LauncherDbAdapter;->mDatabaseName:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/miui/backup/LauncherDbAdapter;->mDbVersion:I

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/miui/backup/LauncherDbAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/miui/backup/LauncherDbAdapter;->mDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/backup/LauncherDbAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget v0, p0, Lcom/miui/backup/LauncherDbAdapter;->mDbVersion:I

    return v0
.end method

.method static synthetic access$202(Lcom/miui/backup/LauncherDbAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Lcom/miui/backup/LauncherDbAdapter;->mOldDbVersion:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/backup/LauncherDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 67
    iget-object v0, p0, Lcom/miui/backup/LauncherDbAdapter;->mDbHelper:Lcom/miui/backup/LauncherDbAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/backup/LauncherDbAdapter$DatabaseHelper;->close()V

    .line 68
    return-void
.end method

.method public fetchAll()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/miui/backup/LauncherDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getOldDbVersion()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/miui/backup/LauncherDbAdapter;->mOldDbVersion:I

    return v0
.end method

.method public open()Lcom/miui/backup/LauncherDbAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/miui/backup/LauncherDbAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/miui/backup/LauncherDbAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/backup/LauncherDbAdapter$DatabaseHelper;-><init>(Lcom/miui/backup/LauncherDbAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/LauncherDbAdapter;->mDbHelper:Lcom/miui/backup/LauncherDbAdapter$DatabaseHelper;

    .line 61
    iget-object v0, p0, Lcom/miui/backup/LauncherDbAdapter;->mDbHelper:Lcom/miui/backup/LauncherDbAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/backup/LauncherDbAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/LauncherDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    return-object p0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/backup/LauncherDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 39
    return-void
.end method
