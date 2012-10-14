.class Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditAllSongsID3"
.end annotation


# instance fields
.field private final mTitle:Ljava/lang/CharSequence;

.field private final mType:I

.field final synthetic this$0:Lcom/miui/player/ui/TrackBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "title"

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    iput p2, p0, Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;->mType:I

    .line 1340
    iput-object p3, p0, Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;->mTitle:Ljava/lang/CharSequence;

    .line 1341
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    .line 1344
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1348
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1349
    .local v0, bundle:Landroid/os/Bundle;
    iget v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;->mType:I

    const/16 v3, 0x21

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumName:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$1400(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1350
    const-string v2, "raw_album_name"

    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mAlbumName:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/player/ui/TrackBrowserActivity;->access$1400(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1359
    const-string v2, "search_title"

    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    new-instance v1, Lcom/miui/player/ui/MusicInfoEditDialog;

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    iget v4, p0, Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;->mType:I

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/miui/player/ui/MusicInfoEditDialog;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/MusicUtils$OnDialogCallback;I)V

    .line 1362
    .local v1, editDialog:Lcom/miui/player/ui/MusicInfoEditDialog;
    invoke-virtual {v1, v5}, Lcom/miui/player/ui/MusicInfoEditDialog;->setSaveAsConfirm(Z)V

    .line 1363
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/miui/player/ui/MusicInfoEditDialog;->setModifyID3CheckBoxStatus(ZZ)V

    .line 1364
    invoke-virtual {v1}, Lcom/miui/player/ui/MusicInfoEditDialog;->show()V

    goto :goto_0

    .line 1353
    .end local v1           #editDialog:Lcom/miui/player/ui/MusicInfoEditDialog;
    :cond_3
    iget v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;->mType:I

    const/16 v3, 0x22

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$400(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1354
    const-string v2, "raw_artist_name"

    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity$EditAllSongsID3;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mArtistNameForAlbum:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/player/ui/TrackBrowserActivity;->access$400(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
