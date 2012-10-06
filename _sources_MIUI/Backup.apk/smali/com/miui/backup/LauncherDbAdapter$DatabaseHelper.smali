.class Lcom/miui/backup/LauncherDbAdapter$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/LauncherDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/LauncherDbAdapter;


# direct methods
.method constructor <init>(Lcom/miui/backup/LauncherDbAdapter;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/miui/backup/LauncherDbAdapter$DatabaseHelper;->this$0:Lcom/miui/backup/LauncherDbAdapter;

    .line 73
    #getter for: Lcom/miui/backup/LauncherDbAdapter;->mDatabaseName:Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/backup/LauncherDbAdapter;->access$000(Lcom/miui/backup/LauncherDbAdapter;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    #getter for: Lcom/miui/backup/LauncherDbAdapter;->mDbVersion:I
    invoke-static {p1}, Lcom/miui/backup/LauncherDbAdapter;->access$100(Lcom/miui/backup/LauncherDbAdapter;)I

    move-result v2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 74
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 78
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/backup/LauncherDbAdapter$DatabaseHelper;->this$0:Lcom/miui/backup/LauncherDbAdapter;

    #setter for: Lcom/miui/backup/LauncherDbAdapter;->mOldDbVersion:I
    invoke-static {v0, p2}, Lcom/miui/backup/LauncherDbAdapter;->access$202(Lcom/miui/backup/LauncherDbAdapter;I)I

    .line 83
    return-void
.end method
