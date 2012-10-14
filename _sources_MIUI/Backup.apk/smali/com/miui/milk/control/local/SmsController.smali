.class public Lcom/miui/milk/control/local/SmsController;
.super Ljava/lang/Object;
.source "SmsController.java"


# instance fields
.field private mCanceled:Z

.field protected mContext:Landroid/content/Context;

.field private volatile mExportedSize:J

.field private mImportedSize:J

.field protected mResolver:Landroid/content/ContentResolver;

.field private mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

.field private volatile mTotalExportSize:J

.field private mTotalImportSize:J

.field private smsIds:Ljava/util/Vector;
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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/control/local/SmsController;->smsIds:Ljava/util/Vector;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/control/local/SmsController;->mCanceled:Z

    .line 132
    iput-wide v1, p0, Lcom/miui/milk/control/local/SmsController;->mTotalExportSize:J

    .line 137
    iput-wide v1, p0, Lcom/miui/milk/control/local/SmsController;->mExportedSize:J

    .line 142
    iput-wide v1, p0, Lcom/miui/milk/control/local/SmsController;->mTotalImportSize:J

    .line 147
    iput-wide v1, p0, Lcom/miui/milk/control/local/SmsController;->mImportedSize:J

    .line 35
    iput-object p1, p0, Lcom/miui/milk/control/local/SmsController;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/control/local/SmsController;->mResolver:Landroid/content/ContentResolver;

    .line 37
    new-instance v0, Lcom/miui/milk/source/sms/SmsManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/sms/SmsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/local/SmsController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    .line 38
    return-void
.end method

.method private prepareAllSmsIds()V
    .locals 9

    .prologue
    const-string v0, "_id"

    .line 153
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/control/local/SmsController;->smsIds:Ljava/util/Vector;

    .line 154
    const/4 v6, 0x0

    .line 156
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/control/local/SmsController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 162
    if-nez v6, :cond_1

    .line 176
    if-eqz v6, :cond_0

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 167
    .local v8, idColumnIndex:I
    const/4 v7, 0x0

    .line 169
    .local v7, cursorId:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 170
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 171
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 172
    iget-object v0, p0, Lcom/miui/milk/control/local/SmsController;->smsIds:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 176
    .end local v7           #cursorId:Ljava/lang/String;
    .end local v8           #idColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 176
    .restart local v7       #cursorId:Ljava/lang/String;
    .restart local v8       #idColumnIndex:I
    :cond_3
    if-eqz v6, :cond_0

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/local/SmsController;->mCanceled:Z

    .line 42
    return-void
.end method

.method public exportSms(Ljava/io/File;)V
    .locals 14
    .parameter "exportFile"

    .prologue
    const-string v13, "Cannot export sms "

    const-string v12, "SmsController"

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 49
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$MmsSms;->newBuilder()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v6

    .line 50
    .local v6, smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    invoke-direct {p0}, Lcom/miui/milk/control/local/SmsController;->prepareAllSmsIds()V

    .line 52
    iget-object v8, p0, Lcom/miui/milk/control/local/SmsController;->smsIds:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/miui/milk/control/local/SmsController;->mTotalExportSize:J

    .line 53
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/miui/milk/control/local/SmsController;->mExportedSize:J

    .line 54
    const/4 v4, 0x0

    .line 55
    .local v4, sCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    int-to-long v8, v1

    iget-wide v10, p0, Lcom/miui/milk/control/local/SmsController;->mTotalExportSize:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 56
    iget-boolean v8, p0, Lcom/miui/milk/control/local/SmsController;->mCanceled:Z

    if-eqz v8, :cond_2

    .line 88
    :cond_1
    :goto_1
    return-void

    .line 57
    :cond_2
    iget-object v8, p0, Lcom/miui/milk/control/local/SmsController;->smsIds:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 59
    .local v2, id:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/miui/milk/control/local/SmsController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/miui/milk/source/sms/SmsManager;->load(J)Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v5

    .line 60
    .local v5, sms:Lcom/miui/milk/model/SmsProtos$Sms;
    if-eqz v5, :cond_3

    .line 61
    invoke-virtual {v6, v5}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->addSms(Lcom/miui/milk/model/SmsProtos$Sms;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    iget-wide v8, p0, Lcom/miui/milk/control/local/SmsController;->mExportedSize:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/miui/milk/control/local/SmsController;->mExportedSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v5           #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 66
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "SmsController"

    const-string v8, "Cannot load sms "

    invoke-static {v12, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 70
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #id:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v7

    .line 71
    .local v7, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v6}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->build()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setMmsSms(Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 72
    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 74
    iget-boolean v8, p0, Lcom/miui/milk/control/local/SmsController;->mCanceled:Z

    if-nez v8, :cond_1

    .line 78
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 79
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 80
    .local v3, output:Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V

    .line 81
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 82
    const-string v8, "SmsController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Export Sms Counts : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 83
    .end local v3           #output:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 84
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v8, "SmsController"

    const-string v8, "Cannot export sms "

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 85
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 86
    .local v0, e:Ljava/io/IOException;
    const-string v8, "SmsController"

    const-string v8, "Cannot export sms "

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getExportedSize()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/miui/milk/control/local/SmsController;->mExportedSize:J

    return-wide v0
.end method

.method public getImportedSize()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/miui/milk/control/local/SmsController;->mImportedSize:J

    return-wide v0
.end method

.method public getTotalExportSize()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/miui/milk/control/local/SmsController;->mTotalExportSize:J

    return-wide v0
.end method

.method public getTotalImportSize()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/miui/milk/control/local/SmsController;->mTotalImportSize:J

    return-wide v0
.end method

.method public importSms(Ljava/io/File;)V
    .locals 13
    .parameter "importFile"

    .prologue
    const-string v12, "Cannot import sms "

    const-string v11, "SmsController"

    .line 93
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 94
    .local v2, input:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 96
    .local v4, smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    invoke-static {v2}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncBaseProtos$SyncBase;

    move-result-object v5

    .line 97
    .local v5, syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    invoke-virtual {v5}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->hasVersion()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 98
    const-string v7, "1"

    invoke-virtual {v5}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 99
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 100
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2           #input:Ljava/io/FileInputStream;
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 101
    .restart local v2       #input:Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v6

    .line 102
    .local v6, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    if-eqz v6, :cond_0

    .line 103
    invoke-virtual {v6}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getMmsSms()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v4

    .line 108
    .end local v6           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_0
    iget-boolean v7, p0, Lcom/miui/milk/control/local/SmsController;->mCanceled:Z

    if-eqz v7, :cond_2

    .line 130
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v4           #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .end local v5           #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :cond_1
    :goto_0
    return-void

    .line 110
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v4       #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .restart local v5       #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :cond_2
    if-eqz v4, :cond_1

    .line 111
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/miui/milk/control/local/SmsController;->mImportedSize:J

    .line 112
    invoke-virtual {v4}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getSmsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/miui/milk/control/local/SmsController;->mTotalImportSize:J

    .line 113
    invoke-virtual {v4}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getSmsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/SmsProtos$Sms;

    .line 114
    .local v3, sms:Lcom/miui/milk/model/SmsProtos$Sms;
    iget-boolean v7, p0, Lcom/miui/milk/control/local/SmsController;->mCanceled:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v7, :cond_1

    .line 116
    :try_start_1
    iget-object v7, p0, Lcom/miui/milk/control/local/SmsController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    invoke-virtual {v7, v3}, Lcom/miui/milk/source/sms/SmsManager;->add(Lcom/miui/milk/model/SmsProtos$Sms;)J

    .line 117
    iget-wide v7, p0, Lcom/miui/milk/control/local/SmsController;->mImportedSize:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/miui/milk/control/local/SmsController;->mImportedSize:J
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
    const-string v7, "SmsController"

    const-string v8, "Cannot add sms "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 125
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v3           #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    .end local v4           #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .end local v5           #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 126
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v7, "SmsController"

    const-string v7, "Cannot import sms "

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 123
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v4       #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .restart local v5       #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :cond_3
    :try_start_3
    const-string v7, "SmsController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Import Sms Counts : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/miui/milk/control/local/SmsController;->mImportedSize:J

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
    .end local v4           #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .end local v5           #syncbase:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    :catch_2
    move-exception v7

    move-object v0, v7

    .line 128
    .local v0, e:Ljava/io/IOException;
    const-string v7, "SmsController"

    const-string v7, "Cannot import sms "

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
