.class Lcom/android/browser/model/BrowserProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/BrowserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 183
    const-string v0, "browser.db"

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 184
    iput-object p1, p0, Lcom/android/browser/model/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/model/BrowserProvider$DatabaseHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private removeGears()V
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lcom/android/browser/model/BrowserProvider$DatabaseHelper$1;

    invoke-direct {v0, p0}, Lcom/android/browser/model/BrowserProvider$DatabaseHelper$1;-><init>(Lcom/android/browser/model/BrowserProvider$DatabaseHelper;)V

    invoke-virtual {v0}, Lcom/android/browser/model/BrowserProvider$DatabaseHelper$1;->start()V

    .line 277
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 189
    const-string v0, "CREATE TABLE bookmarks (_id INTEGER PRIMARY KEY,title TEXT,url TEXT,visits INTEGER,date LONG,created LONG,description TEXT,bookmark INTEGER,favicon BLOB DEFAULT NULL,thumbnail BLOB DEFAULT NULL,touch_icon BLOB DEFAULT NULL,user_entered INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 207
    const-string v0, "BrowserProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/16 v0, 0x12

    if-ne p2, v0, :cond_0

    .line 210
    const-string v0, "DROP TABLE IF EXISTS labels"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    :cond_0
    const/16 v0, 0x13

    if-gt p2, v0, :cond_1

    .line 213
    const-string v0, "ALTER TABLE bookmarks ADD COLUMN thumbnail BLOB DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    :cond_1
    const/16 v0, 0x15

    if-ge p2, v0, :cond_2

    .line 216
    const-string v0, "ALTER TABLE bookmarks ADD COLUMN touch_icon BLOB DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 218
    :cond_2
    const/16 v0, 0x16

    if-ge p2, v0, :cond_3

    .line 219
    const-string v0, "DELETE FROM bookmarks WHERE (bookmark = 0 AND url LIKE \"%.google.%client=ms-%\")"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/android/browser/model/BrowserProvider$DatabaseHelper;->removeGears()V

    .line 222
    :cond_3
    const/16 v0, 0x17

    if-ge p2, v0, :cond_4

    .line 223
    const-string v0, "ALTER TABLE bookmarks ADD COLUMN user_entered INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_4
    const-string v0, "DROP TABLE IF EXISTS bookmarks"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 226
    const-string v0, "DROP TABLE IF EXISTS searches"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/browser/model/BrowserProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
