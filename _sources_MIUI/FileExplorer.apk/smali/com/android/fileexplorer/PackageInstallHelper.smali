.class public Lcom/android/fileexplorer/PackageInstallHelper;
.super Ljava/lang/Object;
.source "PackageInstallHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/PackageInstallHelper$PackageInstallObserver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static install(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 10
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    const-string v9, "PackageInstallHelper"

    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileInfo;

    .line 25
    .local v0, f:Lcom/android/fileexplorer/FileInfo;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 27
    .local v4, manager:Landroid/content/pm/PackageManager;
    iget-object v6, v0, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 28
    .local v2, info:Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    .line 29
    const-string v6, "PackageInstallHelper"

    const-string v6, "Fail to install apk: PackageInfo is null"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v0           #f:Lcom/android/fileexplorer/FileInfo;
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    .end local v4           #manager:Landroid/content/pm/PackageManager;
    :cond_0
    return-void

    .line 32
    .restart local v0       #f:Lcom/android/fileexplorer/FileInfo;
    .restart local v2       #info:Landroid/content/pm/PackageInfo;
    .restart local v4       #manager:Landroid/content/pm/PackageManager;
    :cond_1
    const-string v6, "PackageInstallHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Installing apk: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v3, 0x0

    .line 37
    .local v3, infoInstalled:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x2000

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 40
    :goto_1
    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 41
    .local v5, uri:Landroid/net/Uri;
    new-instance v6, Lcom/android/fileexplorer/PackageInstallHelper$PackageInstallObserver;

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    invoke-direct {v6, p1, v7, v8}, Lcom/android/fileexplorer/PackageInstallHelper$PackageInstallObserver;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_2

    const/4 v7, 0x2

    :goto_2
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 38
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v6

    goto :goto_1
.end method
