.class Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;
.super Landroid/os/AsyncTask;
.source "AlbumArtTaskWrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/AlbumArtTaskWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchAlbumArtTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/AlbumArtTaskWrap;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    .line 68
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 69
    return-void
.end method

.method private getExistAlbumSet()Ljava/util/HashSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 169
    .local v6, ret:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v7, "music/album"

    invoke-static {v7}, Lcom/miui/player/helper/MusicMetaManager;->getMetaDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 170
    .local v2, dir:Ljava/io/File;
    if-eqz v2, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, albumFiles:[Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 173
    move-object v1, v0

    .local v1, arr$:[Ljava/io/File;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v1, v4

    .line 174
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 177
    .end local v0           #albumFiles:[Ljava/io/File;
    .end local v1           #arr$:[Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    return-object v6
.end method

.method private needDownload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "album"
    .parameter "artist"

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 189
    :goto_0
    return v0

    .line 185
    :cond_0
    invoke-static {p1}, Lcom/miui/player/helper/MediaInfo;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/miui/player/helper/MediaInfo;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 186
    goto :goto_0

    .line 189
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private prepareDownload(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 23
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "album_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "artist_id"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "album"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "artist"

    aput-object v4, v5, v3

    .line 125
    .local v5, cols:[Ljava/lang/String;
    const-string v21, "album"

    .line 127
    .local v21, orderBy:Ljava/lang/String;
    const/4 v15, 0x0

    .line 129
    .local v15, albumInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;>;"
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "album != \'\'"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "album"

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 134
    .local v17, cursor:Landroid/database/Cursor;
    if-eqz v17, :cond_3

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->getExistAlbumSet()Ljava/util/HashSet;

    move-result-object v18

    .line 136
    .local v18, existAlbumSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    .end local v15           #albumInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .restart local v15       #albumInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;>;"
    const-wide/16 v19, -0x1

    .line 138
    .local v19, lastId:J
    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 140
    .local v14, aid:I
    int-to-long v3, v14

    cmp-long v3, v3, v19

    if-eqz v3, :cond_0

    .line 141
    const/4 v3, 0x1

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 142
    .local v22, songid:I
    const/4 v3, 0x2

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 143
    .local v11, albumName:Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, artistName:Ljava/lang/String;
    const-string v3, "music/album"

    invoke-static {v11, v12, v3}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 148
    .local v16, albumPath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->needDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    move-object v3, v0

    #getter for: Lcom/miui/player/helper/AlbumArtTaskWrap;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$000(Lcom/miui/player/helper/AlbumArtTaskWrap;)Landroid/content/Context;

    move-result-object v3

    int-to-long v4, v14

    invoke-static {v3, v4, v5}, Lcom/miui/player/helper/AlbumManager;->isArtworkQuickExist(Landroid/content/Context;J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 152
    new-instance v6, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    int-to-long v7, v14

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide v9, v0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .local v6, albumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v6           #albumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;
    :cond_1
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v19, v0

    goto :goto_0

    .line 160
    .end local v11           #albumName:Ljava/lang/String;
    .end local v12           #artistName:Ljava/lang/String;
    .end local v14           #aid:I
    .end local v16           #albumPath:Ljava/lang/String;
    .end local v22           #songid:I
    :cond_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 163
    .end local v18           #existAlbumSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v19           #lastId:J
    :cond_3
    return-object v15
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 73
    iget-object v7, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    #getter for: Lcom/miui/player/helper/AlbumArtTaskWrap;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$000(Lcom/miui/player/helper/AlbumArtTaskWrap;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->prepareDownload(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 74
    .local v1, albumInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;>;"
    if-nez v1, :cond_0

    .line 75
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 97
    :goto_0
    return-object v7

    .line 78
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    .line 79
    .local v0, albumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;
    invoke-virtual {p0}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 80
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0

    .line 83
    :cond_2
    const/4 v4, 0x0

    .line 84
    .local v4, bm:Landroid/graphics/Bitmap;
    iget-object v2, v0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumName:Ljava/lang/String;

    .line 85
    .local v2, albumName:Ljava/lang/String;
    iget-object v3, v0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->artistName:Ljava/lang/String;

    .line 86
    .local v3, artistName:Ljava/lang/String;
    iget-object v6, v0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->trackName:Ljava/lang/String;

    .line 87
    .local v6, trackName:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    #getter for: Lcom/miui/player/helper/AlbumArtTaskWrap;->mURLPattern:Ljava/lang/String;
    invoke-static {v7}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$100(Lcom/miui/player/helper/AlbumArtTaskWrap;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

    invoke-direct {v8, v6, v2, v3}, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v8}, Lcom/miui/player/helper/MusicMetaManager;->downloadAlbum(Ljava/lang/String;Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 90
    if-eqz v4, :cond_1

    .line 91
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    new-array v7, v9, [Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    aput-object v0, v7, v10

    invoke-virtual {p0, v7}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 97
    .end local v0           #albumInfo:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;
    .end local v2           #albumName:Ljava/lang/String;
    .end local v3           #artistName:Ljava/lang/String;
    .end local v4           #bm:Landroid/graphics/Bitmap;
    .end local v6           #trackName:Ljava/lang/String;
    :cond_3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    const/4 v1, 0x0

    #setter for: Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;
    invoke-static {v0, v1}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$302(Lcom/miui/player/helper/AlbumArtTaskWrap;Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;)Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    .line 111
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)V
    .locals 2
    .parameter "infoArr"

    .prologue
    .line 102
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 103
    .local v0, info:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;
    iget-object v1, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    #getter for: Lcom/miui/player/helper/AlbumArtTaskWrap;->mAlbumArtTaskListener:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;
    invoke-static {v1}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$200(Lcom/miui/player/helper/AlbumArtTaskWrap;)Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->this$0:Lcom/miui/player/helper/AlbumArtTaskWrap;

    #getter for: Lcom/miui/player/helper/AlbumArtTaskWrap;->mAlbumArtTaskListener:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;
    invoke-static {v1}, Lcom/miui/player/helper/AlbumArtTaskWrap;->access$200(Lcom/miui/player/helper/AlbumArtTaskWrap;)Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;->downloadUpdate(Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)Z

    .line 106
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    check-cast p1, [Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->onProgressUpdate([Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)V

    return-void
.end method
