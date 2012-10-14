.class public Lcom/miui/uac/Su$CheckForMaliciousApps;
.super Landroid/os/AsyncTask;
.source "Su.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/uac/Su;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckForMaliciousApps"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/uac/Su;


# direct methods
.method public constructor <init>(Lcom/miui/uac/Su;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/miui/uac/Su$CheckForMaliciousApps;->this$0:Lcom/miui/uac/Su;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/uac/Su$CheckForMaliciousApps;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "params"

    .prologue
    .line 70
    iget-object v4, p0, Lcom/miui/uac/Su$CheckForMaliciousApps;->this$0:Lcom/miui/uac/Su;

    #getter for: Lcom/miui/uac/Su;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/miui/uac/Su;->access$000(Lcom/miui/uac/Su;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 71
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 73
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 74
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/uac/Su$CheckForMaliciousApps;->this$0:Lcom/miui/uac/Su;

    #getter for: Lcom/miui/uac/Su;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/miui/uac/Su;->access$000(Lcom/miui/uac/Su;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.miui.uac.RESPOND"

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/uac/Su$CheckForMaliciousApps;->this$0:Lcom/miui/uac/Su;

    #getter for: Lcom/miui/uac/Su;->mMaliciousAppPackage:Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/uac/Su;->access$100(Lcom/miui/uac/Su;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 78
    iget-object v4, p0, Lcom/miui/uac/Su$CheckForMaliciousApps;->this$0:Lcom/miui/uac/Su;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #setter for: Lcom/miui/uac/Su;->mMaliciousAppPackage:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/miui/uac/Su;->access$102(Lcom/miui/uac/Su;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 82
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :goto_1
    return-object v4

    .line 72
    .restart local v0       #app:Landroid/content/pm/ApplicationInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/uac/Su$CheckForMaliciousApps;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/miui/uac/Su$CheckForMaliciousApps;->this$0:Lcom/miui/uac/Su;

    #calls: Lcom/miui/uac/Su;->maliciousAppFound(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/miui/uac/Su;->access$200(Lcom/miui/uac/Su;Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method
