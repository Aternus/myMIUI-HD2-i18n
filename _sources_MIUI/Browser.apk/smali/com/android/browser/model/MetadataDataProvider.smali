.class public Lcom/android/browser/model/MetadataDataProvider;
.super Landroid/content/ContentProvider;
.source "MetadataDataProvider.java"


# static fields
.field public static final METADATA_MUSIC_URI:Landroid/net/Uri; = null

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final URI_MATCH_MUSIC:I = 0xa

.field private static final URI_MATCH_MUSIC_ID:I = 0xb

.field private static final URI_MATCH_SUFFIX_ITEM:I = 0x1


# instance fields
.field private mOpenHelper:Lcom/android/browser/model/MetadataDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v3, "com.android.browser.metadata"

    .line 19
    const-string v0, "content://com.android.browser.metadata/music"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/model/MetadataDataProvider;->METADATA_MUSIC_URI:Landroid/net/Uri;

    .line 27
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/browser/model/MetadataDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 28
    sget-object v0, Lcom/android/browser/model/MetadataDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.browser.metadata"

    const-string v1, "music"

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    sget-object v0, Lcom/android/browser/model/MetadataDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.browser.metadata"

    const-string v1, "music/#"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v6, 0x1

    .line 43
    iget-object v5, p0, Lcom/android/browser/model/MetadataDataProvider;->mOpenHelper:Lcom/android/browser/model/MetadataDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/browser/model/MetadataDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 45
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/browser/model/MetadataDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 46
    .local v4, match:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 47
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unknown URL"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 50
    :cond_0
    rem-int/lit8 v5, v4, 0xa

    if-ne v5, v6, :cond_4

    move v3, v6

    .line 51
    .local v3, isIdQuery:Z
    :goto_0
    if-eqz v3, :cond_1

    .line 52
    invoke-static {p1, p2}, Lcom/android/browser/common/ContentProviderUtil;->fixIdQueryUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/model/MetadataDataProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 56
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 57
    .local v0, count:I
    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    const/16 v5, 0xb

    if-ne v4, v5, :cond_3

    .line 58
    :cond_2
    const-string v5, "music"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 60
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 61
    return v0

    .line 50
    .end local v0           #count:I
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v3           #isIdQuery:Z
    :cond_4
    const/4 v5, 0x0

    move v3, v5

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 66
    sget-object v1, Lcom/android/browser/model/MetadataDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 67
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/metadata_music"

    .line 71
    :goto_0
    return-object v1

    :pswitch_1
    const-string v1, "vnd.android.cursor.item/metadata_music"

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const/4 v7, 0x0

    .line 79
    iget-object v5, p0, Lcom/android/browser/model/MetadataDataProvider;->mOpenHelper:Lcom/android/browser/model/MetadataDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/browser/model/MetadataDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 81
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/browser/model/MetadataDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 82
    .local v1, match:I
    const/4 v4, 0x0

    .line 83
    .local v4, uri:Landroid/net/Uri;
    packed-switch v1, :pswitch_data_0

    .line 94
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unknown URL"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 86
    :pswitch_0
    const-string v5, "music"

    const-string v6, "name"

    invoke-virtual {v0, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 87
    .local v2, rowID:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    .line 88
    sget-object v5, Lcom/android/browser/model/MetadataDataProvider;->METADATA_MUSIC_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 97
    :cond_0
    if-nez v4, :cond_1

    move-object v5, v7

    .line 101
    :goto_0
    return-object v5

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/model/MetadataDataProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v5, v4

    .line 101
    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/browser/model/MetadataDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/browser/model/MetadataDataProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/browser/model/MetadataDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/model/MetadataDataProvider;->mOpenHelper:Lcom/android/browser/model/MetadataDatabaseHelper;

    .line 38
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
    .line 107
    sget-object v1, Lcom/android/browser/model/MetadataDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 108
    .local v11, match:I
    const/4 v1, -0x1

    if-ne v11, v1, :cond_0

    .line 109
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/browser/model/MetadataDataProvider;->mOpenHelper:Lcom/android/browser/model/MetadataDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/browser/model/MetadataDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 113
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 114
    .local v2, projection:[Ljava/lang/String;
    if-eqz p2, :cond_1

    array-length v1, p2

    if-lez v1, :cond_1

    .line 115
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 116
    const/4 v1, 0x0

    const/4 v3, 0x0

    array-length v4, p2

    invoke-static {p2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    array-length v1, p2

    const-string v3, "_id AS _id"

    aput-object v3, v2, v1

    .line 120
    :cond_1
    rem-int/lit8 v1, v11, 0xa

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    move v10, v1

    .line 121
    .local v10, isIdQuery:Z
    :goto_0
    if-eqz v10, :cond_2

    .line 122
    invoke-static {p1, p3}, Lcom/android/browser/common/ContentProviderUtil;->fixIdQueryUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 125
    :cond_2
    const/4 v9, 0x0

    .line 126
    .local v9, c:Landroid/database/Cursor;
    const/16 v1, 0xa

    if-eq v11, v1, :cond_3

    const/16 v1, 0xb

    if-ne v11, v1, :cond_4

    .line 127
    :cond_3
    const-string v1, "music"

    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 130
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/model/MetadataDataProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v9, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 131
    return-object v9

    .line 120
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #isIdQuery:Z
    :cond_5
    const/4 v1, 0x0

    move v10, v1

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v6, 0x1

    .line 136
    iget-object v5, p0, Lcom/android/browser/model/MetadataDataProvider;->mOpenHelper:Lcom/android/browser/model/MetadataDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/browser/model/MetadataDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 138
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/browser/model/MetadataDataProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 139
    .local v3, match:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 140
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unknown URL"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 143
    :cond_0
    rem-int/lit8 v5, v3, 0xa

    if-ne v5, v6, :cond_4

    move v2, v6

    .line 144
    .local v2, isIdQuery:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 145
    invoke-static {p1, p3}, Lcom/android/browser/common/ContentProviderUtil;->fixIdQueryUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/model/MetadataDataProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v4, -0x1

    .line 151
    .local v4, ret:I
    const/16 v5, 0xa

    if-eq v3, v5, :cond_2

    const/16 v5, 0xb

    if-ne v3, v5, :cond_3

    .line 152
    :cond_2
    const-string v5, "music"

    invoke-virtual {v1, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 154
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v0, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 155
    return v4

    .line 143
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #isIdQuery:Z
    .end local v4           #ret:I
    :cond_4
    const/4 v5, 0x0

    move v2, v5

    goto :goto_0
.end method
