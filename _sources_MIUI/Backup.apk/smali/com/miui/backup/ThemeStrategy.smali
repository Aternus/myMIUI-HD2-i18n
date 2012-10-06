.class abstract Lcom/miui/backup/ThemeStrategy;
.super Lcom/miui/backup/ScriptStrategy;
.source "BackupRestoreStrategy.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDataFile:Ljava/io/File;

.field protected mPkgInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"
    .parameter "pkgName"

    .prologue
    const/4 v0, 0x0

    .line 1032
    invoke-direct {p0}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 1028
    iput-object v0, p0, Lcom/miui/backup/ThemeStrategy;->mDataFile:Ljava/io/File;

    .line 1029
    iput-object v0, p0, Lcom/miui/backup/ThemeStrategy;->mContext:Landroid/content/Context;

    .line 1030
    iput-object v0, p0, Lcom/miui/backup/ThemeStrategy;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 1033
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/ThemeStrategy;->mDataFile:Ljava/io/File;

    .line 1034
    iput-object p3, p0, Lcom/miui/backup/ThemeStrategy;->mContext:Landroid/content/Context;

    .line 1035
    invoke-static {p3, p4}, Lcom/miui/backup/BackupUtils;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/ThemeStrategy;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 1036
    return-void
.end method
