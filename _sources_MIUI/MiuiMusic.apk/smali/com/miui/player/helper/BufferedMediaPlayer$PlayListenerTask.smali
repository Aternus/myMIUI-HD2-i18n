.class Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;
.super Ljava/lang/Thread;
.source "BufferedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/BufferedMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayListenerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/BufferedMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/BufferedMediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 916
    iput-object p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/BufferedMediaPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 916
    invoke-direct {p0, p1}, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;-><init>(Lcom/miui/player/helper/BufferedMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x4

    .line 923
    :goto_0
    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I
    invoke-static {v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$500(Lcom/miui/player/helper/BufferedMediaPlayer;)I

    move-result v6

    if-eq v6, v11, :cond_2

    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I
    invoke-static {v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$500(Lcom/miui/player/helper/BufferedMediaPlayer;)I

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I
    invoke-static {v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$500(Lcom/miui/player/helper/BufferedMediaPlayer;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 924
    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1300(Lcom/miui/player/helper/BufferedMediaPlayer;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 925
    :try_start_0
    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-virtual {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->getCurrentPosition()I

    move-result v7

    add-int/lit16 v5, v7, 0x2710

    .line 927
    .local v5, newPos:I
    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #calls: Lcom/miui/player/helper/BufferedMediaPlayer;->hasBuffered(I)Z
    invoke-static {v7, v5}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1400(Lcom/miui/player/helper/BufferedMediaPlayer;I)Z

    move-result v2

    .line 928
    .local v2, isBuffered:Z
    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1500(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    .line 929
    .local v3, isPlaying:Z
    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    .line 930
    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    const/4 v8, 0x1

    #setter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mIsBlocking:Z
    invoke-static {v7, v8}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$302(Lcom/miui/player/helper/BufferedMediaPlayer;Z)Z

    .line 931
    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #calls: Lcom/miui/player/helper/BufferedMediaPlayer;->runOnBlockingChanged()V
    invoke-static {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1600(Lcom/miui/player/helper/BufferedMediaPlayer;)V

    .line 932
    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1500(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->pause()V

    .line 938
    :cond_0
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 942
    :catch_0
    move-exception v1

    .line 943
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 933
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mIsBlocking:Z
    invoke-static {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$300(Lcom/miui/player/helper/BufferedMediaPlayer;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v2, :cond_0

    .line 934
    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    const/4 v8, 0x0

    #setter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mIsBlocking:Z
    invoke-static {v7, v8}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$302(Lcom/miui/player/helper/BufferedMediaPlayer;Z)Z

    .line 935
    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #calls: Lcom/miui/player/helper/BufferedMediaPlayer;->runOnBlockingChanged()V
    invoke-static {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1600(Lcom/miui/player/helper/BufferedMediaPlayer;)V

    .line 936
    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1500(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1

    .line 938
    .end local v2           #isBuffered:Z
    .end local v3           #isPlaying:Z
    .end local v5           #newPos:I
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 948
    :cond_2
    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mIsBlocking:Z
    invoke-static {v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$300(Lcom/miui/player/helper/BufferedMediaPlayer;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 949
    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #setter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mIsBlocking:Z
    invoke-static {v6, v9}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$302(Lcom/miui/player/helper/BufferedMediaPlayer;Z)Z

    .line 950
    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #calls: Lcom/miui/player/helper/BufferedMediaPlayer;->runOnBlockingChanged()V
    invoke-static {v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1600(Lcom/miui/player/helper/BufferedMediaPlayer;)V

    .line 951
    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I
    invoke-static {v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$500(Lcom/miui/player/helper/BufferedMediaPlayer;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 952
    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1500(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V

    .line 956
    :cond_3
    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1300(Lcom/miui/player/helper/BufferedMediaPlayer;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 957
    :try_start_3
    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I
    invoke-static {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$500(Lcom/miui/player/helper/BufferedMediaPlayer;)I

    move-result v7

    if-ne v7, v11, :cond_4

    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$200(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/content/Context;

    move-result-object v7

    #calls: Lcom/miui/player/helper/BufferedMediaPlayer;->isRemoveAfterPlay(Landroid/content/Context;)Z
    invoke-static {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1700(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;
    invoke-static {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1800(Lcom/miui/player/helper/BufferedMediaPlayer;)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentBytes:J
    invoke-static {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$600(Lcom/miui/player/helper/BufferedMediaPlayer;)J

    move-result-wide v7

    const-wide/32 v9, 0x100000

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    .line 961
    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;
    invoke-static {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1900(Lcom/miui/player/helper/BufferedMediaPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    move-result-object v7

    iget-object v0, v7, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    .line 962
    .local v0, appointName:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    iget-object v8, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$200(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/content/Context;

    move-result-object v8

    #calls: Lcom/miui/player/helper/BufferedMediaPlayer;->deleteDownloadRecord(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v7, v8, v0}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$2000(Lcom/miui/player/helper/BufferedMediaPlayer;Landroid/content/Context;Ljava/lang/String;)V

    .line 965
    const-string v7, "music/mp3"

    invoke-static {v0, v7}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 967
    .local v4, name:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 968
    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    iget-object v8, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;
    invoke-static {v8}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1800(Lcom/miui/player/helper/BufferedMediaPlayer;)Ljava/io/File;

    move-result-object v8

    #calls: Lcom/miui/player/helper/BufferedMediaPlayer;->copyFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    invoke-static {v8, v4}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$2100(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    #setter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;
    invoke-static {v7, v8}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1802(Lcom/miui/player/helper/BufferedMediaPlayer;Ljava/io/File;)Ljava/io/File;

    .line 969
    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    iget-object v8, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;
    invoke-static {v8}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1800(Lcom/miui/player/helper/BufferedMediaPlayer;)Ljava/io/File;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-virtual {v9}, Lcom/miui/player/helper/BufferedMediaPlayer;->getCurrentPosition()I

    move-result v9

    #calls: Lcom/miui/player/helper/BufferedMediaPlayer;->changeDataSource(Ljava/io/File;I)V
    invoke-static {v7, v8, v9}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$2200(Lcom/miui/player/helper/BufferedMediaPlayer;Ljava/io/File;I)V

    .line 970
    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    iget-object v8, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;
    invoke-static {v8}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1900(Lcom/miui/player/helper/BufferedMediaPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    move-result-object v8

    #calls: Lcom/miui/player/helper/BufferedMediaPlayer;->runOnDownloadCompleted(Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;)V
    invoke-static {v7, v8}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$2300(Lcom/miui/player/helper/BufferedMediaPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;)V

    .line 973
    .end local v0           #appointName:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_4
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 975
    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-virtual {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->getBufferdPercent()F

    move-result v7

    #calls: Lcom/miui/player/helper/BufferedMediaPlayer;->runOnBufferedPositionChanged(F)V
    invoke-static {v6, v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$1000(Lcom/miui/player/helper/BufferedMediaPlayer;F)V

    .line 977
    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I
    invoke-static {v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$500(Lcom/miui/player/helper/BufferedMediaPlayer;)I

    move-result v6

    if-ne v6, v11, :cond_5

    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #calls: Lcom/miui/player/helper/BufferedMediaPlayer;->needPrepare()Z
    invoke-static {v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$2400(Lcom/miui/player/helper/BufferedMediaPlayer;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 978
    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mRunnableList:Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;
    invoke-static {v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$2600(Lcom/miui/player/helper/BufferedMediaPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;

    move-result-object v6

    const-string v7, "com.miui.player.helper.BufferedMediaPlayer"

    iget-object v8, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;
    invoke-static {v8}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$2500(Lcom/miui/player/helper/BufferedMediaPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    move-result-object v8

    const-wide/16 v9, 0x1388

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;->add(Ljava/lang/String;Lcom/miui/player/helper/BufferedMediaPlayer$RemovableRunnable;J)V

    .line 980
    :cond_5
    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    const/4 v7, 0x0

    #setter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mListenerThread:Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;
    invoke-static {v6, v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$2702(Lcom/miui/player/helper/BufferedMediaPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;)Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;

    .line 981
    return-void

    .line 973
    :catchall_1
    move-exception v7

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7
.end method
