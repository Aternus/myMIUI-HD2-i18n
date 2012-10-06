.class public Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;
.super Landroid/os/AsyncTask;
.source "MusicMetaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/MusicMetaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumUrlListGetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected final mMetaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

.field protected final mSearchInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

.field protected final mUrlPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;)V
    .locals 0
    .parameter "urlPattern"
    .parameter "metaInfo"
    .parameter "searchInfo"

    .prologue
    .line 350
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;->mUrlPattern:Ljava/lang/String;

    .line 352
    iput-object p2, p0, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;->mMetaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

    .line 353
    iput-object p3, p0, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;->mSearchInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

    .line 354
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 341
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 11
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 358
    iget-object v6, p0, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;->mSearchInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

    iget-object v6, v6, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;->mSearchInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

    iget-object v6, v6, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mArtistName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v10

    .line 384
    :goto_0
    return-object v6

    .line 363
    :cond_0
    iget-object v6, p0, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;->mUrlPattern:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;->mSearchInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

    iget-object v8, v8, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;->mSearchInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

    iget-object v9, v9, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mArtistName:Ljava/lang/String;

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, url:Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Lcom/miui/player/helper/NetworkUtils;->getJSONObjectFromURL(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 367
    .local v2, json:Lorg/json/JSONObject;
    const-string v6, "data"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 368
    .local v0, data:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 369
    .local v4, size:I
    if-lez v4, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 370
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 371
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 372
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v3

    .line 375
    goto :goto_0

    .line 381
    .end local v0           #data:Lorg/json/JSONArray;
    .end local v1           #i:I
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #size:I
    :catch_0
    move-exception v6

    :cond_2
    :goto_2
    move-object v6, v10

    .line 384
    goto :goto_0

    .line 380
    :catch_1
    move-exception v6

    goto :goto_2

    .line 379
    :catch_2
    move-exception v6

    goto :goto_2

    .line 378
    :catch_3
    move-exception v6

    goto :goto_2
.end method
