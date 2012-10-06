.class public Lcom/miui/player/helper/AlbumArtTaskWrap;
.super Ljava/lang/Object;
.source "AlbumArtTaskWrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;,
        Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;,
        Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;
    }
.end annotation


# static fields
.field public static final ALBUM_ART_DOWNLOAD_FINISH:I = 0x2

.field public static final ALBUM_ART_DOWNLOAD_START:I = 0x1


# instance fields
.field private mAlbumArtTaskListener:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;

.field private mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

.field private final mContext:Landroid/content/Context;

.field private final mURLPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "albumArtTaskListener"
    .parameter "urlPattern"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mContext:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mURLPattern:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mAlbumArtTaskListener:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/helper/AlbumArtTaskWrap;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/helper/AlbumArtTaskWrap;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mURLPattern:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/helper/AlbumArtTaskWrap;)Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mAlbumArtTaskListener:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/player/helper/AlbumArtTaskWrap;Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;)Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    return-object p1
.end method


# virtual methods
.method public batchCancel()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    invoke-virtual {v0}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->cancel(Z)Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    .line 63
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    invoke-virtual {v0}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    invoke-direct {v0, p0}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;-><init>(Lcom/miui/player/helper/AlbumArtTaskWrap;)V

    iput-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    .line 46
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public isBatchDownLoad()Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/AlbumArtTaskWrap;->mBatchTask:Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;

    invoke-virtual {v0}, Lcom/miui/player/helper/AlbumArtTaskWrap$BatchAlbumArtTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
