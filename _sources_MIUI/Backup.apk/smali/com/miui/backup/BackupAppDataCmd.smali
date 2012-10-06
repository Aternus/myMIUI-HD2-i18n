.class Lcom/miui/backup/BackupAppDataCmd;
.super Lcom/miui/backup/BackupCmd;
.source "BackupCmd.java"


# instance fields
.field protected mDataName:Ljava/lang/String;

.field protected mDataPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"
    .parameter "dataName"
    .parameter "dataPath"

    .prologue
    const-string v1, ""

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/BackupCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 175
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataName:Ljava/lang/String;

    .line 176
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataPath:Ljava/lang/String;

    .line 179
    iput-object p4, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataName:Ljava/lang/String;

    .line 180
    iput-object p5, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataPath:Ljava/lang/String;

    .line 181
    return-void
.end method


# virtual methods
.method protected genStrategy()V
    .locals 5

    .prologue
    .line 187
    new-instance v2, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v2}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    iput-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 188
    iget-object v2, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/backup/BackupUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, dstName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    .local v0, dstFile:Ljava/io/File;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/backup/BackupAppDataCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method protected postAction()Z
    .locals 5

    .prologue
    .line 195
    sget-object v0, Lcom/miui/backup/BackupAppDataCmd;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    invoke-virtual {p0}, Lcom/miui/backup/BackupAppDataCmd;->getLabel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget v4, v4, Lcom/miui/milk/common/AppInfo;->type:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/backup/DbAdapter;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    .line 196
    const/4 v0, 0x1

    return v0
.end method
