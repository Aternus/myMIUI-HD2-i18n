.class Lcom/miui/player/helper/FolderProvider$1;
.super Landroid/os/AsyncTask;
.source "FolderProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/FolderProvider;->asyncRefreshDir()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/FolderProvider;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/FolderProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/miui/player/helper/FolderProvider$1;->this$0:Lcom/miui/player/helper/FolderProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/FolderProvider$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/player/helper/FolderProvider$1;->this$0:Lcom/miui/player/helper/FolderProvider;

    #calls: Lcom/miui/player/helper/FolderProvider;->refreshDir()V
    invoke-static {v0}, Lcom/miui/player/helper/FolderProvider;->access$000(Lcom/miui/player/helper/FolderProvider;)V

    .line 115
    iget-object v0, p0, Lcom/miui/player/helper/FolderProvider$1;->this$0:Lcom/miui/player/helper/FolderProvider;

    invoke-virtual {v0}, Lcom/miui/player/helper/FolderProvider;->syncFolderList()V

    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/FolderProvider$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 122
    iget-object v2, p0, Lcom/miui/player/helper/FolderProvider$1;->this$0:Lcom/miui/player/helper/FolderProvider;

    #getter for: Lcom/miui/player/helper/FolderProvider;->mRefreshFolderAsPlaylists:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/miui/player/helper/FolderProvider;->access$100(Lcom/miui/player/helper/FolderProvider;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/helper/FolderProvider$RefreshFolderAsPlaylist;

    .line 123
    .local v1, refreshFolderAsPlaylist:Lcom/miui/player/helper/FolderProvider$RefreshFolderAsPlaylist;
    invoke-interface {v1}, Lcom/miui/player/helper/FolderProvider$RefreshFolderAsPlaylist;->refreshFolderPlaylistId()V

    goto :goto_0

    .line 125
    .end local v1           #refreshFolderAsPlaylist:Lcom/miui/player/helper/FolderProvider$RefreshFolderAsPlaylist;
    :cond_0
    iget-object v2, p0, Lcom/miui/player/helper/FolderProvider$1;->this$0:Lcom/miui/player/helper/FolderProvider;

    const/4 v3, 0x0

    #setter for: Lcom/miui/player/helper/FolderProvider;->mIsAsyncRefreshing:Z
    invoke-static {v2, v3}, Lcom/miui/player/helper/FolderProvider;->access$202(Lcom/miui/player/helper/FolderProvider;Z)Z

    .line 126
    return-void
.end method
