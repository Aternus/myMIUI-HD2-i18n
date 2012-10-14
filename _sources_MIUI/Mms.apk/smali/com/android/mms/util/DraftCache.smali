.class public Lcom/android/mms/util/DraftCache;
.super Ljava/lang/Object;
.source "DraftCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
    }
.end annotation


# static fields
.field static final DRAFT_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/mms/util/DraftCache;


# instance fields
.field private final mChangeListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/util/DraftCache$OnDraftChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDraftSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/DraftCache;->DRAFT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    .line 50
    const-string v0, "Mms:app"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "DraftCache.constructor"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/util/DraftCache;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/DraftCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/mms/util/DraftCache;->rebuildCache()V

    return-void
.end method

.method public static getInstance()Lcom/android/mms/util/DraftCache;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/android/mms/util/DraftCache;->sInstance:Lcom/android/mms/util/DraftCache;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 197
    new-instance v0, Lcom/android/mms/util/DraftCache;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DraftCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/DraftCache;->sInstance:Lcom/android/mms/util/DraftCache;

    .line 198
    return-void
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 215
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, s:Ljava/lang/String;
    const-string v1, "Mms/draft"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DraftCache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method private declared-synchronized rebuildCache()V
    .locals 21

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    const-string v4, "Mms:app"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    const-string v4, "rebuildCache"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/mms/util/DraftCache;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    move-object/from16 v17, v0

    .line 87
    .local v17, oldDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v16, Ljava/util/HashSet;

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->size()I

    move-result v4

    move-object/from16 v0, v16

    move v1, v4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 89
    .local v16, newDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$MmsSms;->CONTENT_DRAFT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/mms/util/DraftCache;->DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 95
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_3

    .line 97
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    .line 99
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 100
    .local v19, threadId:J
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v4, "Mms:app"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rebuildCache: add tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/mms/util/DraftCache;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    .end local v19           #threadId:J
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v16           #newDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v17           #oldDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 107
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v16       #newDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v17       #oldDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_2
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_3
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    .line 113
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/util/DraftCache;->dump()V

    .line 119
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_6

    .line 138
    :cond_5
    monitor-exit p0

    return-void

    .line 125
    :cond_6
    :try_start_4
    new-instance v11, Ljava/util/HashSet;

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 126
    .local v11, added:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object v0, v11

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 127
    new-instance v18, Ljava/util/HashSet;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 128
    .local v18, removed:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;

    .line 131
    .local v15, l:Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 132
    .restart local v19       #threadId:J
    const/4 v4, 0x1

    move-object v0, v15

    move-wide/from16 v1, v19

    move v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged(JZ)V

    goto :goto_1

    .line 134
    .end local v19           #threadId:J
    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 135
    .restart local v19       #threadId:J
    const/4 v4, 0x0

    move-object v0, v15

    move-wide/from16 v1, v19

    move v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged(JZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms:app"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOnDraftChangedListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/util/DraftCache;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump()V
    .locals 5

    .prologue
    const-string v4, "Mms/draft"

    .line 208
    const-string v2, "Mms/draft"

    const-string v2, "dump:"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v2, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 210
    .local v1, threadId:Ljava/lang/Long;
    const-string v2, "Mms/draft"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    .end local v1           #threadId:Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method public declared-synchronized hasDraft(J)Z
    .locals 2
    .parameter "threadId"

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
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

.method public refresh()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "Mms:app"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "refresh"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/util/DraftCache;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/util/DraftCache$1;

    invoke-direct {v1, p0}, Lcom/android/mms/util/DraftCache$1;-><init>(Lcom/android/mms/util/DraftCache;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method public declared-synchronized removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms:app"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOnDraftChangedListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/util/DraftCache;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDraftState(JZ)V
    .locals 5
    .parameter "threadId"
    .parameter "hasDraft"

    .prologue
    const-string v3, "Mms:app"

    .line 145
    monitor-enter p0

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_1

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    .line 150
    :cond_1
    if-eqz p3, :cond_4

    .line 151
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 156
    .local v0, changed:Z
    :goto_0
    const-string v3, "Mms:app"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDraftState: tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", changed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/android/mms/util/DraftCache;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_2
    const-string v3, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    invoke-virtual {p0}, Lcom/android/mms/util/DraftCache;->dump()V

    .line 165
    :cond_3
    if-eqz v0, :cond_0

    .line 166
    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;

    .line 167
    .local v2, l:Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
    invoke-interface {v2, p1, p2, p3}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 145
    .end local v0           #changed:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 153
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0       #changed:Z
    goto :goto_0
.end method
