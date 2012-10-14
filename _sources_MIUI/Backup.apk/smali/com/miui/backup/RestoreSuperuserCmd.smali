.class Lcom/miui/backup/RestoreSuperuserCmd;
.super Lcom/miui/backup/RestoreAppCmd;
.source "RestoreCmd.java"


# instance fields
.field private mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 0
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 960
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/RestoreAppCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 961
    return-void
.end method


# virtual methods
.method protected genStrategy()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v7, "confirmed_package_behavior.authz"

    .line 965
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    const-string v5, "com.miui.uac"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    .line 966
    invoke-super {p0}, Lcom/miui/backup/RestoreAppCmd;->genStrategy()V

    .line 968
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 969
    .local v2, systemDateDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "confirmed_package_behavior.authz"

    invoke-direct {v0, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 970
    .local v0, authzFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/confirmed_package_behavior.authz"

    invoke-virtual {p0, v6, v3, v4}, Lcom/miui/backup/RestoreSuperuserCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 972
    new-instance v1, Ljava/io/File;

    const-string v3, "confirmed_package_behavior.authz"

    invoke-direct {v1, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 973
    .local v1, logFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/confirmed_package_behavior.log"

    invoke-virtual {p0, v6, v3, v4}, Lcom/miui/backup/RestoreSuperuserCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 975
    return-void
.end method

.method protected postAction()Z
    .locals 6

    .prologue
    const/16 v3, 0x258

    const/16 v4, 0x3e8

    .line 979
    invoke-super {p0}, Lcom/miui/backup/RestoreAppCmd;->postAction()Z

    .line 980
    new-instance v1, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v1}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 981
    .local v1, strategy:Lcom/miui/backup/ScriptStrategy;
    const-string v2, "/data/system/confirmed_package_behavior.authz"

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/backup/RestoreSuperuserCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    .line 983
    const-string v2, "/data/system/confirmed_package_behavior.log"

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/backup/RestoreSuperuserCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    .line 985
    invoke-virtual {v1}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 987
    :try_start_0
    iget-object v0, p0, Lcom/miui/backup/RestoreSuperuserCmd;->mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;

    invoke-interface {v0}, Lcom/android/internal/app/IPackageGuardian;->initializeBehaviors()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 988
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected preAction()Z
    .locals 2

    .prologue
    .line 996
    invoke-super {p0}, Lcom/miui/backup/RestoreAppCmd;->preAction()Z

    move-result v0

    .line 997
    .local v0, ret:Z
    const-string v1, "guardian"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IPackageGuardian$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPackageGuardian;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/backup/RestoreSuperuserCmd;->mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;

    .line 998
    if-eqz v0, :cond_0

    .line 1000
    :try_start_0
    iget-object v1, p0, Lcom/miui/backup/RestoreSuperuserCmd;->mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;

    invoke-interface {v1}, Lcom/android/internal/app/IPackageGuardian;->clearConfirmedBehaviors()V

    .line 1001
    iget-object v1, p0, Lcom/miui/backup/RestoreSuperuserCmd;->mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;

    invoke-interface {v1}, Lcom/android/internal/app/IPackageGuardian;->clearLogs()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    :cond_0
    :goto_0
    return v0

    .line 1002
    :catch_0
    move-exception v1

    goto :goto_0
.end method
