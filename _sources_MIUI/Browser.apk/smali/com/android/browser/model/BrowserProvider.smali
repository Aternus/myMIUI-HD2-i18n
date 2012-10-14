.class public Lcom/android/browser/model/BrowserProvider;
.super Landroid/content/ContentProvider;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/model/BrowserProvider$ResultsCursor;,
        Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;,
        Lcom/android/browser/model/BrowserProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final DATABASE_VERSION:I = 0x17

.field private static final MAX_SUGGESTION_LONG_ENTRIES:I = 0x6

.field private static final MAX_SUGGESTION_LONG_ENTRIES_STRING:Ljava/lang/String; = null

.field private static final MAX_SUGGESTION_SHORT_ENTRIES:I = 0x3

.field private static final ORDER_BY:Ljava/lang/String; = "visits DESC, date DESC"

.field private static final STRIP_URL_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final SUGGEST_COLUMN_ICON_1_ID:I = 0x6

.field private static final SUGGEST_COLUMN_ICON_2_ID:I = 0x7

.field private static final SUGGEST_COLUMN_INTENT_ACTION_ID:I = 0x1

.field private static final SUGGEST_COLUMN_INTENT_DATA_ID:I = 0x2

.field private static final SUGGEST_COLUMN_INTENT_EXTRA_DATA:I = 0x9

.field private static final SUGGEST_COLUMN_QUERY_ID:I = 0x8

.field private static final SUGGEST_COLUMN_TEXT_1_ID:I = 0x3

.field private static final SUGGEST_COLUMN_TEXT_2_ID:I = 0x4

.field private static final SUGGEST_COLUMN_TEXT_2_URL_ID:I = 0x5

.field private static final SUGGEST_PROJECTION:[Ljava/lang/String; = null

.field private static final SUGGEST_SELECTION:Ljava/lang/String; = "(url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?) AND (bookmark = 1 OR user_entered = 1)"

.field private static final TABLE_NAMES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BrowserProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final URI_MATCH_BOOKMARKS:I = 0x0

.field private static final URI_MATCH_BOOKMARKS_ID:I = 0xa

.field private static final URI_MATCH_BOOKMARKS_SUGGEST:I = 0x15

.field private static final URI_MATCH_SEARCHES:I = 0x1

.field private static final URI_MATCH_SEARCHES_ID:I = 0xb

.field private static final URI_MATCH_SUGGEST:I = 0x14

.field private static final sDatabaseName:Ljava/lang/String; = "browser.db"


# instance fields
.field private SUGGEST_ARGS:[Ljava/lang/String;

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mResultsCursor:Lcom/android/browser/model/BrowserProvider$ResultsCursor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "browser"

    .line 59
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "bookmarks"

    aput-object v1, v0, v3

    const-string v1, "searches"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/browser/model/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "url"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v6

    const-string v1, "bookmark"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "user_entered"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/model/BrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    .line 82
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_intent_action"

    aput-object v1, v0, v4

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v6

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_text_2_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/model/BrowserProvider;->COLUMNS:[Ljava/lang/String;

    .line 96
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/model/BrowserProvider;->MAX_SUGGESTION_LONG_ENTRIES_STRING:Ljava/lang/String;

    .line 112
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/browser/model/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 113
    sget-object v0, Lcom/android/browser/model/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    sget-object v1, Lcom/android/browser/model/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v5, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    sget-object v0, Lcom/android/browser/model/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/browser/model/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    sget-object v0, Lcom/android/browser/model/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    sget-object v1, Lcom/android/browser/model/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v5, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    sget-object v0, Lcom/android/browser/model/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/browser/model/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    sget-object v0, Lcom/android/browser/model/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    const-string v1, "search_suggest_query"

    const/16 v2, 0x14

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    sget-object v0, Lcom/android/browser/model/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/browser/model/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "search_suggest_query"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    const-string v0, "^(http://)(.*?)(/$)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/model/BrowserProvider;->STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/model/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    .line 156
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/browser/model/BrowserProvider;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/browser/model/BrowserProvider;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "cr"

    .prologue
    .line 161
    const-string v7, "android-google"

    .line 162
    .local v7, ret:Ljava/lang/String;
    const/4 v6, 0x0

    .line 164
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'client_id\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 166
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 172
    :cond_0
    if-eqz v6, :cond_1

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_1
    :goto_0
    return-object v7

    .line 169
    :catch_0
    move-exception v0

    .line 172
    if-eqz v6, :cond_1

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static stripUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 951
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 956
    :goto_0
    return-object v1

    .line 952
    :cond_0
    sget-object v1, Lcom/android/browser/model/BrowserProvider;->STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 953
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 954
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 956
    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 834
    .local v12, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/browser/model/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 835
    .local v15, match:I
    const/4 v5, -0x1

    if-eq v15, v5, :cond_0

    const/16 v5, 0x14

    if-ne v15, v5, :cond_1

    .line 836
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unknown URL"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 840
    :cond_1
    const/16 v5, 0xa

    if-ne v15, v5, :cond_7

    const/4 v5, 0x1

    move v14, v5

    .line 841
    .local v14, isBookmarkTable:Z
    :goto_0
    const/4 v13, 0x0

    .line 843
    .local v13, id:Ljava/lang/String;
    if-nez v14, :cond_2

    const/16 v5, 0xb

    if-ne v15, v5, :cond_4

    .line 844
    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .local v16, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 846
    const-string v5, "( "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    const-string v5, " ) AND "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #id:Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 851
    .restart local v13       #id:Ljava/lang/String;
    const-string v5, "_id = "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 856
    .end local v16           #sb:Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/model/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 859
    .local v4, cr:Landroid/content/ContentResolver;
    if-eqz v14, :cond_6

    .line 860
    sget-object v5, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "bookmark"

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 863
    .local v11, cursor:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 864
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_5

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 869
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 872
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_6
    sget-object v5, Lcom/android/browser/model/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v6, v15, 0xa

    aget-object v5, v5, v6

    move-object v0, v12

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 873
    .local v10, count:I
    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 874
    return v10

    .line 840
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v10           #count:I
    .end local v13           #id:Ljava/lang/String;
    .end local v14           #isBookmarkTable:Z
    :cond_7
    const/4 v5, 0x0

    move v14, v5

    goto/16 :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 757
    sget-object v1, Lcom/android/browser/model/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 758
    .local v0, match:I
    sparse-switch v0, :sswitch_data_0

    .line 775
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 760
    :sswitch_0
    const-string v1, "vnd.android.cursor.dir/bookmark"

    .line 772
    :goto_0
    return-object v1

    .line 763
    :sswitch_1
    const-string v1, "vnd.android.cursor.item/bookmark"

    goto :goto_0

    .line 766
    :sswitch_2
    const-string v1, "vnd.android.cursor.dir/searches"

    goto :goto_0

    .line 769
    :sswitch_3
    const-string v1, "vnd.android.cursor.item/searches"

    goto :goto_0

    .line 772
    :sswitch_4
    const-string v1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_0

    .line 758
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_3
        0x14 -> :sswitch_4
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const-wide/16 v8, 0x0

    const-string v12, "url"

    const-string v11, "bookmark"

    const-string v10, "Unknown URL"

    .line 781
    const/4 v1, 0x0

    .line 782
    .local v1, isBookmarkTable:Z
    iget-object v6, p0, Lcom/android/browser/model/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 784
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/browser/model/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 785
    .local v2, match:I
    const/4 v5, 0x0

    .line 786
    .local v5, uri:Landroid/net/Uri;
    packed-switch v2, :pswitch_data_0

    .line 811
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 789
    :pswitch_0
    sget-object v6, Lcom/android/browser/model/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string v7, "url"

    invoke-virtual {v0, v6, v12, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 791
    .local v3, rowID:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_0

    .line 792
    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 795
    :cond_0
    const/4 v1, 0x1

    .line 814
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    .line 815
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 801
    .end local v3           #rowID:J
    :pswitch_1
    sget-object v6, Lcom/android/browser/model/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "url"

    invoke-virtual {v0, v6, v12, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 803
    .restart local v3       #rowID:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_1

    .line 804
    sget-object v6, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    .line 817
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/model/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 822
    if-eqz v1, :cond_3

    const-string v6, "bookmark"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "bookmark"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_3

    .line 825
    iget-object v6, p0, Lcom/android/browser/model/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 827
    :cond_3
    return-object v5

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/browser/model/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 283
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/model/BrowserProvider$DatabaseHelper;

    invoke-direct {v1, v0}, Lcom/android/browser/model/BrowserProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/model/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 284
    new-instance v1, Landroid/app/backup/BackupManager;

    invoke-direct {v1, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/model/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 285
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 24
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 677
    sget-object v6, Lcom/android/browser/model/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 678
    .local v21, match:I
    const/4 v6, -0x1

    move/from16 v0, v21

    move v1, v6

    if-ne v0, v1, :cond_0

    .line 679
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 681
    :cond_0
    const/16 v6, 0x14

    move/from16 v0, v21

    move v1, v6

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/BrowserProvider;->mResultsCursor:Lcom/android/browser/model/BrowserProvider$ResultsCursor;

    move-object v6, v0

    if-eqz v6, :cond_1

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/BrowserProvider;->mResultsCursor:Lcom/android/browser/model/BrowserProvider$ResultsCursor;

    move-object/from16 v22, v0

    .line 683
    .local v22, results:Landroid/database/Cursor;
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/model/BrowserProvider;->mResultsCursor:Lcom/android/browser/model/BrowserProvider$ResultsCursor;

    move-object/from16 v6, v22

    .line 752
    .end local v22           #results:Landroid/database/Cursor;
    .end local p2
    :goto_0
    return-object v6

    .line 686
    .restart local p2
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 688
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v6, 0x14

    move/from16 v0, v21

    move v1, v6

    if-eq v0, v1, :cond_2

    const/16 v6, 0x15

    move/from16 v0, v21

    move v1, v6

    if-ne v0, v1, :cond_9

    .line 691
    :cond_2
    const/4 v6, 0x0

    aget-object v6, p4, v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    aget-object v6, p4, v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 692
    :cond_3
    const/4 v8, 0x0

    .line 693
    .local v8, suggestSelection:Ljava/lang/String;
    const/4 v9, 0x0

    .line 713
    .local v9, myArgs:[Ljava/lang/String;
    :goto_1
    sget-object v6, Lcom/android/browser/model/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    sget-object v7, Lcom/android/browser/model/BrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "visits DESC, date DESC"

    sget-object v13, Lcom/android/browser/model/BrowserProvider;->MAX_SUGGESTION_LONG_ENTRIES_STRING:Ljava/lang/String;

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 717
    .local v19, c:Landroid/database/Cursor;
    const/16 v6, 0x15

    move/from16 v0, v21

    move v1, v6

    if-eq v0, v1, :cond_4

    sget-object v6, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 719
    :cond_4
    new-instance v6, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;

    const/4 v7, 0x0

    const-string v8, ""

    .end local v8           #suggestSelection:Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/model/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_0

    .line 695
    .end local v9           #myArgs:[Ljava/lang/String;
    .end local v19           #c:Landroid/database/Cursor;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 696
    .local v20, like:Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, p4, v6

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x0

    aget-object v6, p4, v6

    const-string v7, "file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 698
    :cond_6
    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/String;

    .line 699
    .restart local v9       #myArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    aput-object v20, v9, v6

    .line 700
    move-object/from16 v8, p3

    .restart local v8       #suggestSelection:Ljava/lang/String;
    goto :goto_1

    .line 702
    .end local v8           #suggestSelection:Ljava/lang/String;
    .end local v9           #myArgs:[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://www."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://www."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x4

    aput-object v20, v6, v7

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v9, v0

    .line 709
    .restart local v9       #myArgs:[Ljava/lang/String;
    const-string v8, "(url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?) AND (bookmark = 1 OR user_entered = 1)"

    .restart local v8       #suggestSelection:Ljava/lang/String;
    goto/16 :goto_1

    .line 721
    .end local v20           #like:Ljava/lang/String;
    .restart local v19       #c:Landroid/database/Cursor;
    :cond_8
    new-instance v6, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, p4, v8

    .end local v8           #suggestSelection:Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/model/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 725
    .end local v9           #myArgs:[Ljava/lang/String;
    .end local v19           #c:Landroid/database/Cursor;
    :cond_9
    const/4 v12, 0x0

    .line 726
    .local v12, projection:[Ljava/lang/String;
    if-eqz p2, :cond_a

    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    if-lez v6, :cond_a

    .line 727
    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    new-array v12, v6, [Ljava/lang/String;

    .line 728
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move v8, v0

    move-object/from16 v0, p2

    move v1, v6

    move-object v2, v12

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 729
    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    const-string v7, "_id AS _id"

    aput-object v7, v12, v6

    .line 732
    :cond_a
    new-instance v23, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    move-object/from16 v0, v23

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 733
    .local v23, whereClause:Ljava/lang/StringBuilder;
    const/16 v6, 0xa

    move/from16 v0, v21

    move v1, v6

    if-eq v0, v1, :cond_b

    const/16 v6, 0xb

    move/from16 v0, v21

    move v1, v6

    if-ne v0, v1, :cond_c

    .line 734
    :cond_b
    const-string v6, "(_id = "

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    :cond_c
    if-eqz p3, :cond_e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_e

    .line 740
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_d

    .line 741
    const-string v6, " AND "

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :cond_d
    const/16 v6, 0x28

    move-object/from16 v0, v23

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 745
    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    const/16 v6, 0x29

    move-object/from16 v0, v23

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 748
    :cond_e
    sget-object v6, Lcom/android/browser/model/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v7, v21, 0xa

    aget-object v11, v6, v7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v10, v5

    move-object/from16 v14, p4

    move-object/from16 v17, p5

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 751
    .restart local v19       #c:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/model/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v6, v19

    .line 752
    goto/16 :goto_0
.end method

.method setQueryResults(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/model/BrowserProvider;->mResultsCursor:Lcom/android/browser/model/BrowserProvider$ResultsCursor;

    .line 671
    :goto_0
    return-void

    .line 669
    :cond_0
    new-instance v0, Lcom/android/browser/model/BrowserProvider$ResultsCursor;

    invoke-direct {v0, p1}, Lcom/android/browser/model/BrowserProvider$ResultsCursor;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/browser/model/BrowserProvider;->mResultsCursor:Lcom/android/browser/model/BrowserProvider$ResultsCursor;

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 882
    .local v13, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/browser/model/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 883
    .local v15, match:I
    const/4 v6, -0x1

    if-eq v15, v6, :cond_0

    const/16 v6, 0x14

    if-ne v15, v6, :cond_1

    .line 884
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 887
    :cond_1
    const/16 v6, 0xa

    if-eq v15, v6, :cond_2

    const/16 v6, 0xb

    if-ne v15, v6, :cond_4

    .line 888
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 889
    .local v17, sb:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 890
    const-string v6, "( "

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    const-string v6, " ) AND "

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 895
    .local v14, id:Ljava/lang/String;
    const-string v6, "_id = "

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 900
    .end local v14           #id:Ljava/lang/String;
    .end local v17           #sb:Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/model/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 905
    .local v5, cr:Landroid/content/ContentResolver;
    const/16 v6, 0xa

    if-eq v15, v6, :cond_5

    if-nez v15, :cond_7

    .line 906
    :cond_5
    const/4 v11, 0x0

    .line 910
    .local v11, changingBookmarks:Z
    const-string v6, "bookmark"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 911
    const/4 v11, 0x1

    .line 929
    :cond_6
    :goto_0
    if-eqz v11, :cond_7

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 934
    .end local v11           #changingBookmarks:Z
    :cond_7
    sget-object v6, Lcom/android/browser/model/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v7, v15, 0xa

    aget-object v6, v6, v7

    move-object v0, v13

    move-object v1, v6

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 935
    .local v16, ret:I
    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 936
    return v16

    .line 912
    .end local v16           #ret:I
    .restart local v11       #changingBookmarks:Z
    :cond_8
    const-string v6, "title"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "url"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_9
    const-string v6, "_id"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 918
    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "bookmark"

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_id"

    move-object/from16 v0, p2

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 922
    .local v12, cursor:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 923
    const/4 v6, 0x0

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    move v11, v6

    .line 925
    :cond_a
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 923
    :cond_b
    const/4 v6, 0x0

    move v11, v6

    goto :goto_1
.end method
