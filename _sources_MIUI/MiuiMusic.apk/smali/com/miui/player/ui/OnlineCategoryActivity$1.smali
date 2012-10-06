.class Lcom/miui/player/ui/OnlineCategoryActivity$1;
.super Landroid/os/AsyncTask;
.source "OnlineCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/OnlineCategoryActivity;->startCategoryLoadingAsync()V
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
        "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineCategoryActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/OnlineCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;
    .locals 3
    .parameter "params"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/OnlineCategoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "baidu"

    invoke-static {v1, v2}, Lcom/miui/player/helper/OnlineMusicProxy;->getSongCategoryList(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    move-result-object v0

    .line 120
    .local v0, musicList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/OnlineCategoryActivity$1;->doInBackground([Ljava/lang/Void;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 126
    invoke-static {p1}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$402(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    .line 127
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    #getter for: Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;
    invoke-static {v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$500(Lcom/miui/player/ui/OnlineCategoryActivity;)Lcom/miui/player/model/OnlineCategoryAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    #getter for: Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;
    invoke-static {v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$500(Lcom/miui/player/ui/OnlineCategoryActivity;)Lcom/miui/player/model/OnlineCategoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/player/model/OnlineCategoryAdapter;->updateCategoryList(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;)V

    .line 129
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    #getter for: Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;
    invoke-static {v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$500(Lcom/miui/player/ui/OnlineCategoryActivity;)Lcom/miui/player/model/OnlineCategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineCategoryAdapter;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    #getter for: Lcom/miui/player/ui/OnlineCategoryActivity;->mOnlineStatusBarController:Lcom/miui/player/helper/controller/OnlineStatusBarController;
    invoke-static {v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$600(Lcom/miui/player/ui/OnlineCategoryActivity;)Lcom/miui/player/helper/controller/OnlineStatusBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/OnlineStatusBarController;->setLoadSuccess()V

    .line 131
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    #getter for: Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;
    invoke-static {v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$700(Lcom/miui/player/ui/OnlineCategoryActivity;)Lcom/miui/player/helper/controller/SearchBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/SearchBarController;->getSearchBar()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    #getter for: Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;
    invoke-static {v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$500(Lcom/miui/player/ui/OnlineCategoryActivity;)Lcom/miui/player/model/OnlineCategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/model/OnlineCategoryAdapter;->notifyDataSetChanged()V

    .line 139
    :cond_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    #getter for: Lcom/miui/player/ui/OnlineCategoryActivity;->mOnlineStatusBarController:Lcom/miui/player/helper/controller/OnlineStatusBarController;
    invoke-static {v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$600(Lcom/miui/player/ui/OnlineCategoryActivity;)Lcom/miui/player/helper/controller/OnlineStatusBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/OnlineStatusBarController;->setLoadFailed()V

    .line 134
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$1;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    #getter for: Lcom/miui/player/ui/OnlineCategoryActivity;->mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;
    invoke-static {v0}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$700(Lcom/miui/player/ui/OnlineCategoryActivity;)Lcom/miui/player/helper/controller/SearchBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/SearchBarController;->getSearchBar()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    check-cast p1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/OnlineCategoryActivity$1;->onPostExecute(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;)V

    return-void
.end method
