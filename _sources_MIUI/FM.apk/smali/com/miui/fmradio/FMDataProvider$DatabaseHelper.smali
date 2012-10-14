.class Lcom/miui/fmradio/FMDataProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FMDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FMDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 34
    const-string v0, "FM_RadioDB.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 39
    const-string v0, "FMDataProvider"

    const-string v1, " onCreate() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x3

    #calls: Lcom/miui/fmradio/FMDataProvider;->updateDatabases(Landroid/database/sqlite/SQLiteDatabase;II)V
    invoke-static {p1, v0, v1}, Lcom/miui/fmradio/FMDataProvider;->access$000(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 41
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 45
    const-string v0, "FMDataProvider"

    const-string v1, "onUpgrade() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    #calls: Lcom/miui/fmradio/FMDataProvider;->updateDatabases(Landroid/database/sqlite/SQLiteDatabase;II)V
    invoke-static {p1, p2, p3}, Lcom/miui/fmradio/FMDataProvider;->access$000(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 47
    return-void
.end method
