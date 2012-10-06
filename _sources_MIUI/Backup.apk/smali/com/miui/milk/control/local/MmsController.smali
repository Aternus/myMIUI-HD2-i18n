.class public Lcom/miui/milk/control/local/MmsController;
.super Ljava/lang/Object;
.source "MmsController.java"


# instance fields
.field private mCanceled:Z

.field protected mContext:Landroid/content/Context;

.field private volatile mExportedSize:J

.field private mImportedSize:J

.field private mMmsManager:Lcom/miui/milk/source/mms/MmsManager;

.field protected mResolver:Landroid/content/ContentResolver;

.field private volatile mTotalExportSize:J

.field private mTotalImportSize:J

.field private mmsIds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/control/local/MmsController;->mmsIds:Ljava/util/Vector;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/control/local/MmsController;->mCanceled:Z

    .line 132
    iput-wide v1, p0, Lcom/miui/milk/control/local/MmsController;->mTotalExportSize:J

    .line 137
    iput-wide v1, p0, Lcom/miui/milk/control/local/MmsController;->mExportedSize:J

    .line 142
    iput-wide v1, p0, Lcom/miui/milk/control/local/MmsController;->mTotalImportSize:J

    .line 147
    iput-wide v1, p0, Lcom/miui/milk/control/local/MmsController;->mImportedSize:J

    .line 34
    iput-object p1, p0, Lcom/miui/milk/control/local/MmsController;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/control/local/MmsController;->mResolver:Landroid/content/ContentResolver;

    .line 36
    new-instance v0, Lcom/miui/milk/source/mms/MmsManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/mms/MmsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/local/MmsController;->mMmsManager:Lcom/miui/milk/source/mms/MmsManager;

    .line 37
    return-void
.end method

.method private prepareAllMmsIds()V
    .locals 9

    .prologue
    const-string v0, "_id"

    .line 153
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/control/local/MmsController;->mmsIds:Ljava/util/Vector;

    .line 154
    const/4 v6, 0x0

    .line 156
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/control/local/MmsController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 162
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 164
    .local v8, idColumnIndex:I
    const/4 v7, 0x0

    .line 166
    .local v7, cursorId:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 167
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 169
    iget-object v0, p0, Lcom/miui/milk/control/local/MmsController;->mmsIds:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 173
    .end local v7           #cursorId:Ljava/lang/String;
    .end local v8           #idColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 173
    .restart local v7       #cursorId:Ljava/lang/String;
    .restart local v8       #idColumnIndex:I
    :cond_1
    if-eqz v6, :cond_2

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_2
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/local/MmsController;->mCanceled:Z

    .line 41
    return-void
.end method

.method public exportMms(Ljava/io/File;)V
    .locals 14
    .parameter "exportFile"

    .prologue
    const-string v13, "Cannot export mms "

    const-string v12, "MmsController"

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 48
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->newBuilder()Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    move-result-object v3

    .line 49
    .local v3, mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;
    invoke-direct {p0}, Lcom/miui/milk/control/local/MmsController;->prepareAllMmsIds()V

    .line 51
    iget-object v8, p0, Lcom/miui/milk/control/local/MmsController;->mmsIds:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/miui/milk/control/local/MmsController;->mTotalExportSize:J

    .line 52
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/miui/milk/control/local/MmsController;->mExportedSize:J

    .line 53
    const/4 v6, 0x0

    .line 54
    .local v6, sCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    int-to-long v8, v1

    iget-wide v10, p0, Lcom/miui/milk/control/local/MmsController;->mTotalExportSize:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 55
    iget-boolean v8, p0, Lcom/miui/milk/control/local/MmsController;->mCanceled:Z

    if-eqz v8, :cond_2

    .line 87
    :cond_1
    :goto_1
    return-void

    .line 56
    :cond_2
    iget-object v8, p0, Lcom/miui/milk/control/local/MmsController;->mmsIds:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    .local v2, id:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/miui/milk/control/local/MmsController;->mMmsManager:Lcom/miui/milk/source/mms/MmsManager;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/miui/milk/source/mms/MmsManager;->backupToProtocolBuffer(J)Lcom/miui/milk/model/MmsProtos$Pdu;

    move-result-object v5

    .line 59
    .local v5, pdu:Lcom/miui/milk/model/MmsProtos$Pdu;
    if-eqz v5, :cond_3

    .line 60
    invoke-virtual {v3, v5}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->addPdus(Lcom/miui/milk/model/MmsProtos$Pdu;)Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;

    .line 61
    add-int/lit8 v6, v6, 0x1

    .line 62
    iget-wide v8, p0, Lcom/miui/milk/control/local/MmsController;->mExportedSize:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/miui/milk/control/local/MmsController;->mExportedSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v5           #pdu:Lcom/miui/milk/model/MmsProtos$Pdu;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 65
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "MmsController"

    const-string v8, "Cannot load mms "

    invoke-static {v12, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 69
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #id:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v7

    .line 70
    .local v7, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/MmsProtos$MmsCollection$Builder;->build()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setMmsCollection(Lcom/miui/milk/model/MmsProtos$MmsCollection;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 71
    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 73
    iget-boolean v8, p0, Lcom/miui/milk/control/local/MmsController;->mCanceled:Z

    if-nez v8, :cond_1

    .line 77
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 78
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 79
    .local v4, output:Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V

    .line 80
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 81
    const-string v8, "MmsController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Export Mms Counts : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 82
    .end local v4           #output:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 83
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v8, "MmsController"

    const-string v8, "Cannot export mms "

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 84
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 85
    .local v0, e:Ljava/io/IOException;
    const-string v8, "MmsController"

    const-string v8, "Cannot export mms "

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getExportedSize()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/miui/milk/control/local/MmsController;->mExportedSize:J

    return-wide v0
.end method

.method public getImportedSize()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/miui/milk/control/local/MmsController;->mImportedSize:J

    return-wide v0
.end method

.method public getTotalExportSize()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/miui/milk/control/local/MmsController;->mTotalExportSize:J

    return-wide v0
.end method

.method public getTotalImportSize()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/miui/milk/control/local/MmsController;->mTotalImportSize:J

    return-wide v0
.end method

.method public importMms(Ljava/io/File;)V
    .locals 13
    .parameter "importFile"

    .prologue
    const-string v12, "Cannot import mms "

    const-string v11, "MmsController"

    .line 92
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 93
    .local v2, input:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 95
    .local v3, mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    invoke-static {v2}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncBaseProtos$SyncBase;

    move-result-object v5

    .line 96
    .local v5, syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    invoke-virtual {v5}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->hasVersion()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 97
    const-string v7, "1"

    invoke-virtual {v5}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 98
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 99
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2           #input:Ljava/io/FileInputStream;
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 100
    .restart local v2       #input:Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v6

    .line 101
    .local v6, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    if-eqz v6, :cond_0

    .line 102
    invoke-virtual {v6}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getMmsCollection()Lcom/miui/milk/model/MmsProtos$MmsCollection;

    move-result-object v3

    .line 107
    .end local v6           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_0
    iget-boolean v7, p0, Lcom/miui/milk/control/local/MmsController;->mCanceled:Z

    if-eqz v7, :cond_2

    .line 130
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v3           #mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .end local v5           #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :cond_1
    :goto_0
    return-void

    .line 109
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v3       #mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .restart local v5       #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :cond_2
    if-eqz v3, :cond_1

    .line 110
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/miui/milk/control/local/MmsController;->mImportedSize:J

    .line 111
    invoke-virtual {v3}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->getPdusList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/miui/milk/control/local/MmsController;->mTotalImportSize:J

    .line 112
    invoke-virtual {v3}, Lcom/miui/milk/model/MmsProtos$MmsCollection;->getPdusList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/model/MmsProtos$Pdu;

    .line 113
    .local v4, pdu:Lcom/miui/milk/model/MmsProtos$Pdu;
    iget-boolean v7, p0, Lcom/miui/milk/control/local/MmsController;->mCanceled:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v7, :cond_1

    .line 115
    :try_start_1
    iget-object v7, p0, Lcom/miui/milk/control/local/MmsController;->mMmsManager:Lcom/miui/milk/source/mms/MmsManager;

    invoke-virtual {v7, v4}, Lcom/miui/milk/source/mms/MmsManager;->restoreFromProtocolBuffer(Lcom/miui/milk/model/MmsProtos$Pdu;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 116
    iget-wide v7, p0, Lcom/miui/milk/control/local/MmsController;->mImportedSize:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/miui/milk/control/local/MmsController;->mImportedSize:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 118
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 119
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v7, "MmsController"

    const-string v8, "Cannot add mms "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 125
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v3           #mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .end local v4           #pdu:Lcom/miui/milk/model/MmsProtos$Pdu;
    .end local v5           #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 126
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v7, "MmsController"

    const-string v7, "Cannot import mms "

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 123
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v3       #mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .restart local v5       #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :cond_4
    :try_start_3
    const-string v7, "MmsController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Import Mms Counts : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/miui/milk/control/local/MmsController;->mImportedSize:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 127
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v3           #mmsCollection:Lcom/miui/milk/model/MmsProtos$MmsCollection;
    .end local v5           #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :catch_2
    move-exception v7

    move-object v0, v7

    .line 128
    .local v0, e:Ljava/io/IOException;
    const-string v7, "MmsController"

    const-string v7, "Cannot import mms "

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
