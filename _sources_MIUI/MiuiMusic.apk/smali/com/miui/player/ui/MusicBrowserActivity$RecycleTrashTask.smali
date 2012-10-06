.class Lcom/miui/player/ui/MusicBrowserActivity$RecycleTrashTask;
.super Landroid/os/AsyncTask;
.source "MusicBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecycleTrashTask"
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
.field final NEW_ALBUM_DIR:Ljava/lang/String;

.field final NEW_LYRIC_DIR:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/miui/player/ui/MusicBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/MusicBrowserActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/miui/player/ui/MusicBrowserActivity$RecycleTrashTask;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 331
    const-string v0, "sdcard/MIUI/music/lyric"

    iput-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$RecycleTrashTask;->NEW_LYRIC_DIR:Ljava/lang/String;

    .line 333
    const-string v0, "sdcard/MIUI/music/album"

    iput-object v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$RecycleTrashTask;->NEW_ALBUM_DIR:Ljava/lang/String;

    .line 338
    iput-object p2, p0, Lcom/miui/player/ui/MusicBrowserActivity$RecycleTrashTask;->mContext:Landroid/content/Context;

    .line 339
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 329
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MusicBrowserActivity$RecycleTrashTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 29
    .parameter "params"

    .prologue
    .line 343
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "album"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "artist"

    aput-object v4, v5, v3

    .line 349
    .local v5, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MusicBrowserActivity$RecycleTrashTask;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 351
    .local v16, c:Landroid/database/Cursor;
    if-nez v16, :cond_0

    .line 352
    const/4 v3, 0x0

    .line 406
    .end local v5           #projection:[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 356
    .restart local v5       #projection:[Ljava/lang/String;
    :cond_0
    new-instance v22, Ljava/util/HashSet;

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object/from16 v0, v22

    move v1, v3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 357
    .local v22, libAlbumSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/HashSet;

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object/from16 v0, v23

    move v1, v3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 359
    .local v23, libLyricSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v3, "music/lyric"

    invoke-static {v3}, Lcom/miui/player/helper/MusicMetaManager;->getExtendName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 360
    .local v26, lrcExtendName:Ljava/lang/String;
    const-string v3, "music/album"

    invoke-static {v3}, Lcom/miui/player/helper/MusicMetaManager;->getExtendName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 362
    .local v12, albumExtendName:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 363
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 364
    .local v28, tr:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 365
    .local v9, al:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 367
    .local v14, ar:Ljava/lang/String;
    invoke-static {v9, v14, v12}, Lcom/miui/player/helper/MusicMetaManager;->concatFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 368
    .local v10, album:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 369
    move-object/from16 v0, v22

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_2
    move-object/from16 v0, v28

    move-object v1, v14

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/MusicMetaManager;->concatFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 373
    .local v24, lrc:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 374
    invoke-virtual/range {v23 .. v24}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 378
    .end local v9           #al:Ljava/lang/String;
    .end local v10           #album:Ljava/lang/String;
    .end local v14           #ar:Ljava/lang/String;
    .end local v24           #lrc:Ljava/lang/String;
    .end local v28           #tr:Ljava/lang/String;
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 383
    .local v17, current:J
    new-instance v11, Ljava/io/File;

    const-string v3, "sdcard/MIUI/music/album"

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .local v11, albumDir:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 385
    .local v13, albumFiles:[Ljava/io/File;
    if-eqz v13, :cond_5

    .line 386
    move-object v15, v13

    .local v15, arr$:[Ljava/io/File;
    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v20, 0x0

    .end local v5           #projection:[Ljava/lang/String;
    .local v20, i$:I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    aget-object v19, v15, v20

    .line 387
    .local v19, f:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long v3, v17, v3

    const-wide/32 v5, 0x240c8400

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 389
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 386
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 395
    .end local v15           #arr$:[Ljava/io/File;
    .end local v19           #f:Ljava/io/File;
    .end local v20           #i$:I
    .end local v21           #len$:I
    :cond_5
    new-instance v25, Ljava/io/File;

    const-string v3, "sdcard/MIUI/music/lyric"

    move-object/from16 v0, v25

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    .local v25, lrcDir:Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v27

    .line 397
    .local v27, lrcFiles:[Ljava/io/File;
    if-eqz v27, :cond_7

    .line 398
    move-object/from16 v15, v27

    .restart local v15       #arr$:[Ljava/io/File;
    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    .restart local v21       #len$:I
    const/16 v20, 0x0

    .restart local v20       #i$:I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    aget-object v19, v15, v20

    .line 399
    .restart local v19       #f:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long v3, v17, v3

    const-wide/32 v5, 0x240c8400

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    .line 401
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 398
    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 406
    .end local v15           #arr$:[Ljava/io/File;
    .end local v19           #f:Ljava/io/File;
    .end local v20           #i$:I
    .end local v21           #len$:I
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 329
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MusicBrowserActivity$RecycleTrashTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 412
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 413
    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity$RecycleTrashTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 414
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 415
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_last_clear_trash_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 416
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 418
    return-void
.end method
