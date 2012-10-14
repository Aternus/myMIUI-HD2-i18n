.class public Lcom/miui/milk/control/local/AntiSpamController;
.super Ljava/lang/Object;
.source "AntiSpamController.java"


# instance fields
.field private mBlacklist:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCanceled:Z

.field protected mContext:Landroid/content/Context;

.field private mCurrExportIndex:I

.field private mCurrImportIndex:I

.field private mKeywords:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mManager:Lcom/miui/milk/source/antispam/AntiSpamManager;

.field protected mResolver:Landroid/content/ContentResolver;

.field private mTotalImport:I

.field private mWhitelist:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrExportIndex:I

    .line 36
    iput v0, p0, Lcom/miui/milk/control/local/AntiSpamController;->mTotalImport:I

    .line 37
    iput v0, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrImportIndex:I

    .line 39
    iput-boolean v0, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z

    .line 42
    iput-object p1, p0, Lcom/miui/milk/control/local/AntiSpamController;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/control/local/AntiSpamController;->mResolver:Landroid/content/ContentResolver;

    .line 44
    new-instance v0, Lcom/miui/milk/source/antispam/AntiSpamManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/antispam/AntiSpamManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/local/AntiSpamController;->mManager:Lcom/miui/milk/source/antispam/AntiSpamManager;

    .line 45
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z

    .line 49
    return-void
.end method

.method public exportData(Ljava/io/File;)V
    .locals 13
    .parameter "exportFile"

    .prologue
    const-string v12, "Cannot export blacklist and whitelist "

    const-string v11, "AntiSpamController"

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 56
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->newBuilder()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    move-result-object v0

    .line 57
    .local v0, antiSpam:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;
    iget-object v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mManager:Lcom/miui/milk/source/antispam/AntiSpamManager;

    invoke-virtual {v8}, Lcom/miui/milk/source/antispam/AntiSpamManager;->getAllBlacklist()Ljava/util/Vector;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mBlacklist:Ljava/util/Vector;

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, blacklistCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mBlacklist:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 61
    iget-boolean v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z

    if-eqz v8, :cond_2

    .line 121
    :cond_1
    :goto_1
    return-void

    .line 64
    :cond_2
    :try_start_0
    iget-object v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mBlacklist:Ljava/util/Vector;

    invoke-virtual {v8, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;

    invoke-virtual {v0, v8}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->addBlacklist(Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    .line 65
    iget v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrExportIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrExportIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 60
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 68
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "AntiSpamController"

    const-string v8, "Cannot export blacklist "

    invoke-static {v11, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 72
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mManager:Lcom/miui/milk/source/antispam/AntiSpamManager;

    invoke-virtual {v8}, Lcom/miui/milk/source/antispam/AntiSpamManager;->getAllWhitelist()Ljava/util/Vector;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mWhitelist:Ljava/util/Vector;

    .line 73
    const/4 v7, 0x0

    .line 74
    .local v7, whitelistCount:I
    const/4 v3, 0x0

    :goto_3
    iget-object v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mWhitelist:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 75
    iget-boolean v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z

    if-nez v8, :cond_1

    .line 78
    :try_start_1
    iget-object v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mWhitelist:Ljava/util/Vector;

    invoke-virtual {v8, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;

    invoke-virtual {v0, v8}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->addWhitelist(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    .line 79
    iget v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrExportIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrExportIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    add-int/lit8 v7, v7, 0x1

    .line 74
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 81
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 82
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "AntiSpamController"

    const-string v8, "Cannot export whitelist "

    invoke-static {v11, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 86
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mManager:Lcom/miui/milk/source/antispam/AntiSpamManager;

    invoke-virtual {v8}, Lcom/miui/milk/source/antispam/AntiSpamManager;->getAllKeywords()Ljava/util/Vector;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mKeywords:Ljava/util/Vector;

    .line 87
    const/4 v4, 0x0

    .line 88
    .local v4, keywordCount:I
    const/4 v3, 0x0

    :goto_5
    iget-object v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mKeywords:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 89
    iget-boolean v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z

    if-nez v8, :cond_1

    .line 92
    :try_start_2
    iget-object v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mKeywords:Ljava/util/Vector;

    invoke-virtual {v8, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;

    invoke-virtual {v0, v8}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->addKeyword(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;)Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;

    .line 93
    iget v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrExportIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrExportIndex:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 88
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 95
    :catch_2
    move-exception v8

    move-object v2, v8

    .line 96
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "AntiSpamController"

    const-string v8, "Cannot export keyword "

    invoke-static {v11, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 100
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v6

    .line 101
    .local v6, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam$Builder;->build()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setAntispam(Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 102
    const-string v8, "1"

    invoke-virtual {v6, v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 104
    iget-boolean v8, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z

    if-nez v8, :cond_1

    .line 108
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 109
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 110
    .local v5, output:Ljava/io/FileOutputStream;
    invoke-virtual {v6}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V

    .line 111
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 112
    const-string v8, "AntiSpamController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Export blacklist Counts : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v8, "AntiSpamController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Export whitelist Counts : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v8, "AntiSpamController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Export keyword Counts : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_1

    .line 115
    .end local v5           #output:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v8

    move-object v2, v8

    .line 116
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v8, "AntiSpamController"

    const-string v8, "Cannot export blacklist and whitelist "

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 117
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v8

    move-object v2, v8

    .line 118
    .local v2, e:Ljava/io/IOException;
    const-string v8, "AntiSpamController"

    const-string v8, "Cannot export blacklist and whitelist "

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public getExportedSize()J
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrExportIndex:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getImportedSize()J
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrImportIndex:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTotalExportSize()J
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/miui/milk/control/local/AntiSpamController;->mBlacklist:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/control/local/AntiSpamController;->mBlacklist:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/miui/milk/control/local/AntiSpamController;->mWhitelist:Ljava/util/Vector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/milk/control/local/AntiSpamController;->mWhitelist:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/milk/control/local/AntiSpamController;->mKeywords:Ljava/util/Vector;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/milk/control/local/AntiSpamController;->mKeywords:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public getTotalImportSize()J
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/miui/milk/control/local/AntiSpamController;->mTotalImport:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public importData(Ljava/io/File;)V
    .locals 14
    .parameter "importFile"

    .prologue
    .line 143
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 144
    .local v5, input:Ljava/io/FileInputStream;
    invoke-static {v5}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v8

    .line 145
    .local v8, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    const/4 v0, 0x0

    .line 146
    .local v0, antiSpam:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    if-eqz v8, :cond_0

    .line 147
    invoke-virtual {v8}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getAntispam()Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;

    move-result-object v0

    .line 150
    :cond_0
    iget-boolean v11, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z

    if-eqz v11, :cond_2

    .line 211
    .end local v0           #antiSpam:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v8           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_1
    :goto_0
    return-void

    .line 152
    .restart local v0       #antiSpam:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .restart local v5       #input:Ljava/io/FileInputStream;
    .restart local v8       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_2
    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getBlacklistCount()I

    move-result v11

    invoke-virtual {v0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getWhitelistCount()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getKeywordCount()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, p0, Lcom/miui/milk/control/local/AntiSpamController;->mTotalImport:I

    .line 157
    const/4 v11, 0x0

    iput v11, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrImportIndex:I

    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, blacklistCount:I
    const/4 v9, 0x0

    .line 160
    .local v9, whitelistCount:I
    const/4 v6, 0x0

    .line 162
    .local v6, keywordCount:I
    invoke-virtual {v0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getBlacklistList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;

    .line 163
    .local v2, blacklistEntry:Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;
    iget-boolean v11, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v11, :cond_1

    .line 166
    :try_start_1
    iget-object v11, p0, Lcom/miui/milk/control/local/AntiSpamController;->mManager:Lcom/miui/milk/source/antispam/AntiSpamManager;

    invoke-virtual {v11, v2}, Lcom/miui/milk/source/antispam/AntiSpamManager;->AddBlacklist(Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 168
    iget v11, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrImportIndex:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrImportIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 170
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 171
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    const-string v11, "AntiSpamController"

    const-string v12, "Cannot add blacklist "

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 206
    .end local v0           #antiSpam:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .end local v1           #blacklistCount:I
    .end local v2           #blacklistEntry:Lcom/miui/milk/model/AntiSpamProtos$BlacklistEntry;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v6           #keywordCount:I
    .end local v8           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v9           #whitelistCount:I
    :catch_1
    move-exception v11

    move-object v3, v11

    .line 207
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v11, "AntiSpamController"

    const-string v12, "Cannot import blacklist and whitelist "

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 175
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #antiSpam:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .restart local v1       #blacklistCount:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #input:Ljava/io/FileInputStream;
    .restart local v6       #keywordCount:I
    .restart local v8       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v9       #whitelistCount:I
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getWhitelistList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;

    .line 176
    .local v10, whitelistEntry:Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;
    iget-boolean v11, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v11, :cond_1

    .line 179
    :try_start_4
    iget-object v11, p0, Lcom/miui/milk/control/local/AntiSpamController;->mManager:Lcom/miui/milk/source/antispam/AntiSpamManager;

    invoke-virtual {v11, v10}, Lcom/miui/milk/source/antispam/AntiSpamManager;->AddWhitelist(Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 180
    add-int/lit8 v9, v9, 0x1

    .line 181
    iget v11, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrImportIndex:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrImportIndex:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 183
    :catch_2
    move-exception v11

    move-object v3, v11

    .line 184
    .local v3, e:Ljava/lang/Exception;
    :try_start_5
    const-string v11, "AntiSpamController"

    const-string v12, "Cannot add whitelist "

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 208
    .end local v0           #antiSpam:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .end local v1           #blacklistCount:I
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v6           #keywordCount:I
    .end local v8           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v9           #whitelistCount:I
    .end local v10           #whitelistEntry:Lcom/miui/milk/model/AntiSpamProtos$WhitelistEntry;
    :catch_3
    move-exception v11

    move-object v3, v11

    .line 209
    .local v3, e:Ljava/io/IOException;
    const-string v11, "AntiSpamController"

    const-string v12, "Cannot import blacklist and whitelist "

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 188
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #antiSpam:Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;
    .restart local v1       #blacklistCount:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #input:Ljava/io/FileInputStream;
    .restart local v6       #keywordCount:I
    .restart local v8       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v9       #whitelistCount:I
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Lcom/miui/milk/model/AntiSpamProtos$AntiSpam;->getKeywordList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;

    .line 189
    .local v7, keywordEntry:Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;
    iget-boolean v11, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCanceled:Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    if-nez v11, :cond_1

    .line 192
    :try_start_7
    iget-object v11, p0, Lcom/miui/milk/control/local/AntiSpamController;->mManager:Lcom/miui/milk/source/antispam/AntiSpamManager;

    invoke-virtual {v11, v7}, Lcom/miui/milk/source/antispam/AntiSpamManager;->AddKeyword(Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 193
    add-int/lit8 v6, v6, 0x1

    .line 194
    iget v11, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrImportIndex:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/miui/milk/control/local/AntiSpamController;->mCurrImportIndex:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 196
    :catch_4
    move-exception v11

    move-object v3, v11

    .line 197
    .local v3, e:Ljava/lang/Exception;
    :try_start_8
    const-string v11, "AntiSpamController"

    const-string v12, "Cannot add keyword "

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 201
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #keywordEntry:Lcom/miui/milk/model/AntiSpamProtos$KeywordEntry;
    :cond_8
    const-string v11, "AntiSpamController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Import blacklist Counts : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v11, "AntiSpamController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Import whitelist Counts : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v11, "AntiSpamController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Import keyword Counts : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0
.end method
