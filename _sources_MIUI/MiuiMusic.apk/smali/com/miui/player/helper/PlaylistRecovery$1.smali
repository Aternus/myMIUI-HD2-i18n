.class Lcom/miui/player/helper/PlaylistRecovery$1;
.super Landroid/os/AsyncTask;
.source "PlaylistRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/PlaylistRecovery;->doRecovery()V
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
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/miui/player/helper/PlaylistRecovery;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/PlaylistRecovery;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/miui/player/helper/PlaylistRecovery$1;->this$0:Lcom/miui/player/helper/PlaylistRecovery;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/PlaylistRecovery$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x0

    const-string v1, ","

    .line 85
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery$1;->this$0:Lcom/miui/player/helper/PlaylistRecovery;

    #getter for: Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/player/helper/PlaylistRecovery;->access$000(Lcom/miui/player/helper/PlaylistRecovery;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/helper/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/helper/FolderProvider;

    move-result-object v9

    .line 86
    .local v9, folderProvider:Lcom/miui/player/helper/FolderProvider;
    invoke-virtual {v9}, Lcom/miui/player/helper/FolderProvider;->syncRefreshDir()V

    .line 87
    invoke-virtual {v9}, Lcom/miui/player/helper/FolderProvider;->syncFolderList()V

    .line 90
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v6, " AND "

    .line 92
    .local v6, AND:Ljava/lang/String;
    const-string v7, " IN "

    .line 93
    .local v7, IN:Ljava/lang/String;
    const-string v0, "name != \'\' "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v0, "list_type"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v0, " IN "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v0, "("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string v0, ","

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v0, ","

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery$1;->this$0:Lcom/miui/player/helper/PlaylistRecovery;

    #getter for: Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/player/helper/PlaylistRecovery;->access$000(Lcom/miui/player/helper/PlaylistRecovery;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "name"

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 111
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 112
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery$1;->this$0:Lcom/miui/player/helper/PlaylistRecovery;

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/PlaylistRecovery;->recoveryPlaylist(I)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_1
    invoke-static {}, Lcom/miui/player/helper/FavoritePlaylist;->reset()V

    .line 120
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/PlaylistRecovery$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery$1;->this$0:Lcom/miui/player/helper/PlaylistRecovery;

    #getter for: Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/player/helper/PlaylistRecovery;->access$000(Lcom/miui/player/helper/PlaylistRecovery;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/MusicUtils;->updateNowPlayingList(Landroid/content/Context;)V

    .line 139
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/player/helper/PlaylistRecovery;->access$102(Z)Z

    .line 141
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery$1;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery$1;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery$1;->this$0:Lcom/miui/player/helper/PlaylistRecovery;

    #getter for: Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/player/helper/PlaylistRecovery;->access$000(Lcom/miui/player/helper/PlaylistRecovery;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.music.RECOVERY_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 125
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 126
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery$1;->this$0:Lcom/miui/player/helper/PlaylistRecovery;

    #getter for: Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/player/helper/PlaylistRecovery;->access$000(Lcom/miui/player/helper/PlaylistRecovery;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery$1;->this$0:Lcom/miui/player/helper/PlaylistRecovery;

    #getter for: Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/player/helper/PlaylistRecovery;->access$000(Lcom/miui/player/helper/PlaylistRecovery;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/helper/PlaylistRecovery$1;->this$0:Lcom/miui/player/helper/PlaylistRecovery;

    #getter for: Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/player/helper/PlaylistRecovery;->access$000(Lcom/miui/player/helper/PlaylistRecovery;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0800a4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/helper/PlaylistRecovery$1;->this$0:Lcom/miui/player/helper/PlaylistRecovery;

    #getter for: Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/miui/player/helper/PlaylistRecovery;->access$000(Lcom/miui/player/helper/PlaylistRecovery;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0800aa

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery$1;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 130
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery$1;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 132
    :cond_0
    return-void
.end method
