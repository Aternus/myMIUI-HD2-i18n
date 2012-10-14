.class public Lcom/android/inputmethod/latin/UserDictionary;
.super Lcom/android/inputmethod/latin/ExpandableDictionary;
.source "UserDictionary.java"


# static fields
.field private static final INDEX_FREQUENCY:I = 0x2

.field private static final INDEX_WORD:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mLocale:Ljava/lang/String;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "word"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "frequency"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 41
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/inputmethod/latin/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 42
    iput-object p2, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    .local v0, cres:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/inputmethod/latin/UserDictionary$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/inputmethod/latin/UserDictionary$1;-><init>(Lcom/android/inputmethod/latin/UserDictionary;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->loadDictionary()V

    .line 55
    return-void
.end method

.method private addWords(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->clearDictionary()V

    .line 123
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getMaxWordLength()I

    move-result v1

    .line 124
    .local v1, maxWordLength:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, word:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 130
    .local v0, frequency:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 131
    invoke-super {p0, v2, v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 133
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 136
    .end local v0           #frequency:I
    .end local v2           #word:Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 137
    return-void
.end method


# virtual methods
.method public declared-synchronized addWord(Ljava/lang/String;I)V
    .locals 4
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getRequiresReload()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->loadDictionaryAsync()V

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getMaxWordLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lt v2, v3, :cond_1

    .line 107
    :goto_0
    monitor-exit p0

    return-void

    .line 89
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 92
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 93
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "word"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "frequency"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v2, "locale"

    iget-object v3, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "appid"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/inputmethod/latin/UserDictionary$2;

    const-string v3, "addWord"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/inputmethod/latin/UserDictionary$2;-><init>(Lcom/android/inputmethod/latin/UserDictionary;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/UserDictionary$2;->start()V

    .line 106
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/UserDictionary;->setRequiresReload(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v1           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 63
    :cond_0
    invoke-super {p0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V
    .locals 1
    .parameter "codes"
    .parameter "callback"
    .parameter "nextLettersFrequencies"

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/ExpandableDictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "word"

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary;->isValidWord(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadDictionaryAsync()V
    .locals 8

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/inputmethod/latin/UserDictionary;->PROJECTION:[Ljava/lang/String;

    const-string v3, "(locale IS NULL) or (locale=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/inputmethod/latin/UserDictionary;->mLocale:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    .local v6, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/UserDictionary;->addWords(Landroid/database/Cursor;)V

    .line 72
    return-void
.end method
