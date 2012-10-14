.class Lcom/miui/backup/ScriptDuItem;
.super Lcom/miui/backup/ScriptItem;
.source "BackupRestoreStrategy.java"


# instance fields
.field private mResultFile:Ljava/io/File;

.field private mSrcFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "srcName"

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-direct {p0}, Lcom/miui/backup/ScriptItem;-><init>()V

    .line 281
    iput-object v0, p0, Lcom/miui/backup/ScriptDuItem;->mSrcFile:Ljava/io/File;

    .line 282
    iput-object v0, p0, Lcom/miui/backup/ScriptDuItem;->mResultFile:Ljava/io/File;

    .line 285
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/ScriptDuItem;->mSrcFile:Ljava/io/File;

    .line 286
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/ScriptDuItem;->mSrcFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/ScriptDuItem;->mResultFile:Ljava/io/File;

    .line 287
    return-void
.end method


# virtual methods
.method public genScript()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, " "

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/backup/ScriptDuItem;->getCmdStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/backup/ScriptDuItem;->mSrcFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/backup/ScriptDuItem;->mResultFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCmdStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    const-string v0, "du -s"

    return-object v0
.end method

.method public isSucceeded()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/miui/backup/ScriptDuItem;->mResultFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
