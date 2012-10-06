.class public Lcom/miui/milk/source/calls2/CallsManager;
.super Ljava/lang/Object;
.source "CallsManager.java"


# instance fields
.field protected COLUMN_DATE:Ljava/lang/String;

.field protected COLUMN_ID:Ljava/lang/String;

.field protected COLUMN_NUMBER:Ljava/lang/String;

.field protected CONTENT_URI:Landroid/net/Uri;

.field protected mContext:Landroid/content/Context;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->CONTENT_URI:Landroid/net/Uri;

    .line 25
    const-string v0, "_id"

    iput-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_ID:Ljava/lang/String;

    .line 26
    const-string v0, "date"

    iput-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_DATE:Ljava/lang/String;

    .line 27
    const-string v0, "number"

    iput-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_NUMBER:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/miui/milk/source/calls2/CallsManager;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->mResolver:Landroid/content/ContentResolver;

    .line 34
    return-void
.end method

.method private prepareContentValues(Lcom/miui/milk/model/CalllogProtos2$Call;)Landroid/content/ContentValues;
    .locals 4
    .parameter "call"

    .prologue
    .line 128
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 130
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "number"

    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    const-string v1, "date"

    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    const-string v1, "duration"

    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string v1, "new"

    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getNew()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    return-object v0
.end method

.method private setCallField(Lcom/miui/milk/model/CalllogProtos2$Call$Builder;Landroid/database/Cursor;I)V
    .locals 3
    .parameter "call"
    .parameter "cursor"
    .parameter "index"

    .prologue
    .line 105
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, columnName:Ljava/lang/String;
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 111
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setNumber(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    goto :goto_0

    .line 113
    :cond_2
    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setDate(J)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    goto :goto_0

    .line 116
    :cond_3
    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 117
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setDuration(J)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    goto :goto_0

    .line 119
    :cond_4
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setType(I)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    goto :goto_0

    .line 122
    :cond_5
    const-string v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setNew(I)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/miui/milk/model/CalllogProtos2$Call;)J
    .locals 10
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v9, "CallsManager"

    .line 86
    const-string v7, "CallsManager"

    const-string v7, "Saving call"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getDate()J

    move-result-wide v0

    .line 90
    .local v0, date:J
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, number:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v5}, Lcom/miui/milk/source/calls2/CallsManager;->exists(JLjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lcom/miui/milk/source/calls2/CallsManager;->prepareContentValues(Lcom/miui/milk/model/CalllogProtos2$Call;)Landroid/content/ContentValues;

    move-result-object v6

    .line 94
    .local v6, values:Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/miui/milk/source/calls2/CallsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/miui/milk/source/calls2/CallsManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 95
    .local v4, insertedUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 96
    .local v2, id:J
    const-string v7, "CallsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The new call has id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-wide v2

    .line 99
    .end local v2           #id:J
    .end local v4           #insertedUri:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_0
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Cannot create call which is existed in db"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public exists(JLjava/lang/String;)Z
    .locals 10
    .parameter "date"
    .parameter "number"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 142
    new-array v2, v9, [Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v0, v2, v8

    .line 143
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/calls2/CallsManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_DATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_NUMBER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p3, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 150
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    .line 151
    .local v7, found:Z
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 152
    return v7
.end method

.method public isEmpty()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 156
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 159
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/calls2/CallsManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 162
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v7, 0x0

    .line 168
    .local v7, empty:Z
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 169
    return v7

    .line 165
    .end local v7           #empty:Z
    :cond_0
    const/4 v7, 0x1

    .restart local v7       #empty:Z
    goto :goto_0
.end method

.method public load(J)Lcom/miui/milk/model/CalllogProtos2$Call;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    .line 37
    const-string v0, "CallsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Call;->newBuilder()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v6

    .line 41
    .local v6, call:Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    const/4 v7, 0x0

    .line 43
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/calls2/CallsManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 48
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    sub-int v8, v0, v10

    .local v8, index:I
    :goto_0
    if-ltz v8, :cond_0

    .line 50
    invoke-direct {p0, v6, v7, v8}, Lcom/miui/milk/source/calls2/CallsManager;->setCallField(Lcom/miui/milk/model/CalllogProtos2$Call$Builder;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 54
    .end local v8           #index:I
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_1
    invoke-virtual {v6}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->build()Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v0

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public load(JLjava/lang/String;)Lcom/miui/milk/model/CalllogProtos2$Call;
    .locals 11
    .parameter "date"
    .parameter "number"

    .prologue
    const/4 v10, 0x1

    .line 62
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Call;->newBuilder()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v6

    .line 64
    .local v6, call:Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    const/4 v7, 0x0

    .line 66
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/calls2/CallsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/calls2/CallsManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_DATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/milk/source/calls2/CallsManager;->COLUMN_NUMBER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 73
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    sub-int v8, v0, v10

    .local v8, index:I
    :goto_0
    if-ltz v8, :cond_0

    .line 75
    invoke-direct {p0, v6, v7, v8}, Lcom/miui/milk/source/calls2/CallsManager;->setCallField(Lcom/miui/milk/model/CalllogProtos2$Call$Builder;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 79
    .end local v8           #index:I
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_1
    invoke-virtual {v6}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->build()Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v0

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
