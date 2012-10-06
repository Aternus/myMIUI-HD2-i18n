.class Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;
.super Landroid/database/ContentObserver;
.source "BufferedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/BufferedMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/BufferedMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/BufferedMediaPlayer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 839
    iput-object p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    .line 840
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 841
    return-void
.end method

.method private updateBitrate(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 896
    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mBitrate:I
    invoke-static {v3}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$900(Lcom/miui/player/helper/BufferedMediaPlayer;)I

    move-result v3

    if-gtz v3, :cond_0

    .line 897
    const-string v3, "hint"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 898
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 909
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 899
    .restart local v2       #name:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1200(Lcom/miui/player/helper/BufferedMediaPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 902
    :try_start_0
    invoke-static {v1}, Lentagged/audioformats/AudioFileIO;->read(Ljava/io/File;)Lentagged/audioformats/AudioFile;

    move-result-object v0

    .line 903
    .local v0, audio:Lentagged/audioformats/AudioFile;
    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-virtual {v0}, Lentagged/audioformats/AudioFile;->getBitrate()I

    move-result v4

    #setter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mBitrate:I
    invoke-static {v3, v4}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$902(Lcom/miui/player/helper/BufferedMediaPlayer;I)I
    :try_end_0
    .catch Lentagged/audioformats/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 904
    .end local v0           #audio:Lentagged/audioformats/AudioFile;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11
    .parameter "selfChange"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v2, 0x0

    .line 845
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 846
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$400(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$200(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I
    invoke-static {v0}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$500(Lcom/miui/player/helper/BufferedMediaPlayer;)I

    move-result v0

    if-nez v0, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$200(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$400(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 850
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 854
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I
    invoke-static {v0}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$500(Lcom/miui/player/helper/BufferedMediaPlayer;)I

    move-result v7

    .line 856
    .local v7, newStatus:I
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 857
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    const-string v1, "current_bytes"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #setter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentBytes:J
    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$602(Lcom/miui/player/helper/BufferedMediaPlayer;J)J

    .line 858
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    const-string v1, "total_bytes"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #setter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mTotalBytes:J
    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$702(Lcom/miui/player/helper/BufferedMediaPlayer;J)J

    .line 860
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentBytes:J
    invoke-static {v0}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$600(Lcom/miui/player/helper/BufferedMediaPlayer;)J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mTotalBytes:J
    invoke-static {v0}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$700(Lcom/miui/player/helper/BufferedMediaPlayer;)J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-gez v0, :cond_2

    .line 861
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    const-wide/32 v1, 0x493e0

    #setter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mTotalBytes:J
    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$702(Lcom/miui/player/helper/BufferedMediaPlayer;J)J

    .line 862
    const-string v0, "com.miui.player.helper.BufferedMediaPlayer"

    const-string v1, "bad total bytes !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_2
    const-string v0, "status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 865
    .local v8, status:I
    invoke-static {v8}, Landroid/provider/Downloads;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 866
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$200(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$800(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/player/downloader/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 867
    const/4 v7, 0x3

    .line 882
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-virtual {v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->getBufferdPercent()F

    move-result v1

    #calls: Lcom/miui/player/helper/BufferedMediaPlayer;->runOnBufferedPositionChanged(F)V
    invoke-static {v0, v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1000(Lcom/miui/player/helper/BufferedMediaPlayer;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 885
    .end local v8           #status:I
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 888
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mBufferLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1100(Lcom/miui/player/helper/BufferedMediaPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 889
    :try_start_1
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I
    invoke-static {v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$500(Lcom/miui/player/helper/BufferedMediaPlayer;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 890
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #setter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I
    invoke-static {v1, v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$502(Lcom/miui/player/helper/BufferedMediaPlayer;I)I

    .line 892
    :cond_5
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 868
    .restart local v8       #status:I
    :cond_6
    :try_start_2
    invoke-static {v8}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 869
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$200(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$800(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/player/downloader/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 870
    invoke-direct {p0, v6}, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->updateBitrate(Landroid/database/Cursor;)V

    .line 871
    const/4 v7, 0x4

    goto :goto_1

    .line 872
    :cond_7
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I
    invoke-static {v0}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$500(Lcom/miui/player/helper/BufferedMediaPlayer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentBytes:J
    invoke-static {v0}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$600(Lcom/miui/player/helper/BufferedMediaPlayer;)J

    move-result-wide v0

    const-wide/32 v2, 0x80000

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 874
    invoke-direct {p0, v6}, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->updateBitrate(Landroid/database/Cursor;)V

    .line 877
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mBitrate:I
    invoke-static {v0}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$900(Lcom/miui/player/helper/BufferedMediaPlayer;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-lez v0, :cond_3

    .line 878
    const/4 v7, 0x2

    goto :goto_1

    .line 885
    .end local v8           #status:I
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
