.class Lcom/android/browser/ui/MiRenBrowserActivity$5;
.super Landroid/os/AsyncTask;
.source "MiRenBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;->getInstalledPackages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$5;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 601
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity$5;->doInBackground([Ljava/lang/Void;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Set;
    .locals 7
    .parameter "unused"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 604
    .local v1, installedPackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity$5;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v5}, Lcom/android/browser/ui/MiRenBrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 605
    .local v4, pm:Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_1

    .line 606
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 607
    .local v3, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 608
    .local v2, p:Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity$5;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-static {}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$300()Ljava/util/Set;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 609
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 614
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #p:Landroid/content/pm/PackageInfo;
    .end local v3           #packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_1
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 601
    check-cast p1, Ljava/util/Set;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity$5;->onPostExecute(Ljava/util/Set;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, installedPackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$5;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #calls: Lcom/android/browser/ui/MiRenBrowserActivity;->addPackageNames(Ljava/util/Set;)V
    invoke-static {v0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$500(Lcom/android/browser/ui/MiRenBrowserActivity;Ljava/util/Set;)V

    .line 620
    return-void
.end method
