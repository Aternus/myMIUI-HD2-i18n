.class Lcom/miui/player/ui/FolderBrowserActivity$MediaProviderObserver;
.super Landroid/database/ContentObserver;
.source "FolderBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/FolderBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaProviderObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/FolderBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/FolderBrowserActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/miui/player/ui/FolderBrowserActivity$MediaProviderObserver;->this$0:Lcom/miui/player/ui/FolderBrowserActivity;

    .line 329
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 330
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 335
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity$MediaProviderObserver;->this$0:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/FolderBrowserActivity;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity$MediaProviderObserver;->this$0:Lcom/miui/player/ui/FolderBrowserActivity;

    const/4 v1, 0x1

    #setter for: Lcom/miui/player/ui/FolderBrowserActivity;->mIsMediaChanged:Z
    invoke-static {v0, v1}, Lcom/miui/player/ui/FolderBrowserActivity;->access$002(Lcom/miui/player/ui/FolderBrowserActivity;Z)Z

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity$MediaProviderObserver;->this$0:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/FolderBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/FolderBrowserActivity$MediaProviderObserver;->this$0:Lcom/miui/player/ui/FolderBrowserActivity;

    #getter for: Lcom/miui/player/ui/FolderBrowserActivity;->mRefreshRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/player/ui/FolderBrowserActivity;->access$100(Lcom/miui/player/ui/FolderBrowserActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 340
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity$MediaProviderObserver;->this$0:Lcom/miui/player/ui/FolderBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/FolderBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/FolderBrowserActivity$MediaProviderObserver;->this$0:Lcom/miui/player/ui/FolderBrowserActivity;

    #getter for: Lcom/miui/player/ui/FolderBrowserActivity;->mRefreshRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/miui/player/ui/FolderBrowserActivity;->access$100(Lcom/miui/player/ui/FolderBrowserActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
