.class public Lcom/android/mms/SuggestionsProvider;
.super Landroid/content/ContentProvider;
.source "SuggestionsProvider.java"


# static fields
.field static final COLUMN_NAME:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_intent_data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_component"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/SuggestionsProvider;->COLUMN_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 68
    const/16 v18, 0x0

    .line 69
    .local v18, searchString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #searchString:Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 72
    .restart local v18       #searchString:Ljava/lang/String;
    :cond_0
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    const/4 v2, 0x0

    .line 114
    :goto_0
    return-object v2

    .line 75
    :cond_1
    const-string v2, "content://mms-sms/searchSuggest?pattern=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v18, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 78
    .local v3, u:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 86
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 87
    :cond_2
    new-instance v13, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/mms/SuggestionsProvider;->COLUMN_NAME:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v13, v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .end local v3           #u:Landroid/net/Uri;
    .local v13, cursor:Landroid/database/MatrixCursor;
    :cond_3
    move-object v2, v13

    .line 114
    goto :goto_0

    .line 89
    .end local v13           #cursor:Landroid/database/MatrixCursor;
    .restart local v3       #u:Landroid/net/Uri;
    :cond_4
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 90
    .local v17, rowidPos:I
    const-string v2, "suggest_intent_data_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 91
    .local v19, threadIdPos:I
    const-string v2, "suggest_intent_extra_data"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 92
    .local v14, messageIdPos:I
    const-string v2, "suggest_text_1"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 93
    .local v9, addressPos:I
    const-string v2, "suggest_text_2"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 95
    .local v10, bodyPos:I
    new-instance v13, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/mms/SuggestionsProvider;->COLUMN_NAME:[Ljava/lang/String;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .end local v3           #u:Landroid/net/Uri;
    invoke-direct {v13, v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 97
    .restart local v13       #cursor:Landroid/database/MatrixCursor;
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    const/4 v2, 0x6

    move v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 99
    .local v16, row:[Ljava/lang/Object;
    const/4 v2, 0x0

    move-object v0, v11

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v16, v2

    .line 100
    const/4 v2, 0x1

    move-object v0, v11

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v16, v2

    .line 101
    const/4 v2, 0x2

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v16, v2

    .line 103
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, address:Ljava/lang/String;
    if-eqz v8, :cond_5

    const/4 v2, 0x0

    invoke-static {v8, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    move-object v12, v2

    .line 105
    .local v12, contact:Lcom/android/mms/data/Contact;
    :goto_2
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .line 106
    .local v15, name:Ljava/lang/String;
    :goto_3
    const/4 v2, 0x3

    aput-object v15, v16, v2

    .line 107
    const/4 v2, 0x4

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v2

    .line 108
    const/4 v2, 0x5

    const-string v3, "com.android.mms/.ui.ComposeMessageRouterActivity"

    aput-object v3, v16, v2

    .line 110
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 104
    .end local v12           #contact:Lcom/android/mms/data/Contact;
    .end local v15           #name:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    move-object v12, v2

    goto :goto_2

    .line 105
    .restart local v12       #contact:Lcom/android/mms/data/Contact;
    :cond_6
    const-string v2, ""

    move-object v15, v2

    goto :goto_3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
