.class Lcom/miui/player/ui/PlaylistBrowserActivity$2;
.super Landroid/os/AsyncTask;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/PlaylistBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V
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
.field final synthetic this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

.field final synthetic val$audioList:[J


# direct methods
.method constructor <init>(Lcom/miui/player/ui/PlaylistBrowserActivity;[J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    iput-object p2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->val$audioList:[J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 432
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 436
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->val$audioList:[J

    iget-object v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    #getter for: Lcom/miui/player/ui/PlaylistBrowserActivity;->mCurrentPlaylistId:I
    invoke-static {v2}, Lcom/miui/player/ui/PlaylistBrowserActivity;->access$000(Lcom/miui/player/ui/PlaylistBrowserActivity;)I

    move-result v2

    int-to-long v2, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZZ)V

    .line 439
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 432
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "resule"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    #getter for: Lcom/miui/player/ui/PlaylistBrowserActivity;->mCurrentPlaylistId:I
    invoke-static {v1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->access$000(Lcom/miui/player/ui/PlaylistBrowserActivity;)I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->val$audioList:[J

    array-length v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/MusicUtils;->notifyAddToPlaylist(Landroid/content/Context;JI)V

    .line 446
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    #getter for: Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;
    invoke-static {v0}, Lcom/miui/player/ui/PlaylistBrowserActivity;->access$100(Lcom/miui/player/ui/PlaylistBrowserActivity;)Lcom/miui/player/model/PlaylistBrowserAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    iget-object v1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$2;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    #getter for: Lcom/miui/player/ui/PlaylistBrowserActivity;->mPlaylistAdapter:Lcom/miui/player/model/PlaylistBrowserAdapter;
    invoke-static {v1}, Lcom/miui/player/ui/PlaylistBrowserActivity;->access$100(Lcom/miui/player/ui/PlaylistBrowserActivity;)Lcom/miui/player/model/PlaylistBrowserAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/player/model/PlaylistBrowserAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/player/ui/PlaylistBrowserActivity;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 449
    :cond_0
    return-void
.end method
