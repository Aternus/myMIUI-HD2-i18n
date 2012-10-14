.class public Lcom/android/browser/model/BrowserHistoryDataProvider;
.super Landroid/content/ContentProvider;
.source "BrowserHistoryDataProvider.java"


# static fields
.field public static final FOLDER_URI:Landroid/net/Uri; = null

.field public static final HISTORY_URI:Landroid/net/Uri; = null

.field private static final LOGTAG:Ljava/lang/String; = "browser/BrowserHistoryDataProvider"

.field private static final MAX_HISTORY_COUNT:I = 0xfa

.field public static final TOPSITE_URI:Landroid/net/Uri; = null

.field private static final TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String; = null

.field private static final TRUNCATE_HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field private static final TRUNCATE_N_OLDEST:I = 0x5

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final URI_MATCH_FOLDER:I = 0xa

.field private static final URI_MATCH_FOLDER_ID:I = 0xb

.field private static final URI_MATCH_HISTORY:I = 0x0

.field private static final URI_MATCH_HISTORY_ID:I = 0x1

.field private static final URI_MATCH_TOPSITE:I = 0x64

.field private static final URI_MATCH_TOPSITE_ID:I = 0x65

.field private static sCachedOneClickSystemFolderId:I


# instance fields
.field private mOpenHelper:Lcom/android/browser/model/BrowserDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-string v3, "com.android.browser.history"

    .line 25
    const-string v0, "content://com.android.browser.history/history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    .line 30
    const-string v0, "content://com.android.browser.history/folder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->FOLDER_URI:Landroid/net/Uri;

    .line 36
    const-string v0, "content://com.android.browser.history/topsite"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->TOPSITE_URI:Landroid/net/Uri;

    .line 48
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v4}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 49
    sget-object v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.browser.history"

    const-string v1, "history"

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    sget-object v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.browser.history"

    const-string v1, "history/#"

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    sget-object v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.browser.history"

    const-string v1, "folder"

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.browser.history"

    const-string v1, "folder/#"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.browser.history"

    const-string v1, "topsite"

    const/16 v2, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.browser.history"

    const-string v1, "topsite/#"

    const/16 v2, 0x65

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 427
    sput v4, Lcom/android/browser/model/BrowserHistoryDataProvider;->sCachedOneClickSystemFolderId:I

    .line 431
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 59
    return-void
.end method

.method public static getOneClickSystemFolderId(Landroid/content/ContentResolver;)I
    .locals 9
    .parameter "cr"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v5, "_id"

    .line 396
    sget v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->sCachedOneClickSystemFolderId:I

    if-ltz v0, :cond_0

    .line 397
    sget v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->sCachedOneClickSystemFolderId:I

    .line 411
    :goto_0
    return v0

    .line 399
    :cond_0
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->FOLDER_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v5, v2, v7

    const-string v3, "flags=?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const-string v0, "_id"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 405
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->sCachedOneClickSystemFolderId:I

    .line 408
    :cond_1
    if-eqz v6, :cond_2

    .line 409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_2
    sget v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->sCachedOneClickSystemFolderId:I

    goto :goto_0
.end method

.method public static getSearchable(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "full_url"

    .prologue
    .line 343
    const-string v11, ""

    .line 344
    .local v11, searchable_url:Ljava/lang/String;
    if-eqz p0, :cond_7

    .line 348
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "http"

    const/4 v9, 0x0

    const-string v10, "http"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "https"

    const/4 v9, 0x0

    const-string v10, "https"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 353
    :cond_0
    :try_start_0
    const-string v6, "//"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 354
    .local p0, pieces:[Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, p0, v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    aget-object p0, p0, v6

    .end local p0           #pieces:[Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v6, 0x0

    aget-object p0, p0, v6
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 355
    .end local v11           #searchable_url:Ljava/lang/String;
    .local p0, searchable_url:Ljava/lang/String;
    :goto_0
    :try_start_1
    sget-object v6, Lcom/android/browser/api_v8/PatternsInternal;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, p0

    .line 385
    .end local p0           #searchable_url:Ljava/lang/String;
    .local v6, searchable_url:Ljava/lang/String;
    :goto_1
    return-object v6

    .line 354
    .end local v6           #searchable_url:Ljava/lang/String;
    .restart local v11       #searchable_url:Ljava/lang/String;
    .local p0, pieces:[Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    :try_start_2
    aget-object p0, p0, v6
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 358
    .end local v11           #searchable_url:Ljava/lang/String;
    .local p0, searchable_url:Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 359
    .local v7, pieces1:[Ljava/lang/String;
    const-string v9, ""
    :try_end_3
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 360
    .end local p0           #searchable_url:Ljava/lang/String;
    .local v9, searchable_url:Ljava/lang/String;
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v8, sb:Ljava/lang/StringBuilder;
    array-length p0, v7

    const/4 v6, 0x1

    sub-int/2addr p0, v6

    .local p0, lastNonTopDomainIndex:I
    move v6, p0

    .line 362
    .end local p0           #lastNonTopDomainIndex:I
    .local v6, lastNonTopDomainIndex:I
    :goto_2
    if-ltz v6, :cond_3

    .line 364
    sget-object p0, Lcom/android/browser/api_v8/PatternsInternal;->TOP_LEVEL_DOMAIN:Ljava/util/regex/Pattern;

    aget-object v10, v7, v6

    invoke-virtual {p0, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    .line 365
    .local p0, isTopLevelDomain:Z
    if-nez p0, :cond_4

    .line 368
    .end local p0           #isTopLevelDomain:Z
    :cond_3
    const/4 p0, 0x0

    .local p0, i:I
    :goto_3
    if-gt p0, v6, :cond_5

    .line 370
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v7, p0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .line 362
    .local p0, isTopLevelDomain:Z
    :cond_4
    add-int/lit8 p0, v6, -0x1

    .end local v6           #lastNonTopDomainIndex:I
    .local p0, lastNonTopDomainIndex:I
    move v6, p0

    .end local p0           #lastNonTopDomainIndex:I
    .restart local v6       #lastNonTopDomainIndex:I
    goto :goto_2

    .line 372
    .local p0, i:I
    :cond_5
    if-ltz v6, :cond_6

    .line 373
    const/4 p0, 0x0

    const-string v6, "."

    .end local v6           #lastNonTopDomainIndex:I
    .end local p0           #i:I
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, p0, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;
    :try_end_4
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object p0

    .end local v7           #pieces1:[Ljava/lang/String;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    .end local v9           #searchable_url:Ljava/lang/String;
    .local p0, searchable_url:Ljava/lang/String;
    :goto_4
    move-object v6, p0

    .line 385
    .end local p0           #searchable_url:Ljava/lang/String;
    .local v6, searchable_url:Ljava/lang/String;
    goto :goto_1

    .line 375
    .end local v6           #searchable_url:Ljava/lang/String;
    .restart local v11       #searchable_url:Ljava/lang/String;
    :catch_0
    move-exception p0

    move-object v6, v11

    .line 377
    .end local v11           #searchable_url:Ljava/lang/String;
    .restart local v6       #searchable_url:Ljava/lang/String;
    .local p0, e:Ljava/util/regex/PatternSyntaxException;
    :goto_5
    const-string p0, "browser/BrowserHistoryDataProvider"

    .end local p0           #e:Ljava/util/regex/PatternSyntaxException;
    const-string v7, "splited string contains no \'/\' or \'.\'"

    invoke-static {p0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v6

    .line 382
    .end local v6           #searchable_url:Ljava/lang/String;
    .local p0, searchable_url:Ljava/lang/String;
    goto :goto_4

    .line 379
    .end local p0           #searchable_url:Ljava/lang/String;
    .restart local v11       #searchable_url:Ljava/lang/String;
    :catch_1
    move-exception p0

    move-object v6, v11

    .line 381
    .end local v11           #searchable_url:Ljava/lang/String;
    .restart local v6       #searchable_url:Ljava/lang/String;
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_6
    const-string v7, "browser/BrowserHistoryDataProvider"

    const-string v8, "index out of bounds"

    invoke-static {v7, v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v6

    .end local v6           #searchable_url:Ljava/lang/String;
    .local p0, searchable_url:Ljava/lang/String;
    goto :goto_4

    .line 379
    :catch_2
    move-exception v6

    move-object v12, v6

    move-object v6, p0

    .end local p0           #searchable_url:Ljava/lang/String;
    .restart local v6       #searchable_url:Ljava/lang/String;
    move-object p0, v12

    goto :goto_6

    .end local v6           #searchable_url:Ljava/lang/String;
    .restart local v7       #pieces1:[Ljava/lang/String;
    .restart local v9       #searchable_url:Ljava/lang/String;
    :catch_3
    move-exception p0

    move-object v6, v9

    .end local v9           #searchable_url:Ljava/lang/String;
    .restart local v6       #searchable_url:Ljava/lang/String;
    goto :goto_6

    .line 375
    .end local v6           #searchable_url:Ljava/lang/String;
    .end local v7           #pieces1:[Ljava/lang/String;
    .restart local p0       #searchable_url:Ljava/lang/String;
    :catch_4
    move-exception v6

    move-object v12, v6

    move-object v6, p0

    .end local p0           #searchable_url:Ljava/lang/String;
    .restart local v6       #searchable_url:Ljava/lang/String;
    move-object p0, v12

    goto :goto_5

    .end local v6           #searchable_url:Ljava/lang/String;
    .restart local v7       #pieces1:[Ljava/lang/String;
    .restart local v9       #searchable_url:Ljava/lang/String;
    :catch_5
    move-exception p0

    move-object v6, v9

    .end local v9           #searchable_url:Ljava/lang/String;
    .restart local v6       #searchable_url:Ljava/lang/String;
    goto :goto_5

    .local v6, lastNonTopDomainIndex:I
    .restart local v8       #sb:Ljava/lang/StringBuilder;
    .restart local v9       #searchable_url:Ljava/lang/String;
    .local p0, i:I
    :cond_6
    move-object p0, v9

    .end local v9           #searchable_url:Ljava/lang/String;
    .local p0, searchable_url:Ljava/lang/String;
    goto :goto_4

    .end local v6           #lastNonTopDomainIndex:I
    .end local v7           #pieces1:[Ljava/lang/String;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    .restart local v11       #searchable_url:Ljava/lang/String;
    .local p0, full_url:Ljava/lang/String;
    :cond_7
    move-object p0, v11

    .end local v11           #searchable_url:Ljava/lang/String;
    .local p0, searchable_url:Ljava/lang/String;
    goto :goto_4
.end method

.method public static isIllegalHistoryUrl(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    .line 420
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 424
    :goto_0
    return v0

    .line 422
    :cond_1
    const-string v0, "content://browser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 423
    goto :goto_0

    .line 424
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final truncateHistory(Landroid/content/ContentResolver;)V
    .locals 9
    .parameter "cr"

    .prologue
    .line 313
    const/4 v6, 0x0

    .line 316
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/model/BrowserHistoryDataProvider;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "bookmark = 0"

    const/4 v4, 0x0

    const-string v5, "date"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_0

    .line 325
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v0, 0x5

    if-ge v8, v0, :cond_0

    .line 328
    sget-object v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 330
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 336
    .end local v8           #i:I
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_1
    :goto_1
    return-void

    .line 325
    .restart local v8       #i:I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 333
    .end local v8           #i:I
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 334
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "browser/BrowserHistoryDataProvider"

    const-string v1, "truncateHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 64
    :try_start_0
    iget-object v6, p0, Lcom/android/browser/model/BrowserHistoryDataProvider;->mOpenHelper:Lcom/android/browser/model/BrowserDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/browser/model/BrowserDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 65
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/browser/model/BrowserHistoryDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 66
    .local v5, match:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 67
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #match:I
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 88
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    const-string v6, "browser/BrowserHistoryDataProvider"

    const-string v7, "error"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v8

    .line 90
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :goto_0
    return v6

    .line 70
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5       #match:I
    :cond_0
    if-eq v5, v7, :cond_1

    if-ne v5, v9, :cond_5

    :cond_1
    move v4, v7

    .line 72
    .local v4, isIdQuery:Z
    :goto_1
    if-eqz v4, :cond_2

    .line 73
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/browser/common/ContentProviderUtil;->fixIdQueryUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 77
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 78
    .local v0, count:I
    if-eq v5, v7, :cond_3

    if-nez v5, :cond_6

    .line 79
    :cond_3
    const-string v6, "history"

    invoke-virtual {v2, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 85
    :cond_4
    :goto_2
    const/4 v6, 0x0

    invoke-virtual {v1, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v6, v0

    .line 86
    goto :goto_0

    .end local v0           #count:I
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #isIdQuery:Z
    :cond_5
    move v4, v8

    .line 70
    goto :goto_1

    .line 80
    .restart local v0       #count:I
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v4       #isIdQuery:Z
    :cond_6
    if-eq v5, v9, :cond_7

    const/16 v6, 0xa

    if-ne v5, v6, :cond_8

    .line 81
    :cond_7
    const-string v6, "folder"

    invoke-virtual {v2, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 83
    :cond_8
    const/16 v6, 0x65

    if-eq v5, v6, :cond_9

    const/16 v6, 0x64

    if-ne v5, v6, :cond_4

    .line 84
    :cond_9
    const-string v6, "topsite"

    invoke-virtual {v2, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 95
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 96
    .local v0, match:I
    sparse-switch v0, :sswitch_data_0

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :sswitch_0
    const-string v1, "vnd.android.cursor.dir/bookmark"

    .line 109
    :goto_0
    return-object v1

    .line 100
    :sswitch_1
    const-string v1, "vnd.android.cursor.item/bookmark"

    goto :goto_0

    .line 102
    :sswitch_2
    const-string v1, "vnd.android.cursor.dir/bookmark_folder"

    goto :goto_0

    .line 104
    :sswitch_3
    const-string v1, "vnd.android.cursor.item/bookmark_folder"

    goto :goto_0

    .line 107
    :sswitch_4
    const-string v1, "vnd.android.cursor.dir/topsite"

    goto :goto_0

    .line 109
    :sswitch_5
    const-string v1, "vnd.android.cursor.item/topsite"

    goto :goto_0

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const-wide/16 v10, 0x0

    const-string v6, "title"

    const-string v6, "url"

    .line 118
    :try_start_0
    iget-object v6, p0, Lcom/android/browser/model/BrowserHistoryDataProvider;->mOpenHelper:Lcom/android/browser/model/BrowserDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/browser/model/BrowserDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 120
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/browser/model/BrowserHistoryDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 121
    .local v2, match:I
    const/4 v5, 0x0

    .line 123
    .local v5, uri:Landroid/net/Uri;
    sparse-switch v2, :sswitch_data_0

    .line 164
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #match:I
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 170
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v6, "browser/BrowserHistoryDataProvider"

    const-string v7, "error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    const/4 v6, 0x0

    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-object v6

    .line 127
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #match:I
    .restart local v5       #uri:Landroid/net/Uri;
    :sswitch_0
    :try_start_1
    const-string v6, "searchable_url"

    const-string v7, "url"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getSearchable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v7, "searchable_keywords"

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v6, "url"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v8, v9

    const/4 v9, 0x1

    const-string v6, "title"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v8, v9

    invoke-static {v8}, Lcom/android/browser/model/MiRenUrlDataProvider;->getSearchableKeywords([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v6, "history"

    const-string v7, "url"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 133
    .local v3, rowID:J
    cmp-long v6, v3, v10

    if-lez v6, :cond_0

    .line 134
    sget-object v6, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 166
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    move-object v6, v5

    .line 168
    goto :goto_0

    .line 141
    .end local v3           #rowID:J
    :sswitch_1
    const-string v6, "folder"

    const-string v7, "title"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 142
    .restart local v3       #rowID:J
    cmp-long v6, v3, v10

    if-lez v6, :cond_0

    .line 143
    sget-object v6, Lcom/android/browser/model/BrowserHistoryDataProvider;->FOLDER_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1

    .line 151
    .end local v3           #rowID:J
    :sswitch_2
    const-string v6, "searchable_url"

    const-string v7, "url"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getSearchable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v7, "searchable_keywords"

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v6, "url"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v8, v9

    const/4 v9, 0x1

    const-string v6, "title"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v8, v9

    invoke-static {v8}, Lcom/android/browser/model/MiRenUrlDataProvider;->getSearchableKeywords([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v6, "topsite"

    const-string v7, "url"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 157
    .restart local v3       #rowID:J
    cmp-long v6, v3, v10

    if-lez v6, :cond_0

    .line 158
    sget-object v6, Lcom/android/browser/model/BrowserHistoryDataProvider;->TOPSITE_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 123
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/android/browser/model/BrowserDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/browser/model/BrowserDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/model/BrowserHistoryDataProvider;->mOpenHelper:Lcom/android/browser/model/BrowserDatabaseHelper;

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 185
    :try_start_0
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 186
    .local v11, match:I
    const/4 v1, -0x1

    if-ne v11, v1, :cond_0

    .line 187
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v11           #match:I
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 219
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "browser/BrowserHistoryDataProvider"

    const-string v2, "error"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    const/4 v1, 0x0

    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-object v1

    .line 190
    .restart local v11       #match:I
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/browser/model/BrowserHistoryDataProvider;->mOpenHelper:Lcom/android/browser/model/BrowserDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/browser/model/BrowserDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 192
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 193
    .local v2, projection:[Ljava/lang/String;
    if-eqz p2, :cond_1

    array-length v1, p2

    if-lez v1, :cond_1

    .line 194
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 195
    const/4 v1, 0x0

    const/4 v3, 0x0

    array-length v4, p2

    invoke-static {p2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    array-length v1, p2

    const-string v3, "_id AS _id"

    aput-object v3, v2, v1

    .line 199
    :cond_1
    const/4 v1, 0x1

    if-eq v11, v1, :cond_2

    const/16 v1, 0xb

    if-eq v11, v1, :cond_2

    const/16 v1, 0x65

    if-ne v11, v1, :cond_3

    .line 200
    :cond_2
    invoke-static {p1, p3}, Lcom/android/browser/common/ContentProviderUtil;->fixIdQueryUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 203
    :cond_3
    const/4 v9, 0x0

    .line 204
    .local v9, c:Landroid/database/Cursor;
    const/4 v1, 0x1

    if-eq v11, v1, :cond_4

    if-nez v11, :cond_6

    .line 205
    :cond_4
    const-string v1, "history"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 216
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v9, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v1, v9

    .line 217
    goto :goto_0

    .line 207
    :cond_6
    const/16 v1, 0xb

    if-eq v11, v1, :cond_7

    const/16 v1, 0xa

    if-ne v11, v1, :cond_8

    .line 208
    :cond_7
    const-string v1, "folder"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_1

    .line 212
    :cond_8
    const/16 v1, 0x65

    if-eq v11, v1, :cond_9

    const/16 v1, 0x64

    if-ne v11, v1, :cond_5

    .line 213
    :cond_9
    const-string v1, "topsite"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 228
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/BrowserHistoryDataProvider;->mOpenHelper:Lcom/android/browser/model/BrowserDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/model/BrowserDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 230
    .local v13, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/browser/model/BrowserHistoryDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 231
    .local v15, match:I
    const/4 v5, -0x1

    if-ne v15, v5, :cond_0

    .line 232
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unknown URL"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v13           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v15           #match:I
    :catch_0
    move-exception v5

    move-object v14, v5

    .line 296
    .local v14, e:Landroid/database/sqlite/SQLiteException;
    const-string v5, "browser/BrowserHistoryDataProvider"

    const-string v6, "error"

    invoke-static {v5, v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    const/4 v5, 0x0

    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    :goto_0
    return v5

    .line 235
    .restart local v13       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v15       #match:I
    :cond_0
    const/4 v5, 0x1

    if-eq v15, v5, :cond_1

    const/16 v5, 0xb

    if-eq v15, v5, :cond_1

    const/16 v5, 0x65

    if-ne v15, v5, :cond_2

    .line 236
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/browser/common/ContentProviderUtil;->fixIdQueryUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 239
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 241
    .local v12, cr:Landroid/content/ContentResolver;
    const/16 v18, -0x1

    .line 242
    .local v18, ret:I
    const/4 v5, 0x1

    if-eq v15, v5, :cond_3

    if-nez v15, :cond_b

    .line 243
    :cond_3
    const/4 v5, 0x1

    if-ne v15, v5, :cond_9

    .line 244
    const-string v5, "url"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "title"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 245
    :cond_4
    const-string v5, "url"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 246
    .local v17, newurl:Ljava/lang/String;
    const-string v5, "title"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 247
    .local v16, newtitle:Ljava/lang/String;
    const-string v5, "url"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "title"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 248
    :cond_5
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "url"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "title"

    aput-object v6, v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/browser/model/BrowserHistoryDataProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 252
    .local v11, cOld:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 253
    const-string v5, "url"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 254
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 255
    :cond_6
    const-string v5, "title"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 256
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 258
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 260
    .end local v11           #cOld:Landroid/database/Cursor;
    :cond_8
    const-string v5, "searchable_url"

    invoke-static/range {v17 .. v17}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getSearchable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v5, "searchable_keywords"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    const/4 v7, 0x1

    aput-object v16, v6, v7

    invoke-static {v6}, Lcom/android/browser/model/MiRenUrlDataProvider;->getSearchableKeywords([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v16           #newtitle:Ljava/lang/String;
    .end local v17           #newurl:Ljava/lang/String;
    :cond_9
    const-string v5, "history"

    move-object v0, v13

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 293
    :cond_a
    :goto_1
    const/4 v5, 0x0

    move-object v0, v12

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move/from16 v5, v18

    .line 294
    goto/16 :goto_0

    .line 266
    :cond_b
    const/16 v5, 0xb

    if-eq v15, v5, :cond_c

    const/16 v5, 0xa

    if-ne v15, v5, :cond_d

    .line 267
    :cond_c
    const-string v5, "folder"

    move-object v0, v13

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    goto :goto_1

    .line 270
    :cond_d
    const/16 v5, 0x65

    if-eq v15, v5, :cond_e

    const/16 v5, 0x64

    if-ne v15, v5, :cond_a

    .line 271
    :cond_e
    const/16 v5, 0x65

    if-ne v15, v5, :cond_13

    .line 272
    const-string v5, "url"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 273
    .restart local v17       #newurl:Ljava/lang/String;
    const-string v5, "title"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 274
    .restart local v16       #newtitle:Ljava/lang/String;
    const-string v5, "url"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "title"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 275
    :cond_f
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "url"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "title"

    aput-object v6, v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/browser/model/BrowserHistoryDataProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 279
    .restart local v11       #cOld:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 280
    const-string v5, "url"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 281
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 282
    :cond_10
    const-string v5, "title"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 283
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 285
    :cond_11
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 287
    .end local v11           #cOld:Landroid/database/Cursor;
    :cond_12
    const-string v5, "searchable_url"

    invoke-static/range {v17 .. v17}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getSearchable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v5, "searchable_keywords"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    const/4 v7, 0x1

    aput-object v16, v6, v7

    invoke-static {v6}, Lcom/android/browser/model/MiRenUrlDataProvider;->getSearchableKeywords([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .end local v16           #newtitle:Ljava/lang/String;
    .end local v17           #newurl:Ljava/lang/String;
    :cond_13
    const-string v5, "topsite"

    move-object v0, v13

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v18

    goto/16 :goto_1
.end method
