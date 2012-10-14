.class final Lcom/android/browser/model/ThumbnailStorageManager$4;
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


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/browser/model/ThumbnailStorageManager$4;->val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/browser/model/ThumbnailStorageManager$4;->val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/model/ThumbnailStorageManager$4;->val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getHiddenTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    .line 315
    :cond_0
    return-void
.end method
