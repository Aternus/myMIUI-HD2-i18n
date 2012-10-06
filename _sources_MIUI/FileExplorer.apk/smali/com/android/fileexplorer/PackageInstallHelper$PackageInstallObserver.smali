.class Lcom/android/fileexplorer/PackageInstallHelper$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PackageInstallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/PackageInstallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "packageName"
    .parameter "name"

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/fileexplorer/PackageInstallHelper$PackageInstallObserver;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/fileexplorer/PackageInstallHelper$PackageInstallObserver;->mPackageName:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/android/fileexplorer/PackageInstallHelper$PackageInstallObserver;->mName:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 6
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 61
    iget-object v3, p0, Lcom/android/fileexplorer/PackageInstallHelper$PackageInstallObserver;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    const v4, 0x7f06001c

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, body:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/fileexplorer/PackageInstallHelper$PackageInstallObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fileexplorer/PackageInstallHelper$PackageInstallObserver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 66
    .local v1, launchIntent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 67
    iget-object v3, p0, Lcom/android/fileexplorer/PackageInstallHelper$PackageInstallObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 68
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 69
    :cond_0
    const/4 v1, 0x0

    .line 73
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/fileexplorer/PackageInstallHelper$PackageInstallObserver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/fileexplorer/PackageInstallHelper$PackageInstallObserver;->mName:Ljava/lang/String;

    const v5, 0x7f02005d

    invoke-static {v3, v1, v4, v0, v5}, Lcom/android/fileexplorer/Util;->showNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    return-void

    .line 61
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #launchIntent:Landroid/content/Intent;
    :cond_2
    const v4, 0x7f06001b

    goto :goto_0
.end method
