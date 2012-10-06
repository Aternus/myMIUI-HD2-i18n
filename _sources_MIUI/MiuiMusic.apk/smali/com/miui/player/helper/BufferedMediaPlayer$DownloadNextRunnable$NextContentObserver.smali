.class Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;
.super Landroid/database/ContentObserver;
.source "BufferedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NextContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    .line 1242
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1243
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11
    .parameter "selfChange"

    .prologue
    .line 1247
    const/4 v10, 0x0

    .line 1249
    .local v10, unregister:Z
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z
    invoke-static {v1}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->access$2800(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextDownloadUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->access$3400(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-nez v1, :cond_2

    .line 1251
    :cond_0
    const/4 v10, 0x1

    .line 1283
    if-eqz v10, :cond_1

    .line 1284
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->access$3500(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/miui/player/downloader/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 1288
    :cond_1
    :goto_0
    return-void

    .line 1255
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->access$3500(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1256
    .local v0, res:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextDownloadUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->access$3400(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 1257
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_3

    .line 1258
    const/4 v10, 0x1

    .line 1283
    if-eqz v10, :cond_1

    .line 1284
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->access$3500(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/miui/player/downloader/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1262
    :cond_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1263
    const-string v1, "current_bytes"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1264
    .local v7, currentBytes:J
    const-string v1, "status"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1265
    .local v9, status:I
    invoke-static {v9}, Landroid/provider/Downloads;->isStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1266
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->access$3500(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/miui/player/downloader/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 1267
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mRunnableList:Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;
    invoke-static {v1}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->access$3100(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;

    move-result-object v1

    const-string v2, "com.miui.player.helper.BufferedMediaPlayer"

    new-instance v3, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;

    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;-><init>(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;Lcom/miui/player/helper/BufferedMediaPlayer$1;)V

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;->add(Ljava/lang/String;Lcom/miui/player/helper/BufferedMediaPlayer$RemovableRunnable;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1280
    .end local v7           #currentBytes:J
    .end local v9           #status:I
    :cond_4
    :goto_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1283
    if-eqz v10, :cond_5

    .line 1284
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->access$3500(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/miui/player/downloader/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 1287
    :cond_5
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_0

    .line 1268
    .restart local v7       #currentBytes:J
    .restart local v9       #status:I
    :cond_6
    :try_start_4
    invoke-static {v9}, Landroid/provider/Downloads;->isStatusSuccess(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    if-nez v1, :cond_7

    const-wide/32 v1, 0x80000

    cmp-long v1, v7, v1

    if-lez v1, :cond_4

    .line 1271
    :cond_7
    const/4 v10, 0x1

    goto :goto_1

    .line 1277
    .end local v7           #currentBytes:J
    .end local v9           #status:I
    :cond_8
    const/4 v10, 0x1

    goto :goto_1

    .line 1280
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1283
    .end local v0           #res:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_9

    .line 1284
    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->access$3500(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/miui/player/downloader/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    :cond_9
    throw v1
.end method
