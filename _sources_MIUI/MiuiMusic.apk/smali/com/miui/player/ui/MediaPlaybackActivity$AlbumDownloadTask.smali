.class Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;
.super Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumDownloadTask"
.end annotation


# instance fields
.field private final mAlbumId:J

.field private final mModifyId3Success:Z

.field private final mTrackId:J

.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;ZJJ)V
    .locals 1
    .parameter
    .parameter "metaInfo"
    .parameter "searchInfo"
    .parameter "modifyId3Success"
    .parameter "trackId"
    .parameter "albumId"

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    .line 1195
    const v0, 0x7f0800e9

    invoke-virtual {p1, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;-><init>(Ljava/lang/String;Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;)V

    .line 1196
    iput-boolean p4, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mModifyId3Success:Z

    .line 1197
    iput-wide p5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mTrackId:J

    .line 1198
    iput-wide p7, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mAlbumId:J

    .line 1199
    return-void
.end method


# virtual methods
.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1188
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1203
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1205
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$900(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$900(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1206
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$900(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1207
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v6, 0x0

    #setter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v6}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$902(Lcom/miui/player/ui/MediaPlaybackActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1210
    :cond_0
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-wide v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mTrackId:J

    iget-wide v8, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mAlbumId:J

    invoke-static {v5, v6, v7, v8, v9}, Lcom/miui/player/helper/AlbumManager;->getArtworkUri(Landroid/content/Context;JJ)Landroid/net/Uri;

    move-result-object v3

    .line 1211
    .local v3, localAlbumUri:Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 1212
    if-nez p1, :cond_1

    .line 1213
    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1215
    .restart local p1       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    :cond_2
    if-nez p1, :cond_4

    .line 1219
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const v6, 0x7f0800cf

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1247
    :cond_3
    :goto_0
    return-void

    .line 1225
    :cond_4
    iget-object v5, p0, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;->mMetaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

    iget-object v0, v5, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    .line 1226
    .local v0, album:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;->mMetaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

    iget-object v1, v5, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mArtistName:Ljava/lang/String;

    .line 1227
    .local v1, artist:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->mModifyId3Success:Z

    if-eqz v5, :cond_5

    .line 1228
    iget-object v5, p0, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;->mSearchInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

    iget-object v0, v5, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    .line 1229
    iget-object v5, p0, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;->mSearchInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

    iget-object v1, v5, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mArtistName:Ljava/lang/String;

    .line 1231
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1235
    :cond_6
    const-string v5, "music/album"

    invoke-static {v0, v1, v5}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1238
    .local v4, savePath:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1239
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const-class v6, Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1240
    const-string v5, "search_result"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1241
    const-string v5, "save_path"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1242
    const-string v5, "album"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1243
    const-string v5, "artist"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1244
    const-string v5, "raw_album"

    iget-object v6, p0, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;->mMetaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

    iget-object v6, v6, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1245
    const-string v5, "raw_artist"

    iget-object v6, p0, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;->mMetaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

    iget-object v6, v6, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1246
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/16 v6, 0x10

    invoke-virtual {v5, v2, v6}, Lcom/miui/player/ui/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
