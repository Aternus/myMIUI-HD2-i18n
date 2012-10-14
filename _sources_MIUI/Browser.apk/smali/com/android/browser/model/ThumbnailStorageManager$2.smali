.class final Lcom/android/browser/model/ThumbnailStorageManager$2;
.super Ljava/lang/Object;
.source "ThumbnailStorageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/model/ThumbnailStorageManager;->refreshThumbnailData(Lcom/android/browser/ui/MiRenBrowserActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/browser/model/ThumbnailStorageManager$2;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/browser/model/ThumbnailStorageManager$2;->val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 215
    const-string v0, "browser/ThumbnailStorageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start loading url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/model/ThumbnailStorageManager$2;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/browser/model/ThumbnailStorageManager$2;->val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/browser/model/ThumbnailStorageManager$2;->val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/model/ThumbnailStorageManager$2;->val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getHiddenTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/browser/model/ThumbnailStorageManager$2;->val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getHiddenTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/model/ThumbnailStorageManager$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/Tab;->doNavigation(Ljava/lang/String;)V

    .line 234
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
