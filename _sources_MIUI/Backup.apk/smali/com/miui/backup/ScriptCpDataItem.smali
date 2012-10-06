.class Lcom/miui/backup/ScriptCpDataItem;
.super Lcom/miui/backup/ScriptCpDirItem;
.source "BackupRestoreStrategy.java"


# instance fields
.field private mSizeFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "srcName"
    .parameter "dstName"

    .prologue
    .line 237
    invoke-direct {p0, p1, p2}, Lcom/miui/backup/ScriptCpDirItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/ScriptCpDataItem;->mSizeFile:Ljava/io/File;

    .line 238
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/ScriptCpItem;->mSrcFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/ScriptCpDataItem;->mSizeFile:Ljava/io/File;

    .line 239
    return-void
.end method


# virtual methods
.method protected getTotalSize()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 250
    iget-wide v6, p0, Lcom/miui/backup/ScriptCpItem;->mBufferedSrcSize:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 251
    iget-object v6, p0, Lcom/miui/backup/ScriptCpDataItem;->mSizeFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move-wide v6, v8

    .line 276
    :goto_0
    return-wide v6

    .line 255
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/miui/backup/ScriptCpDataItem;->mSizeFile:Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 256
    .local v1, fr:Ljava/io/FileReader;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v6, 0x400

    invoke-direct {v4, v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 257
    .local v4, sizeBufferedReader:Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, str:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 259
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 260
    .local v3, length:I
    const/4 v0, -0x1

    .line 261
    .local v0, end:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 262
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 263
    move v0, v2

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 268
    :cond_1
    const/4 v6, -0x1

    if-le v0, v6, :cond_2

    .line 269
    const/4 v6, 0x0

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/miui/backup/ScriptCpItem;->mBufferedSrcSize:J

    .line 272
    .end local v0           #end:I
    .end local v2           #i:I
    .end local v3           #length:I
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v1           #fr:Ljava/io/FileReader;
    .end local v4           #sizeBufferedReader:Ljava/io/BufferedReader;
    .end local v5           #str:Ljava/lang/String;
    :cond_3
    :goto_2
    iget-wide v6, p0, Lcom/miui/backup/ScriptCpItem;->mBufferedSrcSize:J

    goto :goto_0

    .line 273
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public isSucceeded()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/miui/backup/ScriptCpDataItem;->mSizeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/miui/backup/ScriptCpDataItem;->mSizeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/ScriptCpItem;->mDstFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
