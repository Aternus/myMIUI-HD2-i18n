.class Lcom/miui/player/ui/MusicBrowserActivity$QueryNumTask;
.super Landroid/os/AsyncTask;
.source "MusicBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryNumTask"
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
.field final synthetic this$0:Lcom/miui/player/ui/MusicBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/MusicBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/miui/player/ui/MusicBrowserActivity$QueryNumTask;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/MusicBrowserActivity;Lcom/miui/player/ui/MusicBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MusicBrowserActivity$QueryNumTask;-><init>(Lcom/miui/player/ui/MusicBrowserActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 443
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MusicBrowserActivity$QueryNumTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 447
    invoke-static {}, Lcom/miui/player/ui/MusicBrowserActivity;->access$200()[I

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/player/ui/MusicBrowserActivity$QueryNumTask;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-static {v3, v4}, Lcom/miui/player/MusicUtils;->getSongCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 448
    invoke-static {}, Lcom/miui/player/ui/MusicBrowserActivity;->access$200()[I

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/player/ui/MusicBrowserActivity$QueryNumTask;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-static {v3}, Lcom/miui/player/MusicUtils;->getArtistCount(Landroid/content/Context;)I

    move-result v3

    aput v3, v1, v2

    .line 449
    invoke-static {}, Lcom/miui/player/ui/MusicBrowserActivity;->access$200()[I

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/miui/player/ui/MusicBrowserActivity$QueryNumTask;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-static {v3, v4}, Lcom/miui/player/MusicUtils;->getAlbumCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 450
    invoke-static {}, Lcom/miui/player/ui/MusicBrowserActivity;->access$200()[I

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/miui/player/ui/MusicBrowserActivity$QueryNumTask;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-static {v3}, Lcom/miui/player/MusicUtils;->getPlaylistCount(Landroid/content/Context;)I

    move-result v3

    aput v3, v1, v2

    .line 451
    iget-object v1, p0, Lcom/miui/player/ui/MusicBrowserActivity$QueryNumTask;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/MusicBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/player/helper/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/helper/FolderProvider;

    move-result-object v0

    .line 453
    .local v0, folderProvider:Lcom/miui/player/helper/FolderProvider;
    invoke-virtual {v0}, Lcom/miui/player/helper/FolderProvider;->syncRefreshDir()V

    .line 454
    invoke-static {}, Lcom/miui/player/ui/MusicBrowserActivity;->access$200()[I

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0}, Lcom/miui/player/helper/FolderProvider;->getFolderCount()I

    move-result v3

    aput v3, v1, v2

    .line 455
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 443
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MusicBrowserActivity$QueryNumTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$QueryNumTask;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    #calls: Lcom/miui/player/ui/MusicBrowserActivity;->setNumText()V
    invoke-static {v0}, Lcom/miui/player/ui/MusicBrowserActivity;->access$400(Lcom/miui/player/ui/MusicBrowserActivity;)V

    .line 461
    iget-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$QueryNumTask;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    const/4 v1, 0x0

    #setter for: Lcom/miui/player/ui/MusicBrowserActivity;->mQueryNumTask:Lcom/miui/player/ui/MusicBrowserActivity$QueryNumTask;
    invoke-static {v0, v1}, Lcom/miui/player/ui/MusicBrowserActivity;->access$502(Lcom/miui/player/ui/MusicBrowserActivity;Lcom/miui/player/ui/MusicBrowserActivity$QueryNumTask;)Lcom/miui/player/ui/MusicBrowserActivity$QueryNumTask;

    .line 462
    return-void
.end method
