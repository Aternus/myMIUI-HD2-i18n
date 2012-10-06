.class Lcom/miui/player/helper/BufferedMediaPlayer$SafeMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "BufferedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/BufferedMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SafeMediaPlayer"
.end annotation


# instance fields
.field private mIsMusicLoaded:Z

.field final synthetic this$0:Lcom/miui/player/helper/BufferedMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/BufferedMediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$SafeMediaPlayer;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 1326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$SafeMediaPlayer;->mIsMusicLoaded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/BufferedMediaPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1325
    invoke-direct {p0, p1}, Lcom/miui/player/helper/BufferedMediaPlayer$SafeMediaPlayer;-><init>(Lcom/miui/player/helper/BufferedMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 1380
    iget-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$SafeMediaPlayer;->mIsMusicLoaded:Z

    if-eqz v0, :cond_0

    .line 1382
    :try_start_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1386
    :goto_0
    return v0

    .line 1383
    :catch_0
    move-exception v0

    .line 1386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1369
    iget-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$SafeMediaPlayer;->mIsMusicLoaded:Z

    if-eqz v0, :cond_0

    .line 1371
    :try_start_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1375
    :goto_0
    return v0

    .line 1372
    :catch_0
    move-exception v0

    .line 1375
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1391
    iget-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$SafeMediaPlayer;->mIsMusicLoaded:Z

    if-eqz v0, :cond_0

    .line 1393
    :try_start_0
    invoke-super {p0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1397
    :goto_0
    return v0

    .line 1394
    :catch_0
    move-exception v0

    .line 1397
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1351
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 1352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$SafeMediaPlayer;->mIsMusicLoaded:Z

    .line 1353
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$SafeMediaPlayer;->mIsMusicLoaded:Z

    .line 1358
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    .line 1359
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$SafeMediaPlayer;->mIsMusicLoaded:Z

    .line 1364
    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    .line 1365
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 1
    .parameter "fd"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$SafeMediaPlayer;->mIsMusicLoaded:Z

    .line 1346
    invoke-super/range {p0 .. p5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1347
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$SafeMediaPlayer;->mIsMusicLoaded:Z

    .line 1332
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1333
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1338
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$SafeMediaPlayer;->mIsMusicLoaded:Z

    .line 1339
    invoke-super {p0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 1340
    return-void
.end method
