.class public Lcom/miui/fmradio/FMDataProvider;
.super Landroid/content/ContentProvider;
.source "FMDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/FMDataProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final CHANNELS:I = 0x1

.field private static final CHANNELS_ID:I = 0x2

.field private static final DATABASE_NAME:Ljava/lang/String; = "FM_RadioDB.db"

.field private static final DATABASE_VERSION:I = 0x3

.field private static final SAVED_STATE:I = 0x3

.field private static final SAVED_STATE_ID:I = 0x4

.field private static final SAVED_TABLE_NAME:Ljava/lang/String; = "FM_Radio_saved_state"

.field private static final TABLE_NAME:Ljava/lang/String; = "FM_Radio"

.field private static final TAG:Ljava/lang/String; = "FMDataProvider"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/miui/fmradio/FMDataProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v3, "com.miui.provider.fmradio"

    .line 208
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/fmradio/FMDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 209
    sget-object v0, Lcom/miui/fmradio/FMDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.provider.fmradio"

    const-string v1, "FM_Radio"

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    sget-object v0, Lcom/miui/fmradio/FMDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.provider.fmradio"

    const-string v1, "FM_Radio/#"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    sget-object v0, Lcom/miui/fmradio/FMDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.provider.fmradio"

    const-string v1, "FM_Radio_saved_state"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    sget-object v0, Lcom/miui/fmradio/FMDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.provider.fmradio"

    const-string v1, "FM_Radio_saved_state/#"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 16
    invoke-static {p0, p1, p2}, Lcom/miui/fmradio/FMDataProvider;->updateDatabases(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method private static updateDatabases(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7
    .parameter "db"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    const-string v6, "FMDataProvider"

    .line 52
    const-string v4, "FMDataProvider"

    const-string v4, "updateDatabases() is called"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v4, 0x3

    if-ge p1, v4, :cond_0

    .line 54
    const-string v4, "DROP TABLE IF EXISTS FM_Radio_saved_state"

    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    const-string v4, "DROP TABLE IF EXISTS FM_Radio"

    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    :try_start_0
    const-string v4, "CREATE TABLE IF NOT EXISTS FM_Radio_saved_state (_id INTEGER,Last_ChNum INTEGER,Last_Freq INTEGER,isLastPlayChannel BOOLEAN,isFirstScaned BOOLEAN,Last_Volume INTEGER,isCheckHeadset BOOLEAN);"

    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    :try_start_1
    const-string v4, "CREATE TABLE IF NOT EXISTS FM_Radio (_id INTEGER,CH_Num TEXT,CH_Freq FLOAT,CH_Name TEXT);"

    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    :goto_1
    const-string v3, "INSERT INTO FM_Radio_saved_state (_id, Last_ChNum, Last_Freq, isLastPlayChannel, isFirstScaned, Last_Volume, isCheckHeadset) VALUES (\'0\', \'0\',  \'87500\', \'false\', \'false\', \'10\', \'true\');"

    .line 89
    .local v3, sql_saved:Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/16 v4, 0x14

    if-ge v1, v4, :cond_0

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO FM_Radio (_id, CH_Num, CH_Freq, CH_Name) VALUES (\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', \'\', \'\');"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, sql:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 68
    .end local v1           #i:I
    .end local v2           #sql:Ljava/lang/String;
    .end local v3           #sql_saved:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 69
    .local v0, e:Landroid/database/SQLException;
    const-string v4, "FMDataProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 81
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v4, "FMDataProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 99
    .end local v0           #e:Landroid/database/SQLException;
    .restart local v3       #sql_saved:Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 100
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v4, "FMDataProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v0           #e:Landroid/database/SQLException;
    .end local v3           #sql_saved:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v1, p0, Lcom/miui/fmradio/FMDataProvider;->mOpenHelper:Lcom/miui/fmradio/FMDataProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/miui/fmradio/FMDataProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 177
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 178
    return v3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const-string v10, "\',\'"

    .line 149
    const-string v8, "_id"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, field_1:Ljava/lang/String;
    const-string v8, "CH_Num"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, field_2:Ljava/lang/String;
    const-string v8, "CH_Freq"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, field_3:Ljava/lang/String;
    const-string v8, "CH_Name"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, field_4:Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/fmradio/FMDataProvider;->mOpenHelper:Lcom/miui/fmradio/FMDataProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/miui/fmradio/FMDataProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 155
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    .line 156
    .local v6, retUri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insert into FM_Radio (_id, CH_Num, CH_Freq, CH_Name) values(\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\',\'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\',\'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\');"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, sql_1:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    move-object v6, p1

    .line 164
    invoke-virtual {p0}, Lcom/miui/fmradio/FMDataProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v7           #sql_1:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v6

    .line 166
    .restart local v7       #sql_1:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 168
    .local v1, e:Landroid/database/SQLException;
    const-string v8, "FMDataProvider"

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/miui/fmradio/FMDataProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/miui/fmradio/FMDataProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/fmradio/FMDataProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/fmradio/FMDataProvider;->mOpenHelper:Lcom/miui/fmradio/FMDataProvider$DatabaseHelper;

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    const-string v4, "FM_Radio_saved_state"

    const-string v3, "FM_Radio"

    .line 114
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 115
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, p0, Lcom/miui/fmradio/FMDataProvider;->mOpenHelper:Lcom/miui/fmradio/FMDataProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/miui/fmradio/FMDataProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 117
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/miui/fmradio/FMDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 132
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :pswitch_0
    const-string v2, "FM_Radio"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    :goto_0
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 135
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 138
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/miui/fmradio/FMDataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 141
    :cond_0
    return-object v8

    .line 122
    .end local v8           #c:Landroid/database/Cursor;
    :pswitch_1
    const-string v2, "FM_Radio"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_2
    const-string v2, "FM_Radio_saved_state"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_3
    const-string v2, "FM_Radio_saved_state"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const-string v4, "FM_Radio_saved_state"

    const-string v3, "FM_Radio"

    .line 184
    iget-object v2, p0, Lcom/miui/fmradio/FMDataProvider;->mOpenHelper:Lcom/miui/fmradio/FMDataProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/miui/fmradio/FMDataProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 186
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/miui/fmradio/FMDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 200
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :pswitch_0
    const-string v2, "FM_Radio"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 202
    .local v0, count:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/fmradio/FMDataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 203
    return v0

    .line 191
    .end local v0           #count:I
    :pswitch_1
    const-string v2, "FM_Radio"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 192
    .restart local v0       #count:I
    goto :goto_0

    .line 194
    .end local v0           #count:I
    :pswitch_2
    const-string v2, "FM_Radio_saved_state"

    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 195
    .restart local v0       #count:I
    goto :goto_0

    .line 197
    .end local v0           #count:I
    :pswitch_3
    const-string v2, "FM_Radio_saved_state"

    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 198
    .restart local v0       #count:I
    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
