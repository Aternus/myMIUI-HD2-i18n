.class public abstract Lcom/android/providers/calendar/SQLiteContentProvider;
.super Landroid/content/ContentProvider;
.source "SQLiteContentProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# instance fields
.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private volatile mNotifyChange:Z

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private applyingBatch()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    .line 189
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 190
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 192
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 194
    .local v1, numOperations:I
    new-array v3, v1, [Landroid/content/ContentProviderResult;

    .line 195
    .local v3, results:[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 196
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 197
    .local v2, operation:Landroid/content/ContentProviderOperation;
    if-lez v0, :cond_0

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-wide/16 v5, 0xfa0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    .line 200
    :cond_0
    invoke-virtual {v2, p0, v3, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v4

    aput-object v4, v3, v0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v2           #operation:Landroid/content/ContentProviderOperation;
    :cond_1
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 206
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 207
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    return-object v3

    .line 205
    .end local v0           #i:I
    .end local v1           #numOperations:I
    .end local v3           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 206
    iget-object v5, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 207
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    throw v4
.end method

.method protected beforeTransactionCommit()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 111
    array-length v1, p2

    .line 112
    .local v1, numValues:I
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 113
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 116
    :try_start_0
    aget-object v3, p2, v0

    invoke-virtual {p0, p1, v3}, Lcom/android/providers/calendar/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 117
    .local v2, result:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 118
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 120
    :cond_0
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v2           #result:Landroid/net/Uri;
    :cond_1
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 127
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    .line 128
    return v1

    .line 124
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x1

    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, count:I
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 163
    .local v0, applyingBatch:Z
    if-nez v0, :cond_2

    .line 164
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 165
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 167
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/calendar/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 168
    if-lez v1, :cond_0

    .line 169
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 176
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    .line 183
    :cond_1
    :goto_0
    return v1

    .line 173
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 178
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/calendar/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 179
    if-lez v1, :cond_1

    .line 180
    iput-boolean v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method protected abstract getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v2, 0x1

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, result:Landroid/net/Uri;
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 86
    .local v0, applyingBatch:Z
    if-nez v0, :cond_2

    .line 87
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 88
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 90
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/calendar/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 99
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    .line 106
    :cond_1
    :goto_0
    return-object v1

    .line 96
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 101
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/calendar/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_1

    .line 103
    iput-boolean v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected abstract notifyChange()V
.end method

.method public onBegin()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onBeginTransaction()V

    .line 213
    return-void
.end method

.method protected onBeginTransaction()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public onCommit()V
    .locals 0

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->beforeTransactionCommit()V

    .line 217
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/SQLiteContentProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 51
    const/4 v1, 0x1

    return v1
.end method

.method protected onEndTransaction()V
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 232
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->notifyChange()V

    .line 234
    :cond_0
    return-void
.end method

.method public onRollback()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x1

    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, count:I
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 135
    .local v0, applyingBatch:Z
    if-nez v0, :cond_2

    .line 136
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 137
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 139
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/calendar/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 140
    if-lez v1, :cond_0

    .line 141
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 148
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    .line 156
    :cond_1
    :goto_0
    return v1

    .line 145
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 150
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/calendar/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 151
    if-lez v1, :cond_1

    .line 152
    iput-boolean v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
