.class public Lcom/miui/player/helper/FolderProvider;
.super Ljava/lang/Object;
.source "FolderProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/FolderProvider$RefreshFolderAsPlaylist;,
        Lcom/miui/player/helper/FolderProvider$FolderItem;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/player/helper/FolderProvider;

.field private static sIsFolderFilter:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDir2Songs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFolderItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/helper/FolderProvider$FolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAsyncRefreshing:Z

.field private final mRefreshFolderAsPlaylists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/helper/FolderProvider$RefreshFolderAsPlaylist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/player/helper/FolderProvider;->sIsFolderFilter:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/player/helper/FolderProvider;->mDir2Songs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/helper/FolderProvider;->mFolderItemList:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lcom/miui/player/helper/FolderProvider;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/helper/FolderProvider;->mRefreshFolderAsPlaylists:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/helper/FolderProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/player/helper/FolderProvider;->refreshDir()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/helper/FolderProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/player/helper/FolderProvider;->mRefreshFolderAsPlaylists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/player/helper/FolderProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/miui/player/helper/FolderProvider;->mIsAsyncRefreshing:Z

    return p1
.end method

.method private getFoldersFromMiUiDb()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 143
    iget-object v0, p0, Lcom/miui/player/helper/FolderProvider;->mFolderItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v11

    const-string v0, "name"

    aput-object v0, v2, v12

    const-string v0, "folder_path"

    aput-object v0, v2, v13

    const-string v0, "sort_key"

    aput-object v0, v2, v14

    .line 150
    .local v2, cols:[Ljava/lang/String;
    const-string v3, "list_type=1"

    .line 152
    .local v3, whereclause:Ljava/lang/String;
    const-string v5, "sort_key"

    .line 153
    .local v5, sortClause:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/helper/FolderProvider;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 155
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 167
    :goto_0
    return-void

    .line 159
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 161
    .local v9, playlistId:I
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, name:Ljava/lang/String;
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, path:Ljava/lang/String;
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 164
    .local v10, sortKey:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/helper/FolderProvider;->mFolderItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/player/helper/FolderProvider$FolderItem;

    invoke-direct {v1, v9, v7, v8, v10}, Lcom/miui/player/helper/FolderProvider$FolderItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #path:Ljava/lang/String;
    .end local v9           #playlistId:I
    .end local v10           #sortKey:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static instance(Landroid/content/Context;)Lcom/miui/player/helper/FolderProvider;
    .locals 2
    .parameter "context"

    .prologue
    .line 322
    sget-object v0, Lcom/miui/player/helper/FolderProvider;->sInstance:Lcom/miui/player/helper/FolderProvider;

    if-nez v0, :cond_1

    .line 323
    const-class v0, Lcom/miui/player/helper/FolderPathProvider;

    monitor-enter v0

    .line 324
    :try_start_0
    sget-object v1, Lcom/miui/player/helper/FolderProvider;->sInstance:Lcom/miui/player/helper/FolderProvider;

    if-nez v1, :cond_0

    .line 325
    new-instance v1, Lcom/miui/player/helper/FolderProvider;

    invoke-direct {v1, p0}, Lcom/miui/player/helper/FolderProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/player/helper/FolderProvider;->sInstance:Lcom/miui/player/helper/FolderProvider;

    .line 327
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_1
    sget-object v0, Lcom/miui/player/helper/FolderProvider;->sInstance:Lcom/miui/player/helper/FolderProvider;

    return-object v0

    .line 327
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized mutexCheck()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/player/helper/FolderProvider;->mIsAsyncRefreshing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 94
    :goto_0
    monitor-exit p0

    return v0

    .line 93
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/miui/player/helper/FolderProvider;->mIsAsyncRefreshing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 94
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private refreshDir()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 54
    iget-object v0, p0, Lcom/miui/player/helper/FolderProvider;->mDir2Songs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 55
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v11

    .line 59
    .local v2, cols:[Ljava/lang/String;
    const-string v0, "%s != \'\'"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "title"

    aput-object v3, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 61
    .local v10, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/helper/FolderProvider;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/miui/player/helper/FolderProvider;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/miui/player/helper/FolderProvider;->sIsFolderFilter:Z

    invoke-static {v3, v10, v4}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album_key"

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 68
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 87
    :goto_0
    return-void

    .line 72
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 74
    .local v9, songPath:Ljava/lang/String;
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 75
    .local v7, index:I
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v9, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, songFolderPath:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/player/helper/FolderProvider;->mDir2Songs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/miui/player/helper/FolderProvider;->mDir2Songs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/miui/player/helper/FolderProvider;->mDir2Songs:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    .line 83
    iget-object v1, p0, Lcom/miui/player/helper/FolderProvider;->mDir2Songs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/miui/player/helper/FolderProvider;->mDir2Songs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 86
    .end local v7           #index:I
    .end local v8           #songFolderPath:Ljava/lang/String;
    .end local v9           #songPath:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static setFolderFilter(Z)V
    .locals 0
    .parameter "isFolderFilter"

    .prologue
    .line 50
    sput-boolean p0, Lcom/miui/player/helper/FolderProvider;->sIsFolderFilter:Z

    .line 51
    return-void
.end method


# virtual methods
.method public addRefreshFolderListener(Lcom/miui/player/helper/FolderProvider$RefreshFolderAsPlaylist;)V
    .locals 1
    .parameter "refreshFolderAsPlaylist"

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/miui/player/helper/FolderProvider;->mRefreshFolderAsPlaylists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    return-void
.end method

.method public asyncRefreshDir()V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/miui/player/helper/FolderProvider;->mutexCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/miui/player/helper/FolderProvider$1;

    invoke-direct {v0, p0}, Lcom/miui/player/helper/FolderProvider$1;-><init>(Lcom/miui/player/helper/FolderProvider;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/FolderProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getFolderCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/player/helper/FolderProvider;->mDir2Songs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getFolders()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 181
    invoke-direct {p0}, Lcom/miui/player/helper/FolderProvider;->getFoldersFromMiUiDb()V

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v2, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    const/4 v5, 0x0

    .line 184
    .local v5, miuiFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/miui/player/helper/FolderProvider;->mFolderItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/helper/FolderProvider$FolderItem;

    .line 185
    .local v1, folderItem:Lcom/miui/player/helper/FolderProvider$FolderItem;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v0, folder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v7, v1, Lcom/miui/player/helper/FolderProvider$FolderItem;->path:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/player/helper/MusicMetaManager;->isMiuiMp3DownloadPath(Ljava/lang/String;)Z

    move-result v4

    .line 187
    .local v4, isMiuiFolder:Z
    iget v7, v1, Lcom/miui/player/helper/FolderProvider$FolderItem;->playlistId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    if-eqz v4, :cond_1

    .line 189
    iget-object v7, p0, Lcom/miui/player/helper/FolderProvider;->mContext:Landroid/content/Context;

    const v8, 0x7f0800ab

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :goto_1
    iget-object v7, p0, Lcom/miui/player/helper/FolderProvider;->mDir2Songs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v8, v1, Lcom/miui/player/helper/FolderProvider$FolderItem;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 194
    .local v6, songCount:Ljava/lang/Integer;
    if-nez v6, :cond_0

    .line 195
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 197
    :cond_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v7, v1, Lcom/miui/player/helper/FolderProvider$FolderItem;->path:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v7, v1, Lcom/miui/player/helper/FolderProvider$FolderItem;->sortKey:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    if-eqz v4, :cond_2

    .line 201
    move-object v5, v0

    goto :goto_0

    .line 191
    .end local v6           #songCount:Ljava/lang/Integer;
    :cond_1
    iget-object v7, v1, Lcom/miui/player/helper/FolderProvider$FolderItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    .restart local v6       #songCount:Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    .end local v0           #folder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1           #folderItem:Lcom/miui/player/helper/FolderProvider$FolderItem;
    .end local v4           #isMiuiFolder:Z
    .end local v6           #songCount:Ljava/lang/Integer;
    :cond_3
    if-eqz v5, :cond_4

    .line 207
    invoke-virtual {v2, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 209
    :cond_4
    return-object v2
.end method

.method public getFoldersPath()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v3, pathArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/miui/player/helper/FolderProvider;->mDir2Songs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 224
    .local v2, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public getPathById(J)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 213
    iget-object v2, p0, Lcom/miui/player/helper/FolderProvider;->mFolderItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/helper/FolderProvider$FolderItem;

    .line 214
    .local v0, folderItem:Lcom/miui/player/helper/FolderProvider$FolderItem;
    iget v2, v0, Lcom/miui/player/helper/FolderProvider$FolderItem;->playlistId:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 215
    iget-object v2, v0, Lcom/miui/player/helper/FolderProvider$FolderItem;->path:Ljava/lang/String;

    .line 218
    .end local v0           #folderItem:Lcom/miui/player/helper/FolderProvider$FolderItem;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSongCountInFolder(Ljava/lang/String;)I
    .locals 2
    .parameter "folder"

    .prologue
    .line 135
    iget-object v1, p0, Lcom/miui/player/helper/FolderProvider;->mDir2Songs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 136
    .local v0, count:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 137
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 139
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public hasMiuiDownloadFolder()Z
    .locals 3

    .prologue
    .line 170
    iget-object v2, p0, Lcom/miui/player/helper/FolderProvider;->mFolderItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/helper/FolderProvider$FolderItem;

    .line 171
    .local v0, folderItem:Lcom/miui/player/helper/FolderProvider$FolderItem;
    iget-object v2, v0, Lcom/miui/player/helper/FolderProvider$FolderItem;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/player/helper/MusicMetaManager;->isMiuiMp3DownloadPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const/4 v2, 0x1

    .line 176
    .end local v0           #folderItem:Lcom/miui/player/helper/FolderProvider$FolderItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeRefreshFolder(Lcom/miui/player/helper/FolderProvider$RefreshFolderAsPlaylist;)V
    .locals 1
    .parameter "refreshFolderAsPlaylist"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/player/helper/FolderProvider;->mRefreshFolderAsPlaylists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public syncFolderList()V
    .locals 27

    .prologue
    .line 236
    new-instance v20, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/FolderProvider;->mDir2Songs:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    move-object/from16 v0, v20

    move v1, v3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 237
    .local v20, pathSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/FolderProvider;->mDir2Songs:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 240
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "folder_path"

    aput-object v4, v5, v3

    .line 244
    .local v5, cols:[Ljava/lang/String;
    const-string v3, "%s = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "list_type"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, whereclause:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/FolderProvider;->mContext:Landroid/content/Context;

    move-object v3, v0

    sget-object v4, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 253
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 255
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v13, deletePlistArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 258
    .local v21, playlistId:I
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 259
    .local v19, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/FolderProvider;->mDir2Songs:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_0
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    .end local v19           #path:Ljava/lang/String;
    .end local v21           #playlistId:I
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 268
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 269
    .local v11, deleteCount:I
    if-lez v11, :cond_3

    .line 270
    new-array v12, v11, [J

    .line 271
    .local v12, deletePlist:[J
    const/4 v15, 0x0

    .line 272
    .local v15, index:I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 273
    .local v22, plid:J
    add-int/lit8 v16, v15, 0x1

    .end local v15           #index:I
    .local v16, index:I
    aput-wide v22, v12, v15

    move/from16 v15, v16

    .end local v16           #index:I
    .restart local v15       #index:I
    goto :goto_1

    .line 275
    .end local v22           #plid:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/FolderProvider;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3, v12}, Lcom/miui/player/MusicUtils;->deletePlaylist(Landroid/content/Context;[J)V

    .line 279
    .end local v11           #deleteCount:I
    .end local v12           #deletePlist:[J
    .end local v13           #deletePlistArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #index:I
    :cond_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->size()I

    move-result v9

    .line 280
    .local v9, addCount:I
    if-nez v9, :cond_4

    .line 300
    .end local v5           #cols:[Ljava/lang/String;
    :goto_2
    return-void

    .line 284
    .restart local v5       #cols:[Ljava/lang/String;
    :cond_4
    move v0, v9

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v26, v0

    .line 285
    .local v26, valuesArr:[Landroid/content/ContentValues;
    const/4 v15, 0x0

    .line 286
    .restart local v15       #index:I
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v5           #cols:[Ljava/lang/String;
    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 288
    .local v25, songPath:Ljava/lang/String;
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 289
    .local v17, lastSeparatorPos:I
    const/4 v3, 0x0

    move-object/from16 v0, v25

    move v1, v3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 290
    .local v24, songFolderPathWithoutSlash:Ljava/lang/String;
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 293
    .local v18, name:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    aput-object v3, v26, v15

    .line 294
    aget-object v3, v26, v15

    const-string v4, "name"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    aget-object v3, v26, v15

    const-string v4, "list_type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    aget-object v3, v26, v15

    const-string v4, "folder_path"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    add-int/lit8 v15, v15, 0x1

    .line 298
    goto :goto_3

    .line 299
    .end local v17           #lastSeparatorPos:I
    .end local v18           #name:Ljava/lang/String;
    .end local v24           #songFolderPathWithoutSlash:Ljava/lang/String;
    .end local v25           #songPath:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/FolderProvider;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_2
.end method

.method public syncRefreshDir()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/miui/player/helper/FolderProvider;->mutexCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/miui/player/helper/FolderProvider;->refreshDir()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/helper/FolderProvider;->mIsAsyncRefreshing:Z

    goto :goto_0
.end method
