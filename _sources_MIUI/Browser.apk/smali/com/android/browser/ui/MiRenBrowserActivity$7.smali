.class Lcom/android/browser/ui/MiRenBrowserActivity$7;
.super Landroid/os/AsyncTask;
.source "MiRenBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;->initAsync(Z)V
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
.field private mLoadedVersionXml:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

.field final synthetic val$firstLaunch:Z


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$7;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    iput-boolean p2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$7;->val$firstLaunch:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 801
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity$7;->doInBackground([Ljava/lang/Void;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Set;
    .locals 5
    .parameter "params"
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
    const/4 v4, 0x0

    .line 807
    new-instance v2, Lcom/android/browser/controller/TopsiteManager;

    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity$7;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {v2, v3}, Lcom/android/browser/controller/TopsiteManager;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity$7;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/controller/TopsiteManager;->upgrade(Landroid/content/ContentResolver;)V

    .line 810
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$7;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/browser/model/ThumbnailStorageManager;->syncThumbnailStorage(Landroid/content/Context;Z)V

    .line 813
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$7;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #calls: Lcom/android/browser/ui/MiRenBrowserActivity;->startDownloaderService()V
    invoke-static {v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$600(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    .line 815
    const/4 v0, 0x0

    .line 816
    .local v0, allNewHistoryUrls:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$7;->val$firstLaunch:Z

    if-eqz v2, :cond_0

    .line 817
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #allNewHistoryUrls:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 820
    .restart local v0       #allNewHistoryUrls:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$7;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity$7;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-static {v2, v3, v4}, Lcom/android/browser/api_v8/Bookmarks;->importSystemDatabase(Landroid/content/ContentResolver;Landroid/app/Activity;Z)Ljava/util/Set;

    .line 821
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$7;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity$7;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/android/browser/controller/BookmarkHistory;->importSystemDatabaseHistory(Landroid/content/Context;Landroid/content/ContentResolver;Z)Ljava/util/Set;

    move-result-object v1

    .line 822
    .local v1, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 823
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 827
    .end local v1           #ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$7;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-static {v2}, Lcom/android/browser/model/YellowPageDataProvider;->getCategories(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 844
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 801
    check-cast p1, Ljava/util/Set;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity$7;->onPostExecute(Ljava/util/Set;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Set;)V
    .locals 3
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
    .line 849
    .local p1, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 851
    iget-boolean v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$7;->val$firstLaunch:Z

    if-eqz v2, :cond_0

    .line 854
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$7;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #calls: Lcom/android/browser/ui/MiRenBrowserActivity;->registerNetworkState()V
    invoke-static {v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$700(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    .line 857
    :cond_0
    if-eqz p1, :cond_1

    .line 859
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 860
    .local v1, url:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 864
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #url:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$7;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #calls: Lcom/android/browser/ui/MiRenBrowserActivity;->retainIconsOnStartup()V
    invoke-static {v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$800(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    .line 865
    return-void
.end method
