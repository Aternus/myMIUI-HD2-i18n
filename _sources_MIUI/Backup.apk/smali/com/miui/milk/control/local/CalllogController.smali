.class public Lcom/miui/milk/control/local/CalllogController;
.super Ljava/lang/Object;
.source "CalllogController.java"


# instance fields
.field private callIds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

.field private mCanceled:Z

.field protected mContext:Landroid/content/Context;

.field private mCurrExportIndex:I

.field private mCurrImportIndex:I

.field protected mResolver:Landroid/content/ContentResolver;

.field private mTotalImport:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/milk/control/local/CalllogController;->callIds:Ljava/util/Vector;

    .line 35
    iput v1, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrExportIndex:I

    .line 36
    iput v1, p0, Lcom/miui/milk/control/local/CalllogController;->mTotalImport:I

    .line 37
    iput v1, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrImportIndex:I

    .line 39
    iput-boolean v1, p0, Lcom/miui/milk/control/local/CalllogController;->mCanceled:Z

    .line 42
    iput-object p1, p0, Lcom/miui/milk/control/local/CalllogController;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/control/local/CalllogController;->mResolver:Landroid/content/ContentResolver;

    .line 44
    new-instance v0, Lcom/miui/milk/source/calls2/CallsManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/calls2/CallsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/local/CalllogController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    .line 45
    return-void
.end method

.method private prepareAllCallIds()V
    .locals 9

    .prologue
    const-string v0, "_id"

    .line 161
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/control/local/CalllogController;->callIds:Ljava/util/Vector;

    .line 162
    const/4 v6, 0x0

    .line 164
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/control/local/CalllogController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 170
    if-nez v6, :cond_1

    .line 184
    if-eqz v6, :cond_0

    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 175
    .local v8, idColumnIndex:I
    const/4 v7, 0x0

    .line 177
    .local v7, cursorId:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 178
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 179
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 180
    iget-object v0, p0, Lcom/miui/milk/control/local/CalllogController;->callIds:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 184
    .end local v7           #cursorId:Ljava/lang/String;
    .end local v8           #idColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 184
    .restart local v7       #cursorId:Ljava/lang/String;
    .restart local v8       #idColumnIndex:I
    :cond_3
    if-eqz v6, :cond_0

    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/local/CalllogController;->mCanceled:Z

    .line 49
    return-void
.end method

.method public exportCalllog(Ljava/io/File;)V
    .locals 13
    .parameter "exportFile"

    .prologue
    const-string v12, "Cannot export calllog "

    const-string v11, "CalllogController"

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 57
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->newBuilder()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v3

    .line 58
    .local v3, calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    invoke-direct {p0}, Lcom/miui/milk/control/local/CalllogController;->prepareAllCallIds()V

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, callCount:I
    const/4 v8, 0x0

    iput v8, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrExportIndex:I

    .line 63
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v8, p0, Lcom/miui/milk/control/local/CalllogController;->callIds:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 64
    iget-boolean v8, p0, Lcom/miui/milk/control/local/CalllogController;->mCanceled:Z

    if-eqz v8, :cond_2

    .line 98
    :cond_1
    :goto_1
    return-void

    .line 65
    :cond_2
    iget-object v8, p0, Lcom/miui/milk/control/local/CalllogController;->callIds:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    .local v2, callId:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/miui/milk/control/local/CalllogController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/miui/milk/source/calls2/CallsManager;->load(J)Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v0

    .line 68
    .local v0, call:Lcom/miui/milk/model/CalllogProtos2$Call;
    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {v3, v0}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->addCall(Lcom/miui/milk/model/CalllogProtos2$Call;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    iget v8, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrExportIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrExportIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0           #call:Lcom/miui/milk/model/CalllogProtos2$Call;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 74
    .local v4, e:Ljava/lang/Exception;
    const-string v8, "CalllogController"

    const-string v8, "Cannot load calllog "

    invoke-static {v11, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 78
    .end local v2           #callId:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v7

    .line 79
    .local v7, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->build()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setCalllog(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 80
    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 82
    iget-boolean v8, p0, Lcom/miui/milk/control/local/CalllogController;->mCanceled:Z

    if-nez v8, :cond_1

    .line 86
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 87
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 88
    .local v6, output:Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V

    .line 89
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 90
    const-string v8, "CalllogController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Export Call Counts : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 91
    .end local v6           #output:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 92
    .local v4, e:Ljava/io/FileNotFoundException;
    const-string v8, "CalllogController"

    const-string v8, "Cannot export calllog "

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 93
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v8

    move-object v4, v8

    .line 94
    .local v4, e:Ljava/io/IOException;
    const-string v8, "CalllogController"

    const-string v8, "Cannot export calllog "

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getExportedSize()J
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrExportIndex:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getImportedSize()J
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrImportIndex:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTotalExportSize()J
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/milk/control/local/CalllogController;->callIds:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/control/local/CalllogController;->callIds:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getTotalImportSize()J
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/miui/milk/control/local/CalllogController;->mTotalImport:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public importCalllog(Ljava/io/File;)V
    .locals 12
    .parameter "importFile"

    .prologue
    const-string v11, "Cannot import calllog "

    const-string v10, "CalllogController"

    .line 119
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 120
    .local v4, input:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 122
    .local v1, calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    invoke-static {v4}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncBaseProtos$SyncBase;

    move-result-object v5

    .line 123
    .local v5, syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    invoke-virtual {v5}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->hasVersion()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 124
    const-string v7, "1"

    invoke-virtual {v5}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 125
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 126
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4           #input:Ljava/io/FileInputStream;
    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 127
    .restart local v4       #input:Ljava/io/FileInputStream;
    invoke-static {v4}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v6

    .line 128
    .local v6, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    if-eqz v6, :cond_0

    .line 129
    invoke-virtual {v6}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getCalllog()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v1

    .line 137
    .end local v6           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/miui/milk/control/local/CalllogController;->mCanceled:Z

    if-eqz v7, :cond_3

    .line 158
    .end local v1           #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :cond_1
    :goto_1
    return-void

    .line 134
    .restart local v1       #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v5       #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :cond_2
    invoke-static {p1}, Lcom/miui/milk/adapter/calls/CalllogToCalllog2NoSync;->readFromProtobuf(Ljava/io/File;)Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v1

    goto :goto_0

    .line 139
    :cond_3
    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v1}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->getCallList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Lcom/miui/milk/control/local/CalllogController;->mTotalImport:I

    .line 141
    const/4 v7, 0x0

    iput v7, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrImportIndex:I

    .line 142
    invoke-virtual {v1}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->getCallList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/CalllogProtos2$Call;

    .line 143
    .local v0, call:Lcom/miui/milk/model/CalllogProtos2$Call;
    iget-boolean v7, p0, Lcom/miui/milk/control/local/CalllogController;->mCanceled:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v7, :cond_1

    .line 145
    :try_start_1
    iget-object v7, p0, Lcom/miui/milk/control/local/CalllogController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    invoke-virtual {v7, v0}, Lcom/miui/milk/source/calls2/CallsManager;->add(Lcom/miui/milk/model/CalllogProtos2$Call;)J

    .line 146
    iget v7, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrImportIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrImportIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 147
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 148
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v7, "CalllogController"

    const-string v8, "Cannot add calllog "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 153
    .end local v0           #call:Lcom/miui/milk/model/CalllogProtos2$Call;
    .end local v1           #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 154
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v7, "CalllogController"

    const-string v7, "Cannot import calllog "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 151
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v5       #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :cond_4
    :try_start_3
    const-string v7, "CalllogController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Import Call Counts : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/miui/milk/control/local/CalllogController;->mCurrImportIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 155
    .end local v1           #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 156
    .local v2, e:Ljava/io/IOException;
    const-string v7, "CalllogController"

    const-string v7, "Cannot import calllog "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
