.class public Lcom/miui/backup/DbAdapter;
.super Ljava/lang/Object;
.source "DbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/backup/DbAdapter$DatabaseHelper;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabaseName:Ljava/lang/String;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/miui/backup/DbAdapter$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "ctx"
    .parameter "databaseName"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/miui/backup/DbAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/miui/backup/DbAdapter;->mDatabaseName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/miui/backup/DbAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/miui/backup/DbAdapter;->mDatabaseName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/backup/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 110
    iget-object v0, p0, Lcom/miui/backup/DbAdapter;->mDbHelper:Lcom/miui/backup/DbAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/backup/DbAdapter$DatabaseHelper;->close()V

    .line 111
    return-void
.end method

.method public fetchAllApps()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/miui/backup/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "apps"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public insertApp(Ljava/lang/String;Landroid/content/pm/PackageInfo;ILjava/lang/String;)J
    .locals 4
    .parameter "appName"
    .parameter "pkg"
    .parameter "appType"
    .parameter "apkCopy"

    .prologue
    const-string v3, "appPath"

    .line 50
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "appName"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "appPackage"

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 54
    const-string v1, "appPath"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    const-string v1, "dataDir"

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "appVersion"

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "appVersionCode"

    iget v2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    const-string v1, "appType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    iget-object v1, p0, Lcom/miui/backup/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "apps"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1

    .line 56
    :cond_0
    const-string v1, "appPath"

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 4
    .parameter "displayName"
    .parameter "dataName"
    .parameter "dataDir"
    .parameter "dataType"

    .prologue
    .line 67
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 68
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v1, "appName"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "appPackage"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "dataDir"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "appType"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    iget-object v1, p0, Lcom/miui/backup/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "apps"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public open()Lcom/miui/backup/DbAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/miui/backup/DbAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/miui/backup/DbAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/backup/DbAdapter$DatabaseHelper;-><init>(Lcom/miui/backup/DbAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/DbAdapter;->mDbHelper:Lcom/miui/backup/DbAdapter$DatabaseHelper;

    .line 104
    iget-object v0, p0, Lcom/miui/backup/DbAdapter;->mDbHelper:Lcom/miui/backup/DbAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/backup/DbAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/DbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 105
    return-object p0
.end method
