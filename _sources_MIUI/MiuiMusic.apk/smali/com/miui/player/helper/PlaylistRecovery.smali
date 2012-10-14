.class public Lcom/miui/player/helper/PlaylistRecovery;
.super Ljava/lang/Object;
.source "PlaylistRecovery.java"


# static fields
.field private static sFilterSize:I

.field private static sIsFolderChange:Z


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;

    .line 30
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;

    const-string v1, "min_music_filter_size"

    invoke-static {v0, v1}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsInteger(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/miui/player/helper/PlaylistRecovery;->sFilterSize:I

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/helper/PlaylistRecovery;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput-boolean p0, Lcom/miui/player/helper/PlaylistRecovery;->sIsFolderChange:Z

    return p0
.end method

.method public static setFolderChange(Z)V
    .locals 0
    .parameter "isFolderChange"

    .prologue
    .line 74
    sput-boolean p0, Lcom/miui/player/helper/PlaylistRecovery;->sIsFolderChange:Z

    .line 75
    return-void
.end method


# virtual methods
.method public doRecovery()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;

    const-string v1, "min_music_filter_size"

    invoke-static {v0, v1}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsInteger(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/miui/player/helper/PlaylistRecovery;->sFilterSize:I

    .line 79
    new-instance v0, Lcom/miui/player/helper/PlaylistRecovery$1;

    invoke-direct {v0, p0}, Lcom/miui/player/helper/PlaylistRecovery$1;-><init>(Lcom/miui/player/helper/PlaylistRecovery;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/PlaylistRecovery$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 148
    return-void
.end method

.method public needRecovery()Z
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;

    const-string v2, "min_music_filter_size"

    invoke-static {v1, v2}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsInteger(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    .local v0, filterSize:I
    sget v1, Lcom/miui/player/helper/PlaylistRecovery;->sFilterSize:I

    if-ne v0, v1, :cond_0

    sget-boolean v1, Lcom/miui/player/helper/PlaylistRecovery;->sIsFolderChange:Z

    if-nez v1, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 70
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public recoveryPlaylist(I)V
    .locals 14
    .parameter "playlistId"

    .prologue
    const/4 v5, 0x1

    const/4 v12, 0x0

    const-string v13, "_id"

    .line 35
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;

    int-to-long v3, p1

    invoke-static {v0, v3, v4}, Lcom/miui/player/MusicUtils;->getLocalSongListForPlaylist(Landroid/content/Context;J)[J

    move-result-object v6

    .line 37
    .local v6, audiolist:[J
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/miui/player/MusicUtils;->clearPlaylistLocalLib(Landroid/content/Context;I)V

    .line 39
    invoke-static {v6}, Lcom/miui/player/provider/PlayerProviderUtils;->concatIdsAsSet([J)Ljava/lang/String;

    move-result-object v8

    .line 40
    .local v8, idSetStr:Ljava/lang/String;
    const-string v0, "%s IN %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "_id"

    aput-object v13, v1, v12

    aput-object v8, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 41
    .local v9, inClause:Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v13, v2, v12

    .line 44
    .local v2, ccols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v9}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title_key"

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 50
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 63
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v11, v0, [J

    .line 55
    .local v11, newAudioList:[J
    const/4 v10, 0x0

    .line 56
    .local v10, index:I
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v11, v10

    .line 58
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 60
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 62
    iget-object v0, p0, Lcom/miui/player/helper/PlaylistRecovery;->mActivity:Landroid/app/Activity;

    int-to-long v3, p1

    invoke-static {v0, v11, v3, v4, v12}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)V

    goto :goto_0
.end method
