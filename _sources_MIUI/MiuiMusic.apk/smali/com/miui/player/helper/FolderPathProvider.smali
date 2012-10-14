.class public Lcom/miui/player/helper/FolderPathProvider;
.super Ljava/lang/Object;
.source "FolderPathProvider.java"


# static fields
.field private static sInstance:Lcom/miui/player/helper/FolderPathProvider;


# instance fields
.field private final mPathList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPathSet:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/miui/player/helper/FolderPathProvider;->mPathList:Ljava/util/HashSet;

    .line 22
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/FolderPathProvider;->refresh(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private concatStringsAsSet(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter "context"

    .prologue
    .line 31
    const-string v9, "filter_music_folder"

    invoke-static {p1, v9}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 32
    const-string v9, "%s NOT LIKE \"%%%s%%/%%\""

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "_data"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, ""

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 62
    :goto_0
    return-object v9

    .line 34
    :cond_0
    const-string v1, " OR "

    .line 35
    .local v1, OR:Ljava/lang/String;
    const-string v0, " AND "

    .line 37
    .local v0, AND:Ljava/lang/String;
    iget-object v9, p0, Lcom/miui/player/helper/FolderPathProvider;->mPathList:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 38
    const/4 v9, 0x0

    goto :goto_0

    .line 41
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .local v4, idOrClause:Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/miui/player/helper/FolderPathProvider;->mPathList:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 44
    .local v8, path:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 45
    invoke-static {v8}, Lcom/miui/player/MusicUtils;->filterSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, escapePath:Ljava/lang/String;
    const-string v9, "%s LIKE \"%%%s%%\""

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "_data"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, likeClause:Ljava/lang/String;
    const-string v9, "%s NOT LIKE \"%%%s%%/%%\""

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "_data"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, notlikeClause:Ljava/lang/String;
    const-string v9, "("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v9, " ESCAPE \'\\\'"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v9, " AND "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v9, " ESCAPE \'\\\'"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v9, ")"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v9, " OR "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 61
    .end local v2           #escapePath:Ljava/lang/String;
    .end local v6           #likeClause:Ljava/lang/String;
    .end local v7           #notlikeClause:Ljava/lang/String;
    .end local v8           #path:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 62
    .local v5, length:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const-string v11, " OR "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v11, v5, v11

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private getMiuiAudioFolder(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 66
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "folder_path"

    aput-object v0, v2, v7

    .line 69
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiAudioFolder;->EXTERNAL_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 74
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/miui/player/helper/FolderPathProvider;->mPathList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 75
    if-eqz v6, :cond_1

    .line 76
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/miui/player/helper/FolderPathProvider;->mPathList:Ljava/util/HashSet;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_1
    return-void
.end method

.method public static instance(Landroid/content/Context;)Lcom/miui/player/helper/FolderPathProvider;
    .locals 2
    .parameter "context"

    .prologue
    .line 95
    sget-object v0, Lcom/miui/player/helper/FolderPathProvider;->sInstance:Lcom/miui/player/helper/FolderPathProvider;

    if-nez v0, :cond_1

    .line 96
    const-class v0, Lcom/miui/player/helper/FolderPathProvider;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/miui/player/helper/FolderPathProvider;->sInstance:Lcom/miui/player/helper/FolderPathProvider;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcom/miui/player/helper/FolderPathProvider;

    invoke-direct {v1, p0}, Lcom/miui/player/helper/FolderPathProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/player/helper/FolderPathProvider;->sInstance:Lcom/miui/player/helper/FolderPathProvider;

    .line 100
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_1
    sget-object v0, Lcom/miui/player/helper/FolderPathProvider;->sInstance:Lcom/miui/player/helper/FolderPathProvider;

    return-object v0

    .line 100
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getPathList()Ljava/util/HashSet;
    .locals 2
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
    .line 88
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/miui/player/helper/FolderPathProvider;->mPathList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 89
    .local v0, pathList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/miui/player/helper/FolderPathProvider;->mPathList:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 90
    return-object v0
.end method

.method public getPathSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/player/helper/FolderPathProvider;->mPathSet:Ljava/lang/String;

    return-object v0
.end method

.method public refresh(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/player/helper/FolderPathProvider;->getMiuiAudioFolder(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/player/helper/FolderPathProvider;->concatStringsAsSet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/FolderPathProvider;->mPathSet:Ljava/lang/String;

    .line 28
    return-void
.end method
