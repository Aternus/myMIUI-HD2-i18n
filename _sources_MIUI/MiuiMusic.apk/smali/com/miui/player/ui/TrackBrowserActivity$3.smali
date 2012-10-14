.class Lcom/miui/player/ui/TrackBrowserActivity$3;
.super Landroid/os/AsyncTask;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/TrackBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V
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
.field final synthetic this$0:Lcom/miui/player/ui/TrackBrowserActivity;

.field final synthetic val$audioList:[J


# direct methods
.method constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;[J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    iput-object p2, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->val$audioList:[J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 853
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/TrackBrowserActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->val$audioList:[J

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mCurrentPlaylistId:I
    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$900(Lcom/miui/player/ui/TrackBrowserActivity;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)V

    .line 858
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 853
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/TrackBrowserActivity$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 863
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mCurrentPlaylistId:I
    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$900(Lcom/miui/player/ui/TrackBrowserActivity;)I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->val$audioList:[J

    array-length v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/player/MusicUtils;->notifyAddToPlaylist(Landroid/content/Context;JI)V

    .line 866
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    invoke-static {v1}, Lcom/miui/player/ui/TrackBrowserActivity;->access$600(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 867
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$600(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/player/model/TrackBrowserAdapter;->getQueryHandler()Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/player/ui/TrackBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 869
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/player/ui/TrackBrowserActivity;->access$1200(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/player/helper/FavoritePlaylist;->isFavoritePlaylistId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 870
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.music.FAVORITE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    .local v0, i:Landroid/content/Intent;
    const-string v1, "who"

    const-string v2, "tracklist_browser"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/miui/player/ui/TrackBrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 874
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    return-void
.end method
